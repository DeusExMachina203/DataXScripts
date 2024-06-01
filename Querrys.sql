--Problem�tica: 
--Productos m�s vendidos: Las empresas quieren saber qu� producto fue mas vendido en los �ltimos 3 meses para realizar un estudio de mercado sobre toda su mercaderia
--Query:
SELECT TOP 5 p.NombreProducto, COUNT(rp.CodigoProducto) AS TotalVentas
FROM Producto p
INNER JOIN ResumenPedido rp ON p.CodigoProducto = rp.CodigoProducto
INNER JOIN Pedido pd ON rp.NumeroPedido = pd.NumeroPedido
WHERE pd.FechaPedido BETWEEN DATEADD(MONTH, -3, GETDATE()) AND GETDATE()
GROUP BY p.NombreProducto
ORDER BY TotalVentas�DESC;


--Problem�tica: 
--Membresia vencida: Identificar a los clientes con membres�a vencida para mandar un recordatorio en caso no tengan puesto el pago autom�tico y as� no perder clientes
--Query:
SELECT c.NombreCliente, m.FechaFinal, tm.NombreTipoMembresia
FROM Cliente c
INNER JOIN Membresia m ON c.IdCliente = m.IdCliente
INNER JOIN TipoMembresia tm ON m.IdTipoMembresia = tm.IdTipoMembresia
WHERE m.FechaFinal < GETDATE();

--Problem�tica: 
--Pedidos pendientes: Identificar los pedidos de los clientes pendientes para saber si todavia se encuentran en el plazo establecido de entrega o hubo alg�n inconveniente
--Query: 
SELECT p.NumeroPedido, p.CostoTotal, c.NombreCliente, p.FechaEntregaEstimada
FROM Pedido p
INNER JOIN Cliente c ON p.IdCliente = c.IdCliente
WHERE p.EstadoPedido�!=�'Entregado';

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
CREATE FUNCTION dbo.ObtenerEmpresaMayorClientes() 
RETURNS VARCHAR(50)
AS 
BEGIN
	DECLARE @nombre_empresa VARCHAR(50);
    SELECT TOP 1  NombreEmpresa = @nombre_empresa
    FROM (
        SELECT e.NombreEmpresa, COUNT(c.IdEmpresa) AS num_clientes
        FROM Empresa e
        JOIN Cliente c ON e.IdEmpresa = c.IdEmpresa
        GROUP BY e.NombreEmpresa
        ORDER BY COUNT(c.IdEmpresa) DESC
    ) AS empresas_clientes
    WHERE num_clientes > 0
    RETURN @nombre_empresa
END;

CREATE FUNCTION dbo.ObtenerEmpresaMayorClientes() 
RETURNS VARCHAR(50)
AS 
BEGIN
	DECLARE @nombre_empresa VARCHAR(50);
    SELECT TOP 1  NombreEmpresa = @nombre_empresa
    FROM (
        SELECT e.NombreEmpresa, COUNT(c.IdEmpresa) AS num_clientes
        FROM Empresa e
        JOIN Pedido p ON e.IdEmpresa = p.IdEmpresa
        GROUP BY e.NombreEmpresa
        ORDER BY COUNT(p.IdEmpresa) DESC
    ) AS empresas_clientes
    WHERE num_clientes > 0
    RETURN @nombre_empresa
END;

--Problem�tica: 
--Para una gesti�n eficiente del inventario, es crucial conocer el total de productos almacenados en un almac�n espec�fico. Esto permite controlar el stock, planificar reabastecimientos y evitar rupturas de inventario.
--Query: 
CREATE FUNCTION calcularTotalProductosInventario(idal int, codigoprod varchar(100)) 
RETURNS INT
AS 
BEGIN
    DECLARE total_productos int;
    SELECT SUM(i.Cantidad) = total_productos
    FROM Inventario i
    WHERE i.IdAlmacen = idal
	AND i.CodigoProducto = codigoprod

    RETURN total_productos;
END;


--Problem�tica: 
--Se necesita una funci�n corregida para calcular el total de productos en el inventario de un almac�n espec�fico. La funci�n debe sumar las cantidades de todos los productos almacenados en un almac�n dado, proporcionando un total preciso para la gesti�n de inventario.
--Query: 
CREATE FUNCTION calcular_total_productos_inventario(IdAlmacen int) 
RETURNS INT
AS 
BEGIN
DECLARE total_productos INT;
SELECT SUM(Cantidad) INTO total_productos
FROM Inventario
WHERE IdAlmacen = IdAlmacen;
    
RETURN total_productos;
END;

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
