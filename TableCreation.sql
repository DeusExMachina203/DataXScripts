create table TipoVia(
	Tipo varchar(15) not null,

	IdTipoVia int primary key,
);

create table Region(
	NombreRegion varchar(20) not null,

	IdRegion int primary key,
);

create table Provincia(
	NombreProvincia varchar(30) not null, 
	
	IdProvincia int primary key,
	IdRegion int not null foreign key(idProvincia) references Region(IdRegion),
);

create table Distrito(
	NombreDistrito varchar(30) not null, 
	
	IdDistrito int primary key,
	IdProvincia int not null foreign key(IdProvincia) references Provincia(IdProvincia),
);

create table Direccion(
	NombreVia varchar(50) not null,
	Numero varchar(10) not null,
	Manzana char null,
	Unidad varchar(10) null,
	Lote varchar(10) null,

	IdDireccion int primary key, 
	IdTipoVia int not null foreign key(IdTipoVia) references TipoVia(IdTipoVia),
	idDistrito int not null foreign key(IdDistrito) references Distrito(IdDistrito),
);

create table Empresa(
	NombreEmpresa Varchar(30)not null,

	IdEmpresa int identity primary key,
	IdDireccionPrincipal int not null foreign key(IdDireccionPrincipal) references Direccion(IdDireccion)
);

create table CorreoEmpresa(
	Correo varchar(50) not null, 
	Descripcion text not null,

	IdCorreo int identity primary key,
	IdEmpresa int not null foreign key(IdEmpresa) references Empresa(IdEmpresa),
);

create table CodigoTelefonoPais(
	Codigo varchar(4) not null,
	NombrePais varchar(30) not null,

	idCodigoPais int primary key,
);

create table TelefonoEmpresa(
	Telefono varchar(50) not null, 
	Descripcion text not null,

	IdTelefono int identity primary key,
	IdEmpresa int not null foreign key(IdEmpresa) references Empresa(IdEmpresa),
	IdCodigoPais int not null foreign key(IdCodigoPais) references CodigoTelefonoPais(IdCodigoPais),
);

create table Almacen(
	IdAlmacen int primary key,
	IdDireccion int not null foreign key(IdAlmacen) references Almacen(IdAlmacen),
	IdEmpresa int not null foreign key(IdEmpresa) references Empresa(IdEmpresa),
);

create table Producto(
	NombreProducto varchar(20)not null,
	Descripcion text null,

	CodigoProducto varchar(16) primary key,
);

create table Inventario(
	Cantidad int null,

	IdAlmacen int not null foreign key(IdAlmacen) references Almacen(IdAlmacen),
	CodigoProducto varchar(16) not null foreign key(CodigoProducto) references ProductO(CodigoProducto)
);

create table Cliente(
	NombreCliente varchar(50) not null,
	RUC varchar(10) not null,

	IdCliente int primary key,
	IdDireccionOficial int not null foreign key(IdDireccionOficial) references Direccion(IdDireccion),
);

create table Negociador(
	Nombre varchar(40) not null,
	Cargo varchar(40) not null,
	Descripcion text null,
	ApellidoPaterno varchar(20) not null,
	ApellidoMaterno varchar(20) not null,

	IdNegociador int primary key,
	IdCliente int not null foreign key(IdCliente) references Cliente(IdCliente),
);

create table TelefonoCliente(
	Telefono Varchar(12) not null,
	Descripcion text null,

	IdTelefono int primary key,
	IdNegociador int not null foreign key(IdNegociador) references Negociador(IdNegociador),
	IdCodigoPais int not null foreign key(IdCodigoPais) references CodigoTelefonoPais(IdCodigoPais),
);

create table CorreoCliente(
	Correo varchar(50)not null,
	Descripcion text null,

	IdCorreo int primary key,
	IdNegociador int not null foreign key(IdNegociador) references Negociador(IdNegociador),
);

create table SedeCliente(
	IdSedeCliente int primary key,
	IdDireccion int not null foreign key(IdDireccion) references Direccion(IdDireccion),
	IdCliente int not null foreign key(IdCliente) references Cliente(IdCliente),
);

create table TarjetaCredito(
	Numero varchar(16) not null,
	FechaVencimiento date not null,
	CodigoSeguridad varchar(4) not null,

	IdTarjetaCredito int primary key,
	IdCliente int not null foreign key(IdCliente) references Cliente(IdCliente),
);

create table TipoMembresia(
	NombreTipoMembresia varchar(20) not null,
	Descuento float not null,

	IdTipoMembresia int primary key,
);

create table Membresia(
	FechaInicio date not null,
	FechaFinal date not null,

	IdMembresia int primary key,
	IdCliente int not null foreign key(IdCliente) references Cliente(IdCliente),
	IdTipoMembresia int not null foreign key(IdTIpoMembresia) references TipoMembresia(IdTipoMembresia),
);

create table Pedido(
	CostoTotal float not null,

	NumeroPedido bigint primary key,
	IdCliente int not null foreign key(IdCliente) references Cliente(IdCliente),
	IdEmpresa int not null foreign key(IdEmpresa) references Empresa(IdEmpresa),
);

create table ResumenPedido(
	Cantidad int not null, 
	CostoUnitario float not null,

	NumeroPedido bigint not null foreign key(NumeroPedido) references Pedido(NumeroPedido),
	CodigoProducto varchar(16) not null foreign key(CodigoProducto) references Producto(CodigoProducto),
	primary key(NumeroPedido, CodigoProducto),
);

create table FormaPago(
	Nombre varchar(10) not null,
	IdFormaPago int primary key,
);

create table Factura(
	Vencimiento date not null,
	Pagado bit not null,

	NumeroFactura bigint primary key,
	IdFormaPago int not null foreign key(IdFormaPago) references FormaPago(IdFormaPago),
	NumeroPedido bigint not null foreign key(NumeroPedido) references Pedido(NumeroPedido),
	IdAlmacen int not null foreign key(IdAlmacen) references Almacen(IdAlmacen),
);


