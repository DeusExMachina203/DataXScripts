--Problem�tica: 
--Productos m�s vendidos: Las empresas quieren saber qu� producto fue mas vendido en los �ltimos 3 meses para realizar un estudio de mercado sobre toda su mercaderia
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

--Problem�tica: 
--Membresia vencida: Identificar a los clientes con membres�a vencida para mandar un recordatorio en caso no tengan puesto el pago autom�tico y as� no perder clientes
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

--Problem�tica: 
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

--Problem�tica: 
--Listar productos que no se han vendido: Es importante conocer los productos que no han sido vendidos para analizar su rendimiento en el mercado y tomar decisiones sobre su continuidad o promoci�n.
--Query: 
SELECT p.NombreProducto, p.CodigoProducto
 FROM Producto p
 EXCEPT
SELECT p.NombreProducto, rp.CodigoProducto
FROM Producto p
JOIN ResumenPedido rp ON p.CodigoProducto = rp.CodigoProducto

--Problem�tica: 
--Listar clientes sin membres�as activas: Es necesario identificar los clientes que no tienen ninguna membres�a activa para promover ofertas o invitarlos a inscribirse en un programa de membres�as.
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

--Problem�tica: 
--Obtener los clientes sin tarjetas de cr�dito registradas: La consulta identifica los clientes que no tienen ning�n registro en la tabla TarjetaCredito mediante una combinaci�n externa izquierda LEFT JOIN y filtrando aquellos clientes cuya clave en TarjetaCredito sea nula.
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

--Problem�tica: 
--Es necesario identificar cu�l es la empresa que tiene el mayor n�mero de clientes asociados. Esto puede ayudar a reconocer las empresas m�s influyentes y exitosas en t�rminos de atracci�n de clientes, lo cual es valioso para an�lisis de mercado y decisiones estrat�gicas
--Query: 
SELECT TOP 1 e.NombreEmpresa, COUNT(p.IdEmpresa) AS num_clientes
FROM Empresa e
JOIN Pedido p ON e.IdEmpresa = p.IdEmpresa
GROUP BY e.NombreEmpresa
ORDER BY COUNT(p.IdEmpresa) DESC



--Problem�tica: 
--Para una gesti�n eficiente del inventario, es crucial conocer el total de productos almacenados en un almac�n espec�fico. Esto permite controlar el stock, planificar reabastecimientos y evitar rupturas de inventario.
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

--Problem�tica: 
--Clientes sin pedidos recientes: Identificar clientes que no han realizado pedidos en los �ltimos seis meses para potencialmente enviarles promociones o incentivos
--Query: 
SELECT c.NombreCliente, MAX(p.FechaPedido) AS UltimaFechaPedido
FROM Cliente c
LEFT JOIN Pedido p ON c.IdCliente = p.IdCliente
GROUP BY c.NombreCliente
HAVING MAX(p.FechaPedido) < DATEADD(MONTH, -6, GETDATE()) OR MAX(p.FechaPedido) IS NULL;

--Problem�tica: 
--Almacenes con poco inventario: Identificar almacenes que tienen menos cantidad de un producto espec�fico
--Query: 
SELECT a.IdAlmacen, p.NombreProducto, i.Cantidad
FROM Almacen a
INNER JOIN Inventario i ON a.IdAlmacen = i.IdAlmacen
INNER JOIN Producto p ON i.CodigoProducto = p.CodigoProducto
order by i.Cantidad asc

--Problem�tica: 
--Empresas con facturas pendientes de pago: Identificar las empresas que tienen facturas pendientes de pago
--Query:
SELECT e.NombreEmpresa, f.NumeroFactura, f.Vencimiento
FROM Empresa e
INNER JOIN Pedido p ON e.IdEmpresa = p.IdEmpresa
INNER JOIN Factura f ON p.NumeroPedido = f.NumeroPedido
WHERE f.Pagado = 0 AND f.Vencimiento < GETDATE();

--Problem�tica: 
--Clientes con multiples tarjetas de cr�dito: Identificar clientes que tienen registradas m�ltiples tarjetas de cr�dito en el sistema 
--Query:
SELECT c.NombreCliente, COUNT(tc.IdTarjetaCredito) AS TotalTarjetas
FROM Cliente c
INNER JOIN TarjetaCredito tc ON c.IdCliente = tc.IdCliente
GROUP BY c.NombreCliente
HAVING COUNT(tc.IdTarjetaCredito) > 1;
 
--Problem�tica: 
--Negociadores sin contacto: Identificar negociadores que no tienen un tel�fono registrado
--Query:
SELECT n.Nombre, n.ApellidoPaterno, n.ApellidoMaterno
FROM Negociador n
LEFT JOIN TelefonoCliente t ON n.IdNegociador = t.IdNegociador
WHERE t.IdTelefono IS NULL;
 
--Problem�tica:  
--Empresas con m�s de un almac�n: Identificar las empresas que tienen m�s de un almac�n asociado
--Query:
SELECT e.NombreEmpresa, COUNT(a.IdAlmacen) AS TotalAlmacenes
FROM Empresa e
INNER JOIN Almacen a ON e.IdEmpresa = a.IdEmpresa
GROUP BY e.NombreEmpresa
HAVING COUNT(a.IdAlmacen) > 1;

 
---------------------------Ernesto----------------

--Problem�tica:
--Hacer un ranking de los clientes que han hecho la mayor cantidad de pedidos con la tarjeta de cr�dito segun la empresa
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
		where fp.Nombre = 'Tarjeta de Cr�dito' 
		and e.NombreEmpresa = @Empresa
		group by e.IdEmpresa, p.IdCliente
	) t
	join Empresa e on e.IdEmpresa = t.IdEmpresa
	join Cliente c on c.IdCliente = t.IdCliente
	order by t.VecesTarjetaCredito desc
end;

exec VentasTarjetaCredito @Empresa = 'Freaky Frog'


--Hacer un ranking de las 10 empresas que facturaron m�s dinero en un a�o
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
