--Problemática: 
--Productos más vendidos: Las empresas quieren saber qué producto fue mas vendido en los últimos 3 meses para realizar un estudio de mercado sobre toda su mercaderia
--Query:
CREATE FUNCTION dbo.ProductosMasVendidos()
RETURNS TABLE
AS
RETURN
(
    SELECT TOP 5 p.NombreProducto, COUNT(rp.CodigoProducto) AS TotalVentas
    FROM Producto p
    INNER JOIN ResumenPedido rp ON p.CodigoProducto = rp.CodigoProducto
    INNER JOIN Pedido pd ON rp.NumeroPedido = pd.NumeroPedido
    INNER JOIN Factura f ON pd.NumeroPedido = f.NumeroPedido
    WHERE f.Vencimiento BETWEEN DATEADD(MONTH, -3, GETDATE()) AND GETDATE()
    GROUP BY p.NombreProducto
    ORDER BY TotalVentas DESC
);

SELECT * FROM dbo.ProductosMasVendidos();

--Problemática: 
--Membresia vencida: Identificar a los clientes con membresía vencida para mandar un recordatorio en caso no tengan puesto el pago automático y así no perder clientes
--Query:
CREATE FUNCTION dbo.ClientesConMembresiaVencida()
RETURNS TABLE
AS
RETURN
(
    SELECT c.NombreCliente, m.FechaFinal, tm.NombreTipoMembresia
    FROM Cliente c
    INNER JOIN Membresia m ON c.IdCliente = m.IdCliente
    INNER JOIN TipoMembresia tm ON m.IdTipoMembresia = tm.IdTipoMembresia
    WHERE m.FechaFinal < GETDATE()
);
SELECT * FROM dbo.ClientesConMembresiaVencida();

--Problemática: 
--Dificultad para identificar falturas vencidas: Identificar pedidos pendientes que tenga la empresa es importante para garantizar una entrega oportuna y satisfactoria de los productos, manteniendo una buena reputacion de la empresa
--Query: 
CREATE FUNCTION dbo.PedidosPendientes()
RETURNS TABLE
AS
RETURN
(
    SELECT E.NombreEmpresa,
    COUNT(P.NumeroPedido) AS TotalPedidos,
    SUM(RP.Cantidad) AS TotalProductos,
    SUM(RP.Cantidad * RP.CostoUnitario) AS TotalCosto, 
    F.Pagado
    FROM Empresa E
    JOIN Pedido P ON E.IdEmpresa = P.IdEmpresa  
    JOIN ResumenPedido RP ON P.NumeroPedido = RP.NumeroPedido  
    JOIN Factura F ON P.NumeroPedido = F.NumeroPedido 
    WHERE F.Vencimiento <= GETDATE()
    GROUP BY E.NombreEmpresa, F.Pagado
);

SELECT * FROM dbo.PedidosPendientes();

--Problemática: 
--Listar productos que no se han vendido: Es importante conocer los productos que no han sido vendidos para analizar su rendimiento en el mercado y tomar decisiones sobre su continuidad o promoción.
--Query: 
SELECT p.NombreProducto, p.CodigoProducto
 FROM Producto p
 EXCEPT
SELECT p.NombreProducto, rp.CodigoProducto
FROM Producto p
JOIN ResumenPedido rp ON p.CodigoProducto = rp.CodigoProducto

--Problemática: 
--Listar clientes sin membresías activas: Es necesario identificar los clientes que no tienen ninguna membresía activa para promover ofertas o invitarlos a inscribirse en un programa de membresías.
--Query: 
CREATE FUNCTION dbo.ObtenerClientesSinMembresias()
RETURNS TABLE
AS
RETURN (
SELECT c.NombreCliente, c.IdCliente
FROM Cliente c
EXCEPT
SELECT c.NombreCliente, m.IdCliente
FROM Cliente c
JOIN Membresia m ON c.IdCliente = m.IdCliente
);
SELECT * FROM dbo.ObtenerClientesSinMembresias();

--Problemática: 
--Obtener los clientes sin tarjetas de crédito registradas: La consulta identifica los clientes que no tienen ningún registro en la tabla TarjetaCredito mediante una combinación externa izquierda LEFT JOIN y filtrando aquellos clientes cuya clave en TarjetaCredito sea nula.
--Query:
CREATE FUNCTION dbo.ObtenerClientesSinTarjetas()
RETURNS TABLE
AS
RETURN (
SELECT c.NombreCliente, c.IdCliente
 FROM Cliente c
 EXCEPT
 SELECT c.NombreCliente, t.IdCliente
 FROM Cliente c
 JOIN TarjetaCredito t ON c.IdCliente = t.IdCliente
);
SELECT * FROM dbo.ObtenerClientesSinTarjetas();

--Problemática: 
--Es necesario identificar cuál es la empresa que tiene el mayor número de clientes asociados. Esto puede ayudar a reconocer las empresas más influyentes y exitosas en términos de atracción de clientes, lo cual es valioso para análisis de mercado y decisiones estratégicas
--Query: 
SELECT TOP 1 e.NombreEmpresa, COUNT(p.IdEmpresa) AS num_clientes
FROM Empresa e
JOIN Pedido p ON e.IdEmpresa = p.IdEmpresa
GROUP BY e.NombreEmpresa
ORDER BY COUNT(p.IdEmpresa) DESC



