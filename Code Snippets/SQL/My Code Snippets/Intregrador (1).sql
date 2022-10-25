Create Database Imprenta_Laser
Use Imprenta_Laser

Create table Provincias
(codProvincia int identity (1,3),
nomProvincia varchar (40) not null,
constraint Pk_provincias primary key (codProvincia)
)

Create table Localidades
(codLocalidad int identity (1,3),
nomLocalidad varchar (70) not null,
codProvincia int not null,
constraint Pk_localidades primary key (codLocalidad),
constraint Fk_Provincias foreign key (codProvincia) references Provincias (codProvincia)
)

Create table Barrios
(codBarrio int identity (1,3),
nomBarrio varchar (70) not null,
codLocalidad int not null,
constraint Pk_Barrios primary key (codBarrio),
constraint Fk_Localidades foreign key (codLocalidad) references Localidades (codLocalidad)
)

Create table TiposDomicilios
(codTipoDom int identity (1,3),
nomTipoDom varchar (30) not null,
constraint Pk_Tipos_Dom primary key (codTipoDom)
)

Create table Domicilios
(codDom int identity (1,3),
calle varchar (40) not null,
altura int not null,
piso int,
dpto varchar (10),
codPostal int not null,
codTipoDom int,
codBarrio int,
constraint Pk_Domicilios primary key (codDom),
constraint Fk_Tipo_Dom foreign key (codTipoDom) references TiposDomicilios (codTipoDom),
constraint Fk_Barrios foreign key (codBarrio) references Barrios (codBarrio)
)

Create table TiposDocumentos 
(codTipoDoc int identity (1,3),
nombreTipoDoc varchar (20) not null,
constraint Pk_Tipo_Doc primary key (codTipoDoc)
)

Create table Puestos
(codPuesto int identity (1,5),
nomPuesto varchar (30) not null,
constraint Pk_Puesto primary key (codPuesto)
)

Create table Empleados
(legajo int,
nombre varchar (30) not null,
apellido varchar (40) not null,
documento int not null,
fechaIngreso datetime not null,
codPuesto int,
codDom int,
codTipoDoc int,
constraint Pk_Empleado primary key (legajo),
constraint Fk_Puesto foreign key (codPuesto) references Puestos (codPuesto),
constraint Fk_Domicilio foreign key (codDom) references Domicilios (codDom),
constraint Fk_Tipo_Doc foreign key (codTipoDoc) references TiposDocumentos (codTipoDoc)
)

Create table Generos
(codGenero int identity (1,3),
nomGenero varchar (20) not null,
constraint Pk_Generos primary key (codGenero),
)
 
 /*create table Razones_Sociales
(codRazonSoc int identity (1,3),
nombreRazonSoc varchar (30) not null,
constraint Pk_Razon_Social primary key (codRazonSoc)
)*/

Create table Clientes
(codCliente int identity (1,5),
nombre varchar (30) not null,
apellido varchar (40) not null,
documento int not null,
telefono varchar,
fechaNacimiento datetime,
codRazonSoc int,
email varchar (40),
codDom int,
codSexo int, 
codTipoDoc int,
constraint Pk_Cliente primary key (codCliente),
constraint Fk_Domicilio_Cliente foreign key (codDom) references Domicilios (codDom),
constraint Fk_Sexo foreign key (codSexo) references Sexos (codSexo),
constraint Fk_Tipos_Doc foreign key (codTipoDoc) references TiposDocumentos (codTipoDoc),
constraint Fk_Razon_Social_Cliente foreign key (codRazonSoc) references Razones_Sociales (codRazonSoc)
)

Create table Formatos
(codFormato int identity (1,3),
pesoPorUnidad float not null,
formato varchar (30),
constraint Pk_Formato primary key (codFormato)
)


Create table Proveedores
(codProv int identity (1,3),
nombre varchar (60) not null,
codDom int,
documento int not null,
codTipoDoc int not null,
codRazonSoc int not null,
telefono varchar (20),
email varchar (30),
constraint Pk_Proveedores primary key (codProv),
constraint Fk_Cod_Domicilio_Prov foreign key (codDom) references Domicilios (codDom),
constraint Fk_Tipo_Documento_PRov foreign key (codTipoDoc) references TiposDocumentos (codTipoDoc),
constraint Fk_Razon_Social_Prov foreign key (codRazonSoc) references Razones_Sociales (codRazonSoc)
)

Create table Materiales
(codMaterial int identity (1,3),
nomMaterial varchar (30) not null,
constraint Pk_Materiales primary key (codMaterial)
)

create table Proveedores_Materiales
(codProv int,
codMaterial int,
Constraint Pk_Proveedor_Material primary key (codProv,codMaterial),
constraint Fk_Provedores_Materiales foreign key (codProv) references Proveedores (codProv),
constraint Fk_Materiales_Proveedores foreign key (codMaterial) references Materiales (codMaterial)
)

create table Productos
(codProd int identity (1,3),
nombreProd varchar (40) not null,
peso float,
precio float not null,
codMaterial int,
codFormato int,
constraint Pk_Producto primary key (codProd),
constraint Fk_Materiales foreign key (codMaterial) references Materiales (codMaterial),
constraint Fk_Formato foreign key (codFormato) references Formatos (codFormato)
)

Create table FormasPagos
(codFormaPago int identity (1,3),
nomFormaPago varchar (20) not null,
recargo int,
constraint Pk_Forma_Pago primary key (codFormaPago)
)

Create table TiposEnvios
(codTipoEnvio int identity (1,3),
nombre varchar (20) not null,
costo float,
constraint Pk_Tipo_Envio primary key (codTipoEnvio)
)

create table CanalesAtencion
(codCanalAtencion int identity (1,3),
nomCanalAtencion varchar (30) not null,
constraint Pk_Canal_Atencion primary key (codCanalAtencion)
)

Create table Facturas
(codFactura int identity (1,6),
fechaPedido datetime not null,
codCliente int not null,
codTipoEnvio int,
legajoArmadorPedido int not null,
legajoFacturador int not null,
codCanalAtencion int not null, 
constraint Pk_Factura primary key (codFactura),
constraint Fk_Cliente foreign key (codCliente) references Clientes (codCliente),
constraint Fk_Tipo_Envio foreign key (codTipoEnvio) references TiposEnvios (codTipoEnvio),
constraint Fk_Empleado_Armador_Pedido foreign key (legajoFacturador) references Empleados (legajo),
constraint Fk_Canal_Atencion foreign key (codCanalAtencion) references CanalesAtencion (codCanalAtencion),
constraint Fk_Empleado_Factura_Pedido foreign key (legajoFacturador) references Empleados (legajo)
)

Create table FacturasFormasPagos
(codPedidoFormaPago int identity (1,3),
montoPago float not null,
codFactura int,
codFormaPago int,
constraint Pk_Pedido_Forma_Pago primary key (codPedidoFormaPago),
constraint Fk_Forma_Pago foreign key (codFormaPago) references FormasPagos (codFormaPago),
constraint Fk_Factura_Fomra_Pago foreign key (codFactura) references Facturas (codFactura)
)

create table Detalle_Facturas
(codDetPedido int identity (1,6),
codFactura int not null,
codProd int not null,
cantidad int not null,
fechaEntrega datetime,
precioUnitario float not null,
constraint Pk_Det_Pedido primary key (codDetPedido),
constraint Fk_Factura foreign key (codFactura) references Facturas (codFactura),
constraint Fk_Producto foreign key (codProd) references Productos (codProd),
)



create table Colores
(codColor int identity (1,3),
nomColor varchar(30),
constraint Pk_Colores primary key (codColor))

create table Resoluciones
(codResolucion int identity (1,3),
resolucion varchar(30),
constraint Pk_Resolucion primary key(codResolucion))

create table TiposDeProductos
(codTipoProd int identity(1,3),
nomTipoProducto varchar(40),
constraint Pk_TipoProducto primary key(codTipoProd))

Alter table Productos
Add codTipoProd int

alter table Productos
Add constraint Fk_Productos_Tipo_Producto foreign key(codTipoProd) References TiposDeProductos(codTipoProd)

Select *
From Productos




/*Alter table Clientes
drop constraint Fk_Razon_Social_Cliente*/

--Alter table Clientes
--drop column codRazonSoc

--Alter table Proveedores
--drop constraint Fk_Razon_Social_Prov

--Alter table Proveedores
--drop column codRazonSoc

--drop table Razones_Sociales

--Alter table Clientes
--Drop constraint Fk_Sexo

--Alter table Clientes 
--Drop column codSexo

--Drop table Sexos

--Alter table Clientes
--Add constraint PK_Generos_Clientes foreign key (codGenero) References Generos(codGenero)

--Alter table Empleados
--Add codGenero int

--Alter table Empleados
--Add constraint Fk_Generos_Empleados foreign key (codGenero) References Generos(codGenero)

Alter table Formatos
add Formato varchar(40)

Alter table Productos
drop constraint Fk_Productos_Resoluciones

Alter table Productos
add constraint Fk_Formato foreign key (codFormato) References Formatos(codFormato)
 
