---------------------------Roy----------------
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


---------------------------Mayra----------------

--Problemática: 
--Listar productos que no se han vendido: Es importante conocer los productos que no han sido vendidos para analizar su rendimiento en el mercado y tomar decisiones sobre su continuidad o promoción.
--Query: 
-- Ejecutar la consulta para listar productos que no se han vendido con detalles adicionales
SELECT 
    P.CodigoProducto,
    P.NombreProducto,
    P.Descripcion,
    I.Cantidad AS CantidadEnInventario,
    A.IdAlmacen,
    E.NombreEmpresa,
    D.NombreVia AS DireccionAlmacen,
    DI.NombreDistrito,
    PR.NombreProvincia,
    R.NombreRegion
FROM 
    Producto P
LEFT JOIN 
    Inventario I ON P.CodigoProducto = I.CodigoProducto
LEFT JOIN 
    Almacen A ON I.IdAlmacen = A.IdAlmacen
LEFT JOIN 
    Empresa E ON A.IdEmpresa = E.IdEmpresa
LEFT JOIN 
    Direccion D ON A.IdDireccion = D.IdDireccion
LEFT JOIN 
    TipoVia DV ON D.IdTipoVia = DV.IdTipoVia
LEFT JOIN 
    Distrito DI ON D.IdDistrito = DI.IdDistrito
LEFT JOIN 
    Provincia PR ON DI.IdProvincia = PR.IdProvincia
LEFT JOIN 
    Region R ON PR.IdRegion = R.IdRegion
WHERE 
    P.CodigoProducto NOT IN (SELECT DISTINCT RP.CodigoProducto FROM ResumenPedido RP)
ORDER BY 
    P.NombreProducto;



--Problemática: 
--Listar clientes sin membresías activas: Es necesario identificar los clientes que no tienen ninguna membresía activa para promover ofertas o invitarlos a inscribirse en un programa de membresías.
--Query: 
-- Ejecutar la consulta para listar clientes sin membresías activas con detalles adicionales
SELECT 
    C.IdCliente,
    C.NombreCliente,
    C.RUC,
    D.NombreVia AS Direccion,
    DV.Tipo AS TipoVia,
    DI.NombreDistrito,
    PR.NombreProvincia,
    R.NombreRegion,
    TC.Telefono AS TelefonoCliente,
    CC.Correo AS CorreoCliente,
    N.Nombre AS NombreNegociador,
    N.ApellidoPaterno,
    N.ApellidoMaterno,
    N.Cargo AS CargoNegociador
FROM 
    Cliente C
JOIN 
    Direccion D ON C.IdDireccionOficial = D.IdDireccion
JOIN 
    TipoVia DV ON D.IdTipoVia = DV.IdTipoVia
JOIN 
    Distrito DI ON D.IdDistrito = DI.IdDistrito
JOIN 
    Provincia PR ON DI.IdProvincia = PR.IdProvincia
JOIN 
    Region R ON PR.IdRegion = R.IdRegion
LEFT JOIN 
    Membresia M ON C.IdCliente = M.IdCliente 
                AND M.FechaFinal >= GETDATE()
LEFT JOIN 
    Negociador N ON C.IdCliente = N.IdCliente
LEFT JOIN 
    TelefonoCliente TC ON N.IdNegociador = TC.IdNegociador
LEFT JOIN 
    CorreoCliente CC ON N.IdNegociador = CC.IdNegociador
WHERE 
    M.IdMembresia IS NULL
GROUP BY 
    C.IdCliente, 
    C.NombreCliente, 
    C.RUC, 
    D.NombreVia, 
    DV.Tipo, 
    DI.NombreDistrito, 
    PR.NombreProvincia, 
    R.NombreRegion, 
    TC.Telefono, 
    CC.Correo, 
    N.Nombre, 
    N.ApellidoPaterno, 
    N.ApellidoMaterno, 
    N.Cargo
ORDER BY 
    C.NombreCliente;


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


---------------------------Nayeli----------------





---------------------------Ysela----------------

--1. Gestión de futuras entregas: Se requiere saber las siguientes en entregas en los próximos 3 meses, en consecuente poder gestionar eficientemente las entregas de pedidos futuros.
--Para implementar esta solución, podemos crear una consulta SQL que identifique todos los pedidos con fechas de entrega dentro de los próximos tres meses.
--Implementar la función ClientesConPedidosEn3Meses nos permitirá prever las entregas, asignar recursos de manera eficiente y asegurar la satisfacción del cliente, manteniendo la competitividad de nuestra empresa.
CREATE FUNCTION ClientesConPedidosEn3Meses()
RETURNS TABLE
AS
RETURN
(
    SELECT c.NombreCliente, 
           MAX(f.Vencimiento) AS ProximaFechaPedido
    FROM Cliente c
    LEFT JOIN Pedido p ON c.IdCliente = p.IdCliente
    LEFT JOIN Factura f ON p.NumeroPedido = f.NumeroPedido
    GROUP BY c.NombreCliente
    HAVING MAX(f.Vencimiento) < DATEADD(MONTH, 3, GETDATE()) );
SELECT * FROM ClientesConPedidosEn3Meses()
ORDER BY ProximaFechaPedido ASC;

--2.  Almacenes con poco inventario de un producto: Desarrollar una función en la base de datos que permita identificar almacenes con cantidades insuficientes de productos específicos. Implementar esta solución ayudará a tomar decisiones informadas sobre la redistribución de inventarios y la necesidad de reabastecimiento.
--La función ObtenerAlmacenesConPocoInventario sirve para identificar almacenes con menos cantidad de un producto específico. Se utiliza un parámetro que determina el nivel mínimo de inventario.
CREATE FUNCTION ObtenerAlmacenesConPocoInventario(@parametro INT, @codigoProducto VARCHAR(10))
RETURNS TABLE
AS
RETURN
(
    SELECT a.IdAlmacen, 
           a.IdDireccion, 
           i.CodigoProducto, 
           i.Cantidad
    FROM Inventario i
    JOIN Almacen a ON i.IdAlmacen = a.IdAlmacen
    WHERE i.Cantidad < @parametro AND i.CodigoProducto = @codigoProducto
);
SELECT * FROM ObtenerAlmacenesConPocoInventario(81, 'HHG-003');

--3. Facturas por almacén: Se requiere desarrollar una función que permita obtener un reporte detallado de las facturas por almacén. Esta función facilitará el seguimiento y la gestión eficiente de las facturas, permitiendo una mejor planificación financiera y medidas correctivas oportunas por empresa.
-- Implementar la función ObtenerFacturasPorAlmacen nos permitirá obtener un reporte detallado de las facturas emitidas por cada almacén, incluyendo la fecha de vencimiento y el estado de pago.
CREATE FUNCTION FacturasPorAlmacen()
RETURNS TABLE
AS
RETURN
(
    SELECT a.IdAlmacen, 
           f.NumeroFactura, 
           f.Vencimiento, 
           f.Pagado
    FROM Almacen a
    JOIN Factura f ON a.IdAlmacen = f.IdAlmacen
);
SELECT * FROM FacturasPorAlmacen();


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