--Problemática: 
--Para una gestión eficiente del inventario, es crucial conocer el total de productos almacenados en un almacén específico. Esto permite controlar el stock, planificar reabastecimientos y evitar rupturas de inventario.
--Query: 
CREATE PROCEDURE CalcularTotalProductosInventario @idal INT, @codigoprod VARCHAR(100)
AS
BEGIN
    DECLARE @total_productos INT;

    SELECT @total_productos = SUM(i.Cantidad)
    FROM Inventario i
    WHERE i.IdAlmacen = @idal
    AND i.CodigoProducto = @codigoprod;

    SELECT @total_productos AS TotalProductosInventario;
END;
EXEC CalcularTotalProductosInventario @idal = 1, @codigoprod = 'FF-001';

--Problemática: 
--Clientes sin pedidos recientes: Identificar clientes que no han realizado pedidos en los últimos seis meses para potencialmente enviarles promociones o incentivos
--Query: 
SELECT c.NombreCliente, MAX(p.FechaPedido) AS UltimaFechaPedido
FROM Cliente c
LEFT JOIN Pedido p ON c.IdCliente = p.IdCliente
GROUP BY c.NombreCliente
HAVING MAX(p.FechaPedido) < DATEADD(MONTH, -6, GETDATE()) OR MAX(p.FechaPedido) IS NULL;

--Problemática: 
--Almacenes con poco inventario: Identificar almacenes que tienen menos cantidad de un producto específico
--Query: 
SELECT a.IdAlmacen, p.NombreProducto, i.Cantidad
FROM Almacen a
INNER JOIN Inventario i ON a.IdAlmacen = i.IdAlmacen
INNER JOIN Producto p ON i.CodigoProducto = p.CodigoProducto
order by i.Cantidad asc

--Problemática: 
--Empresas con facturas pendientes de pago: Identificar las empresas que tienen facturas pendientes de pago
--Query:
SELECT e.NombreEmpresa, f.NumeroFactura, f.Vencimiento
FROM Empresa e
INNER JOIN Pedido p ON e.IdEmpresa = p.IdEmpresa
INNER JOIN Factura f ON p.NumeroPedido = f.NumeroPedido
WHERE f.Pagado = 0 AND f.Vencimiento < GETDATE();

--Problemática: 
--Clientes con multiples tarjetas de crédito: Identificar clientes que tienen registradas múltiples tarjetas de crédito en el sistema 
--Query:
SELECT c.NombreCliente, COUNT(tc.IdTarjetaCredito) AS TotalTarjetas
FROM Cliente c
INNER JOIN TarjetaCredito tc ON c.IdCliente = tc.IdCliente
GROUP BY c.NombreCliente
HAVING COUNT(tc.IdTarjetaCredito) > 1;
 
--Problemática: 
--Negociadores sin contacto: Identificar negociadores que no tienen un teléfono registrado
--Query:
SELECT n.Nombre, n.ApellidoPaterno, n.ApellidoMaterno
FROM Negociador n
LEFT JOIN TelefonoCliente t ON n.IdNegociador = t.IdNegociador
WHERE t.IdTelefono IS NULL;
 
--Problemática:  
--Empresas con más de un almacén: Identificar las empresas que tienen más de un almacén asociado
--Query:
SELECT e.NombreEmpresa, COUNT(a.IdAlmacen) AS TotalAlmacenes
FROM Empresa e
INNER JOIN Almacen a ON e.IdEmpresa = a.IdEmpresa
GROUP BY e.NombreEmpresa
HAVING COUNT(a.IdAlmacen) > 1;

 
---------------------------Ernesto----------------

--Problemática:
--Hacer un ranking de los clientes que han hecho la mayor cantidad de pedidos con la tarjeta de crédito segun la empresa
--Query:
create procedure VentasTarjetaCredito
@Empresa varchar(100)
as
begin
	select e.NombreEmpresa, c.NombreCliente, t.VecesTarjetaCredito
	from(
		select e.IdEmpresa, p.IdCliente, count(fp.IdFormaPago) as VecesTarjetaCredito
		from Empresa e
		join Pedido p on e.IdEmpresa = p.IdEmpresa
		join Factura f on f.NumeroPedido = p.NumeroPedido
		join FormaPago fp on fp.IdFormaPago = f.IdFormaPago
		where fp.Nombre = 'Tarjeta de Crédito' 
		and e.NombreEmpresa = @Empresa
		group by e.IdEmpresa, p.IdCliente
	) t
	join Empresa e on e.IdEmpresa = t.IdEmpresa
	join Cliente c on c.IdCliente = t.IdCliente
	order by t.VecesTarjetaCredito desc
end;

exec VentasTarjetaCredito @Empresa = 'Freaky Frog'


--Hacer un ranking de las 10 empresas que facturaron más dinero en un año
--Query:
create procedure RankingExitos
@anio varchar(4)
as 
begin
	declare @date date = concat(@anio, '-01-01')

	select top 10 e.NombreEmpresa, sum(p.CostoTotal) as Facturado
	from Empresa e
	join Pedido p on p.IdEmpresa = e.IdEmpresa
	join Factura f on f.NumeroPedido = p.NumeroPedido
	where year(@date) = year(f.Vencimiento) 
	and f.Pagado = 1 
	group by e.NombreEmpresa
	order by sum(p.CostoTotal) desc

end;

exec RankingExitos @anio = '2024'


--
--Query:
