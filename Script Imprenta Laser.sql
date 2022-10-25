USE [master]
GO
/****** Object:  Database [Imprenta_Laser]    Script Date: 24/5/2022 19:30:54 ******/
set dateformat DMY
CREATE DATABASE [Imprenta_Laser]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Imprenta_Laser', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Imprenta_Laser.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Imprenta_Laser_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Imprenta_Laser_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Imprenta_Laser] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Imprenta_Laser].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Imprenta_Laser] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET ARITHABORT OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Imprenta_Laser] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Imprenta_Laser] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Imprenta_Laser] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Imprenta_Laser] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Imprenta_Laser] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Imprenta_Laser] SET  MULTI_USER 
GO
ALTER DATABASE [Imprenta_Laser] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Imprenta_Laser] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Imprenta_Laser] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Imprenta_Laser] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Imprenta_Laser] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Imprenta_Laser] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Imprenta_Laser] SET QUERY_STORE = OFF
GO
USE [Imprenta_Laser]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[codBarrio] [int] IDENTITY(1,3) NOT NULL,
	[nomBarrio] [varchar](70) NOT NULL,
	[codLocalidad] [int] NOT NULL,
 CONSTRAINT [Pk_Barrios] PRIMARY KEY CLUSTERED 
(
	[codBarrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanalesAtencion]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanalesAtencion](
	[codCanalAtencion] [int] IDENTITY(1,3) NOT NULL,
	[nomCanalAtencion] [varchar](30) NOT NULL,
 CONSTRAINT [Pk_Canal_Atencion] PRIMARY KEY CLUSTERED 
(
	[codCanalAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[codCliente] [int] IDENTITY(1,5) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](40) NULL,
	[documento] [varchar](80) NULL,
	[fechaNacimiento] [datetime] NULL,
	[email] [varchar](40) NULL,
	[codDom] [int] NULL,
	[codTipoDoc] [int] NULL,
	[codGenero] [int] NULL,
	[telefono] [varchar](30) NULL,
 CONSTRAINT [Pk_Cliente] PRIMARY KEY CLUSTERED 
(
	[codCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colores]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colores](
	[codColor] [int] IDENTITY(1,3) NOT NULL,
	[nomColor] [varchar](30) NULL,
 CONSTRAINT [Pk_Colores] PRIMARY KEY CLUSTERED 
(
	[codColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Facturas]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Facturas](
	[codDetPedido] [int] IDENTITY(1,6) NOT NULL,
	[codFactura] [int] NOT NULL,
	[codProd] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[fechaEntrega] [datetime] NULL,
	[precioUnitario] [float] NOT NULL,
 CONSTRAINT [Pk_Det_Pedido] PRIMARY KEY CLUSTERED 
(
	[codDetPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domicilios]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domicilios](
	[codDom] [int] IDENTITY(1,3) NOT NULL,
	[calle] [varchar](40) NOT NULL,
	[altura] [int] NOT NULL,
	[piso] [int] NULL,
	[dpto] [varchar](10) NULL,
	[codPostal] [int] NOT NULL,
	[codTipoDom] [int] NULL,
	[codBarrio] [int] NULL,
 CONSTRAINT [Pk_Domicilios] PRIMARY KEY CLUSTERED 
(
	[codDom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[legajo] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apellido] [varchar](40) NOT NULL,
	[documento] [int] NOT NULL,
	[fechaIngreso] [datetime] NOT NULL,
	[codPuesto] [int] NULL,
	[codDom] [int] NULL,
	[codTipoDoc] [int] NULL,
	[codGenero] [int] NULL,
 CONSTRAINT [Pk_Empleado] PRIMARY KEY CLUSTERED 
(
	[legajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[codFactura] [int] IDENTITY(1,6) NOT NULL,
	[fechaPedido] [datetime] NOT NULL,
	[codCliente] [int] NOT NULL,
	[codTipoEnvio] [int] NULL,
	[legajoArmadorPedido] [int] NOT NULL,
	[legajoFacturador] [int] NOT NULL,
	[codCanalAtencion] [int] NOT NULL,
 CONSTRAINT [Pk_Factura] PRIMARY KEY CLUSTERED 
(
	[codFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturasFormasPagos]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturasFormasPagos](
	[codPedidoFormaPago] [int] IDENTITY(1,3) NOT NULL,
	[montoPago] [float] NOT NULL,
	[codFactura] [int] NULL,
	[codFormaPago] [int] NULL,
 CONSTRAINT [Pk_Pedido_Forma_Pago] PRIMARY KEY CLUSTERED 
(
	[codPedidoFormaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormasPagos]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormasPagos](
	[codFormaPago] [int] IDENTITY(1,3) NOT NULL,
	[nomFormaPago] [varchar](20) NOT NULL,
	[recargo] [int] NULL,
 CONSTRAINT [Pk_Forma_Pago] PRIMARY KEY CLUSTERED 
(
	[codFormaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formatos]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formatos](
	[codFormato] [int] IDENTITY(1,3) NOT NULL,
	[nomFormato] [varchar](10) NULL,
	[formato] [varchar](30) NULL,
 CONSTRAINT [Pk_Formato] PRIMARY KEY CLUSTERED 
(
	[codFormato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[codGenero] [int] IDENTITY(1,3) NOT NULL,
	[nomGenero] [varchar](20) NULL,
 CONSTRAINT [Pk_Generos] PRIMARY KEY CLUSTERED 
(
	[codGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[codLocalidad] [int] IDENTITY(1,3) NOT NULL,
	[nomLocalidad] [varchar](70) NOT NULL,
	[codProvincia] [int] NOT NULL,
 CONSTRAINT [Pk_localidades] PRIMARY KEY CLUSTERED 
(
	[codLocalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materiales]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiales](
	[codMaterial] [int] IDENTITY(1,3) NOT NULL,
	[nomMaterial] [varchar](30) NOT NULL,
 CONSTRAINT [Pk_Materiales] PRIMARY KEY CLUSTERED 
(
	[codMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[codProd] [int] IDENTITY(1,3) NOT NULL,
	[nombreProd] [varchar](40) NOT NULL,
	[peso] [float] NULL,
	[precio] [float] NOT NULL,
	[codMaterial] [int] NULL,
	[codFormato] [int] NULL,
	[codColor] [int] NULL,
	[codTipoProd] [int] NULL,
 CONSTRAINT [Pk_Producto] PRIMARY KEY CLUSTERED 
(
	[codProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[codProv] [int] IDENTITY(1,3) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[codDom] [int] NULL,
	[documento] [varchar](80) NULL,
	[codTipoDoc] [int] NOT NULL,
	[telefono] [varchar](20) NULL,
	[email] [varchar](80) NULL,
 CONSTRAINT [Pk_Proveedores] PRIMARY KEY CLUSTERED 
(
	[codProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores_Materiales]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores_Materiales](
	[codProv] [int] NOT NULL,
	[codMaterial] [int] NOT NULL,
 CONSTRAINT [Pk_Proveedor_Material] PRIMARY KEY CLUSTERED 
(
	[codProv] ASC,
	[codMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[codProvincia] [int] IDENTITY(1,3) NOT NULL,
	[nomProvincia] [varchar](40) NOT NULL,
 CONSTRAINT [Pk_provincias] PRIMARY KEY CLUSTERED 
(
	[codProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puestos](
	[codPuesto] [int] IDENTITY(1,5) NOT NULL,
	[nomPuesto] [varchar](30) NOT NULL,
 CONSTRAINT [Pk_Puesto] PRIMARY KEY CLUSTERED 
(
	[codPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDeProductos]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDeProductos](
	[codTipoProd] [int] IDENTITY(1,3) NOT NULL,
	[nomTipoProducto] [varchar](40) NULL,
 CONSTRAINT [Pk_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[codTipoProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDocumentos]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocumentos](
	[codTipoDoc] [int] IDENTITY(1,3) NOT NULL,
	[nombreTipoDoc] [varchar](20) NOT NULL,
 CONSTRAINT [Pk_Tipo_Doc] PRIMARY KEY CLUSTERED 
(
	[codTipoDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDomicilios]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDomicilios](
	[codTipoDom] [int] IDENTITY(1,3) NOT NULL,
	[nomTipoDom] [varchar](30) NOT NULL,
 CONSTRAINT [Pk_Tipos_Dom] PRIMARY KEY CLUSTERED 
(
	[codTipoDom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEnvios]    Script Date: 24/5/2022 19:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEnvios](
	[codTipoEnvio] [int] IDENTITY(1,3) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[costo] [float] NULL,
 CONSTRAINT [Pk_Tipo_Envio] PRIMARY KEY CLUSTERED 
(
	[codTipoEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON 
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (1, N'Alto Alberdi', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (4, N'Arguello', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (7, N'Alberdi', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (10, N'Alta Cordoba', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (13, N'Alto Verde', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (16, N'Altamira', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (19, N'Bella Vista', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (22, N'Juniors', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (25, N'Yofre Norte', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (28, N'Yofre Sur', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (31, N'Centro', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (34, N'Chateau Carreras', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (37, N'Cerro de las Rosas', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (40, N'Cofico', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (43, N'General Paz', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (46, N'Guemes', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (49, N'General Arenales', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (52, N'Jardin', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (55, N'Jose Ignacio Diaz', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (58, N'La France', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (61, N'Los Naranjos', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (64, N'Nueva Cordoba', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (67, N'Observatorio', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (70, N'Parque Capital', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (73, N'Rosedal', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (76, N'San Francisco', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (79, N'San Vicente', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (82, N'Santa Isabel', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (85, N'Urca', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (88, N'Villa Belgrano', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (91, N'Villa el Libertador', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (94, N'Villa Gran Parque', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (97, N'Horizonte', 4)
GO
INSERT [dbo].[Barrios] ([codBarrio], [nomBarrio], [codLocalidad]) VALUES (100, N'Liceo', 4)
GO
SET IDENTITY_INSERT [dbo].[Barrios] OFF
GO
SET IDENTITY_INSERT [dbo].[CanalesAtencion] ON 
GO
INSERT [dbo].[CanalesAtencion] ([codCanalAtencion], [nomCanalAtencion]) VALUES (1, N'Telefono')
GO
INSERT [dbo].[CanalesAtencion] ([codCanalAtencion], [nomCanalAtencion]) VALUES (4, N'e-mail')
GO
INSERT [dbo].[CanalesAtencion] ([codCanalAtencion], [nomCanalAtencion]) VALUES (7, N'personal')
GO
SET IDENTITY_INSERT [dbo].[CanalesAtencion] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (186, N'Julian', N'Martinez', N'41521933', CAST(N'1998-12-09T00:00:00.000' AS DateTime), N'2martinezjulian@gmail.com', 1, 1, 1, N'3517014715')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (196, N'Federico', N'Weiss', N'42890987', CAST(N'1999-09-02T00:00:00.000' AS DateTime), N'fedeweiss@yahoo.com.ar', 37, 1, 7, N'3515890987')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (221, N'Agustin ', N'Videla', N'40987656', CAST(N'1996-12-01T00:00:00.000' AS DateTime), N'agusvidela96@hotmail.com', 4, 1, 1, N'3541567898')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (226, N'Carolina', N'Holdorf', N'41098765', CAST(N'1997-12-12T00:00:00.000' AS DateTime), N'caroholdor@gmail.com', 28, 1, 4, N'3516789091')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (246, N'Maria Gabriela', N'Cesar', N'20996432', CAST(N'1969-11-19T00:00:00.000' AS DateTime), N'mariagabrielac@gmail.com', 1, 1, 4, N'3512283788')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (251, N'Dante', N'Bonanno', N'18789987', CAST(N'1960-10-20T00:00:00.000' AS DateTime), N'dantobananno@outlook.com.ar', 19, 1, 1, N'3512898876')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (266, N'Julia', N'Busso', N'42298799', CAST(N'1999-07-21T00:00:00.000' AS DateTime), N'Ju.Busso@gmail.com', 7, 1, 4, N'3513456534')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (351, N'La caldear S.A', NULL, N'20-05854965-3', NULL, N'Administracion@caldear.com', 13, 19, NULL, N'3514567898')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (356, N'Sancor seguros', NULL, N'2-798909875-2', NULL, N'Compras@SancorSeguros.com', 34, 19, NULL, N'3516543564')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (361, N'Holdorf-Vazques Abogados', NULL, N'20-06560453-5', CAST(N'1928-12-06T00:00:00.000' AS DateTime), N'EstudioHoldorfVazquez@hotmail.com', 31, 16, 1, N'3514277898')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (366, N'Mingueza metalurgica', NULL, N'27-67899872-1', NULL, N'AdiminMingueza@gmail.com', 16, 19, NULL, N'3514787653')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (371, N'Alvaro', N'Morano', N'20-37678876-5', CAST(N'1984-04-12T00:00:00.000' AS DateTime), N'MoranoAlvaro@Outlook.com', 10, 16, 1, N'3516789987')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (376, N'nahuel', N'rivera', N'42337342', CAST(N'1999-12-19T00:00:00.000' AS DateTime), N'nahuel-rivera@hotmail.com', 49, 1, 1, N'3517512568')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (381, N'franco', N'rodriguez', N'23979692', CAST(N'1974-05-23T00:00:00.000' AS DateTime), N'franrodriguez@gmail.com', 52, 4, 1, N'3517512560')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (386, N'milagros', N'paredes', N'37489562', CAST(N'1986-09-16T00:00:00.000' AS DateTime), N'miliro@live.com', 58, 1, 4, N'3512318159')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (391, N'trinidad ', N'moyano', N'30456789', CAST(N'1990-12-28T00:00:00.000' AS DateTime), N't_moyano@hotmail.com', 61, 4, 7, N'3518546789')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (396, N'victor ', N'franco', N'27898694', CAST(N'1978-05-23T00:00:00.000' AS DateTime), N'tecnomundo@gmail.com', 64, 7, 1, N'4710514')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (401, N'viviana', N'heredia', N'40910820', CAST(N'1997-12-02T00:00:00.000' AS DateTime), N'pestañasivi@hotmail.com', 67, 1, 4, N'4568971')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (406, N'marcos', N'figueroa', N'34569965', CAST(N'1994-01-03T00:00:00.000' AS DateTime), N'mf@live.com', 70, 1, 1, N'4121625')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (411, N'luca ', N'martinez', N'40123456', CAST(N'1998-02-22T00:00:00.000' AS DateTime), N'luquitamartinez@gmail.com', 73, 1, 7, N'351895678')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (416, N'agostina', N'castellano', N'39654321', CAST(N'1999-11-22T00:00:00.000' AS DateTime), N'agoscas@hotmail.com', 76, 1, 7, N'156789123')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (421, N'florencia ', N'mala', N'33789654', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'florm@gmail.com', 79, 1, 4, N'4561234')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (426, N'rocio', N'agüero', N'27-22162174-9', CAST(N'1972-05-18T00:00:00.000' AS DateTime), N'raguero@live.com', 82, 19, 4, N'3518951468')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (431, N'valentin', N'moya', N'20-25456987-4', CAST(N'1978-08-05T00:00:00.000' AS DateTime), N'valentmo@hotmai.com', 85, 19, 7, N'3517698741')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (436, N'braian alexis', N'rossi', N'40604032', CAST(N'1999-02-13T00:00:00.000' AS DateTime), N'braian1999@gmail.com', 133, 1, 1, N'3517594059')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (441, N'hugo', N'aseloni', N'19049385', CAST(N'1964-03-25T00:00:00.000' AS DateTime), N'rasayav3as78@hbehs.com', 136, 1, 1, N'3543930492')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (446, N'javier', N'ferreyra', N'41302920', CAST(N'1999-02-14T00:00:00.000' AS DateTime), N'rasayav3as78@hbehs.com', 139, 1, 1, N'3819291029')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (451, N'federico alexis', N'sanchez', N'59303029', CAST(N'2022-01-03T00:00:00.000' AS DateTime), N'rasayav12378@hbehs.com', 142, 4, 1, N'1901029301')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (456, N'catalina', N'sanches varela', N'41503958', CAST(N'1997-01-04T00:00:00.000' AS DateTime), N'dorib15519@hbehs.com', 145, 4, 4, N'3919290102')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (461, N'bruno', N'clavero', N'-30583917', CAST(N'1990-04-03T00:00:00.000' AS DateTime), N'cibosal213@dufeed.com', 148, 4, 1, N'9382930294')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (466, N'tatyana', N'adreada', N'50394829', CAST(N'2010-12-02T00:00:00.000' AS DateTime), N'hiyemof927@roxoas.com', 151, 4, 4, N'1938940392')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (471, N'adrea', N'rossi', N'-40391999', CAST(N'1999-07-14T00:00:00.000' AS DateTime), N'peniw20762@hbehs.com', 154, 7, 4, N'3519203940')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (476, N'lucia', N'perez', N'49182748', CAST(N'2001-04-23T00:00:00.000' AS DateTime), N'pamaxit806@hbehs.com', 157, 7, 4, N'4039593829')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (481, N'natalia', N'silva', N'39481749', CAST(N'1996-05-14T00:00:00.000' AS DateTime), N'peniw21120762@hbehs.com', 160, 7, 4, N'3213554232')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (486, N'mayra', N'borrego', N'-35162818', CAST(N'1994-06-17T00:00:00.000' AS DateTime), N'pohokin970@dufeed.com', 163, 7, 4, N'3510403920')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (491, N'luciano', N'rios', N'-30483716', CAST(N'1993-07-16T00:00:00.000' AS DateTime), N'marte1999@dooul.com', 166, 13, 1, N'3029403920')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (496, N'lucas', N'tejerina', N'-39578352', CAST(N'1990-08-04T00:00:00.000' AS DateTime), N'jormanina@gmail.com', 133, 13, 1, N'2339489230')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (501, N'matias', N'toujas', N'30581748', CAST(N'1922-09-06T00:00:00.000' AS DateTime), N'matitalleres@hotmail.com', 136, 13, 1, N'2049203548')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (506, N'emiliano', N'ferreyra', N'40291849', CAST(N'1996-10-09T00:00:00.000' AS DateTime), N'emipapa@gmail.ar', 139, 13, 1, N'3512342334')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (511, N'cindy', N'leiva', N'58382913', CAST(N'2010-11-11T00:00:00.000' AS DateTime), N'gobierno@cba.com', 142, 13, 4, N'3252490024')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (516, N'vanina', N'martinez ', N'52384726', CAST(N'2015-02-23T00:00:00.000' AS DateTime), N'vani@ingles.com', 145, 1, 7, N'3512948300')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (521, N'raul alfredo', N'sanchez', N'57382919', CAST(N'2020-12-07T00:00:00.000' AS DateTime), N'rapaniu@xd.com', 148, 4, 7, N'48573829')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (526, N'fernando', N'rossi', N'59382749', CAST(N'2022-03-20T00:00:00.000' AS DateTime), N'fer@nan.do', 151, 7, 7, N'23849334')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (531, N'horacio', N'naranjo', N'60483929', CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'horacio2010@gmail.com', 154, 13, 7, N'23493249')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (536, N'Luca', N'De Bortoli', N'43925290', CAST(N'2002-06-28T00:00:00.000' AS DateTime), N'lucadebortoli76@gmail.com', 178, 1, 1, N'3512234323')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (541, N'Juan', N'Rodriguez', N'35525743', CAST(N'1992-05-23T00:00:00.000' AS DateTime), N'RodriguezJ@hotmail.com', 181, 1, 1, N'3513891761')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (546, N'Luciana', N'Juarez', N'37914890', CAST(N'1994-09-06T00:00:00.000' AS DateTime), N'JuarezLu@gmail.com', 184, 1, 7, N'3515525909')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (551, N'Pedro', N'Perez', N'31431347', CAST(N'1986-08-10T00:00:00.000' AS DateTime), N'PPerez86@hotmail.com', 187, 1, 1, N'3514596721')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (556, N'Luciano', N'Alvarez', N'37624731', CAST(N'1994-06-07T00:00:00.000' AS DateTime), N'AlvarezLucho@outlook.com', 190, 1, 1, N'3514598726')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (561, N'Milagros', N'heredia', N'40237894', CAST(N'2000-03-01T00:00:00.000' AS DateTime), N'milagrosheredia01@gmail.com', 193, 1, 4, N'3517227471')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (566, N'valentin', N'zabala', N'43925289', CAST(N'2002-06-29T00:00:00.000' AS DateTime), N'zabalavalentin27@gmail.com', 196, 1, 1, N'3518290124')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (571, N'Viviana', N'Porchietto', N'33582980', CAST(N'1990-10-23T00:00:00.000' AS DateTime), N'ViviP@hotmail.com', 199, 1, 7, N'3513768901')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (576, N'Jose', N'Rivera', N'19542904', CAST(N'1972-02-03T00:00:00.000' AS DateTime), N'RiveraJose@hotmail.com', 202, 1, 1, N'3510428910')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (581, N'Julian', N'Rossi', N'39599391', CAST(N'1999-04-21T00:00:00.000' AS DateTime), N'JuliRossi@gmail.com', 205, 1, 1, N'3513030822')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (586, N'Juana', N'Martinez', N'25901672', CAST(N'1975-09-11T00:00:00.000' AS DateTime), N'MartinezJuana75@hotmail.com', 208, 1, 4, N'3516471471')
GO
INSERT [dbo].[Clientes] ([codCliente], [nombre], [apellido], [documento], [fechaNacimiento], [email], [codDom], [codTipoDoc], [codGenero], [telefono]) VALUES (591, N'Tomas', N'Brizuela', N'38571910', CAST(N'1998-05-09T00:00:00.000' AS DateTime), N'Tbrizuela@gmail.com', 211, 1, 1, N'3512694562')
GO
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Colores] ON 
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (1, N'Negro')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (4, N'azul')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (7, N'marrón')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (10, N'gris')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (13, N'verde')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (16, N'naranja')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (19, N'rosa')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (22, N'púrpura')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (25, N'rojo')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (28, N'blanco')
GO
INSERT [dbo].[Colores] ([codColor], [nomColor]) VALUES (31, N'amarillo')
GO
SET IDENTITY_INSERT [dbo].[Colores] OFF
GO
SET IDENTITY_INSERT [dbo].[Detalle_Facturas] ON 
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (1, 157, 43, 4, CAST(N'2022-05-23T00:00:00.000' AS DateTime), 2000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (7, 163, 1, 85, CAST(N'2022-05-24T00:00:00.000' AS DateTime), 50)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (13, 169, 37, 5, CAST(N'2022-05-25T00:00:00.000' AS DateTime), 400)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (19, 175, 19, 32, CAST(N'2022-05-23T00:00:00.000' AS DateTime), 100)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (25, 181, 40, 10, CAST(N'2022-05-24T00:00:00.000' AS DateTime), 400)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (31, 187, 43, 15, CAST(N'2022-05-25T00:00:00.000' AS DateTime), 2000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (37, 193, 34, 58, CAST(N'2022-05-23T00:00:00.000' AS DateTime), 250)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (43, 199, 22, 10, CAST(N'2022-05-30T00:00:00.000' AS DateTime), 100)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (49, 205, 10, 8, CAST(N'2022-05-30T00:00:00.000' AS DateTime), 800)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (55, 211, 34, 20, CAST(N'2022-05-28T00:00:00.000' AS DateTime), 250)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (61, 217, 40, 6, CAST(N'2022-05-27T00:00:00.000' AS DateTime), 750)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (67, 229, 13, 2, CAST(N'2022-05-25T00:00:00.000' AS DateTime), 150)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (73, 235, 34, 6, CAST(N'2022-05-25T00:00:00.000' AS DateTime), 250)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (79, 241, 46, 4, CAST(N'2003-09-22T00:00:00.000' AS DateTime), 400)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (85, 247, 49, 10, CAST(N'2015-03-14T00:00:00.000' AS DateTime), 1000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (91, 253, 52, 9, CAST(N'2019-07-31T00:00:00.000' AS DateTime), 1800)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (97, 259, 55, 200, CAST(N'1999-11-27T00:00:00.000' AS DateTime), 50000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (103, 265, 58, 10, CAST(N'2008-07-02T00:00:00.000' AS DateTime), 3000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (109, 271, 61, 500, CAST(N'2008-07-09T00:00:00.000' AS DateTime), 20000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (115, 277, 64, 100, CAST(N'2008-06-21T00:00:00.000' AS DateTime), 5000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (121, 283, 67, 100, CAST(N'2004-09-26T00:00:00.000' AS DateTime), 7000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (127, 289, 70, 100, CAST(N'2004-10-02T00:00:00.000' AS DateTime), 2000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (133, 295, 73, 300, CAST(N'2022-01-22T00:00:00.000' AS DateTime), 18000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (139, 301, 76, 1000, CAST(N'2021-09-16T00:00:00.000' AS DateTime), 3000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (145, 307, 79, 1000, CAST(N'2022-03-14T00:00:00.000' AS DateTime), 6000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (151, 313, 82, 4000, CAST(N'2021-10-29T00:00:00.000' AS DateTime), 40000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (157, 319, 85, 1202, CAST(N'2020-11-21T00:00:00.000' AS DateTime), 15626)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (163, 325, 88, 987, CAST(N'2021-12-31T00:00:00.000' AS DateTime), 3948)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (187, 349, 100, 6, CAST(N'2010-01-08T00:00:00.000' AS DateTime), 500)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (193, 355, 103, 9, CAST(N'2008-05-02T00:00:00.000' AS DateTime), 5600)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (199, 361, 106, 10, CAST(N'2008-05-06T00:00:00.000' AS DateTime), 6000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (205, 367, 109, 37, CAST(N'2005-02-05T00:00:00.000' AS DateTime), 6500)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (223, 385, 118, 100, CAST(N'2001-11-11T00:00:00.000' AS DateTime), 54000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (229, 391, 121, 320, CAST(N'2000-06-01T00:00:00.000' AS DateTime), 5700)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (235, 397, 124, 400, CAST(N'2000-03-01T00:00:00.000' AS DateTime), 500)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (253, 415, 133, 8000, CAST(N'1996-04-06T00:00:00.000' AS DateTime), 150)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (259, 331, 91, 23, CAST(N'2022-05-22T00:00:00.000' AS DateTime), 1500)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (265, 337, 94, 23, CAST(N'2020-07-19T00:00:00.000' AS DateTime), 200000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (271, 343, 97, 4, CAST(N'2016-04-17T00:00:00.000' AS DateTime), 24560)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (277, 373, 112, 47, CAST(N'2004-02-21T00:00:00.000' AS DateTime), 78000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (283, 403, 127, 700, CAST(N'1999-09-25T00:00:00.000' AS DateTime), 450)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (289, 409, 130, 600, CAST(N'1997-05-30T00:00:00.000' AS DateTime), 500)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (295, 379, 115, 955, CAST(N'2002-06-23T00:00:00.000' AS DateTime), 79000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (301, 367, 136, 4, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 500)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (307, 373, 139, 5, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 250)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (313, 379, 145, 200, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 750)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (319, 385, 148, 25, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 1000)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (325, 391, 151, 44, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 200)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (331, 397, 154, 21, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 150)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (337, 403, 157, 17, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 100)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (343, 409, 160, 12, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 50)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (349, 415, 163, 166, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 350)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (355, 691, 166, 24, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 350)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (361, 697, 169, 459, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 600)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (367, 703, 172, 210, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 700)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (373, 709, 175, 525, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 800)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (379, 715, 178, 115, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 850)
GO
INSERT [dbo].[Detalle_Facturas] ([codDetPedido], [codFactura], [codProd], [cantidad], [fechaEntrega], [precioUnitario]) VALUES (385, 721, 184, 52, CAST(N'2022-03-23T00:00:00.000' AS DateTime), 1100)
GO
SET IDENTITY_INSERT [dbo].[Detalle_Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Domicilios] ON 
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (1, N'Negrete de la camara', 2221, NULL, NULL, 5012, 4, 25)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (4, N'Chancalai', 1123, NULL, NULL, 5007, 13, 19)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (7, N'Bv. San Juan', 345, 2, N'C', 5002, 1, 31)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (10, N'Av. Las Malvinas', 3000, NULL, NULL, 5010, 10, 43)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (13, N'Av. Gauss', 345, NULL, NULL, 5002, 4, 88)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (16, N'Av. Las Malvinas', 5235, NULL, NULL, 5015, 13, 49)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (19, N'Emilio Salgari ', 2080, NULL, N'Arriba', 5017, 4, 16)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (22, N'Eduardo San Martin', 1517, NULL, NULL, 5012, 1, 28)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (28, N'Juan del campillo', 765, NULL, NULL, 5005, 7, 40)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (31, N'Jose de quevedo ', 7889, NULL, NULL, 5012, 4, 25)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (34, N'Av. Colon ', 567, 5, N'D', 5004, 7, 7)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (37, N'Talleres', 1120, NULL, NULL, 5004, 7, 52)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (40, N'Av. La Voz del Interior', 4579, NULL, NULL, 5020, 13, NULL)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (43, N'Av.Donatto Alvarez', 3456, NULL, NULL, 5009, 13, NULL)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (46, N'Av. Fuerza Aerea ', 4234, NULL, NULL, 5015, 10, NULL)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (49, N'los tintines', 231, NULL, NULL, 5001, 4, 1)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (52, N'sarachaga', 1242, 2, N'4', 5000, 4, 10)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (58, N'de la rosa', 759, 3, N'3', 5000, 4, 7)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (61, N'gral paz', 545, 7, N'8', 5000, 7, 31)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (64, N'las vertientes', 456, NULL, NULL, 5002, 7, 34)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (67, N'lascano', 1232, NULL, NULL, 5003, 7, 37)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (70, N'cordoba', 1268, 1, N'5', 5001, 4, 40)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (73, N'castelar', 1568, 3, N'2', 5012, 4, 43)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (76, N'pinto', 789, NULL, NULL, 5000, 7, 58)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (79, N'copacabana', 963, 2, N'4', 5015, 7, 61)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (82, N'sarandi', 364, 15, N'3', 5010, 4, 64)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (85, N'vivees', 1564, NULL, NULL, 5000, 4, 16)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (88, N'correa', 123, 2, N'1', 5001, 4, 19)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (91, N'iribois', 1789, 2, N'1', 5013, 7, 22)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (94, N'castelar', 654, NULL, NULL, 5012, 7, 73)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (97, N'mendiolaza', 987, NULL, NULL, 5010, 4, 76)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (100, N'ruiz', 1453, 7, N'3', 5000, 4, 79)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (103, N'colombres', 658, NULL, NULL, 5001, 4, 88)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (106, N'suquia', 954, 2, N'2', 5000, 4, 91)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (109, N'santa fe', 3690, NULL, NULL, 5000, 7, 94)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (112, N'uberman ', 1245, NULL, NULL, 5000, 4, 28)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (115, N'Av. Capdevilla', 3456, NULL, NULL, 5013, 10, 25)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (118, N'Bv. Los Alemanes', 234, 3, N'4', 5018, 1, 97)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (121, N'Los italianos ', 6119, NULL, NULL, 5020, 4, 61)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (124, N'Emilio Olmos', 345, 6, N'D', 5003, 1, 64)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (127, N'Belgrano', 245, 3, N'B', 5001, 1, 46)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (130, N'Consejal  Alonso', 266, NULL, NULL, 5019, 13, 19)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (133, N'tomas de irobi ', 5709, 1, N'1', 5008, 1, 1)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (136, N'pimentel', 456, 2, N'1', 5009, 1, 4)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (139, N'monsenior pablo cabrera', 469, 1, N'0', 5007, 1, 7)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (142, N'general paz', 570, 3, N'4', 5008, 4, 1)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (145, N'buenos aires', 457, 4, N'1', 5003, 4, 13)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (148, N'salta', 1700, 1, N'2', 5000, 4, 16)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (151, N'manuel belgrano', 348, 1, N'3', 5001, 4, 19)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (154, N'donato alvarez', 432, 3, N'1', 5002, 4, 58)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (157, N'rancagua', 170, 3, N'3', 5003, 10, 40)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (160, N'maipu', 100, 3, N'5', 5004, 13, 43)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (163, N'alsonso de ubeda', 126, 4, N'2', 5006, 13, 52)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (166, N'sagrada familia', 540, 5, N'1', 5008, 10, 61)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (169, N'mosconi', 140, 1, N'0', 5003, 1, 100)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (172, N'mechero escola', 250, 1, N'0', 5004, 4, 82)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (175, N'concepcion de vermejo', 546, 1, N'0', 5008, 10, 85)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (178, N'thomas edison ', 2860, 1, N'4', 5001, 1, 1)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (181, N'pedernera', 4402, 4, N'1', 5002, 1, 4)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (184, N'altolaguirre', 520, 2, N'1', 5003, 4, 7)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (187, N'homero', 50, 5, N'6', 5005, 7, 10)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (190, N'santa fe', 900, 1, N'3', 5001, 10, 13)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (193, N'general paz', 250, 3, N'8', 5001, 13, 16)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (196, N'buenos aires', 501, 3, N'9', 5001, 1, 19)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (199, N'rondeau', 5004, 7, N'10', 5006, 1, 22)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (202, N'luis vernet', 888, 6, N'2', 5007, 1, 25)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (205, N'celestino vidal', 525, 5, N'3', 5008, 10, 28)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (208, N'alsina', 1024, 7, N'4', 5010, 10, 31)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (211, N'alsina', 1900, 9, N'1', 5009, 7, 34)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (214, N'federico rauch', 3459, 2, N'7', 5002, 7, 37)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (217, N'bulnes', 2540, 4, N'5', 5001, 4, 40)
GO
INSERT [dbo].[Domicilios] ([codDom], [calle], [altura], [piso], [dpto], [codPostal], [codTipoDom], [codBarrio]) VALUES (220, N'charcas', 2300, 5, N'2', 5004, 1, 43)
GO
SET IDENTITY_INSERT [dbo].[Domicilios] OFF
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (20789233, N'Enzo', N'Rodriguez', 20789233, CAST(N'2020-07-24T00:00:00.000' AS DateTime), 6, 211, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (193928101, N'felipe', N'riquelme', 19392810, CAST(N'1997-06-03T00:00:00.000' AS DateTime), 21, 10, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (221236544, N'francisco', N'aman', 22123654, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 26, 100, 1, 7)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (279874561, N'marga', N'ferreyra', 27987456, CAST(N'2019-10-08T00:00:00.000' AS DateTime), 16, 103, 1, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (304121904, N'andrea', N'ronaldo', 30412190, CAST(N'2010-06-03T00:00:00.000' AS DateTime), 11, 127, 1, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (304958314, N'federico', N'rodriguez', 30495831, CAST(N'2021-09-30T00:00:00.000' AS DateTime), 16, 166, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (326549872, N'maria', N'bernal', 32654987, CAST(N'2014-07-30T00:00:00.000' AS DateTime), 16, 97, 4, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (351729432, N'jose', N'messi', 35172943, CAST(N'2022-02-05T00:00:00.000' AS DateTime), 31, 4, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (363015821, N'Sofia', N'Martinez', 36301582, CAST(N'2019-09-07T00:00:00.000' AS DateTime), 6, 202, 1, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (368076912, N'Juan Ignacio', N'Rodriguez', 36807691, CAST(N'2012-07-20T00:00:00.000' AS DateTime), 1, 118, 1, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (374567891, N'franca', N'gimenez', 37456789, CAST(N'2011-01-05T00:00:00.000' AS DateTime), 26, 94, 1, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (375249014, N'Nahuel', N'Juarez', 37524901, CAST(N'2014-06-03T00:00:00.000' AS DateTime), 16, 190, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (396501335, N'Lucia', N'Perez', 39650133, CAST(N'2012-12-09T00:00:00.000' AS DateTime), 31, 187, 1, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (402697893, N'ramiro', N'francisco', 40269789, CAST(N'2010-02-22T00:00:00.000' AS DateTime), 16, 91, 4, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (406202374, N'Julian', N'Alvarez', 40620237, CAST(N'2009-08-04T00:00:00.000' AS DateTime), 21, 178, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (406817495, N'jorgue ', N'norverto', 40681749, CAST(N'2008-05-11T00:00:00.000' AS DateTime), 26, 1, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (406828251, N'Braian', N'Rossi', 40682825, CAST(N'2010-11-10T00:00:00.000' AS DateTime), 1, 196, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (408217213, N'natalia', N'scaloni', 40821721, CAST(N'2001-04-15T00:00:00.000' AS DateTime), 6, 4, 1, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (419874914, N'Guillermina', N'Moereno', 41987491, CAST(N'2022-06-02T00:00:00.000' AS DateTime), 31, 127, 1, 7)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (420956403, N'Rodrigo Jesus', N'Robles', 42095640, CAST(N'2019-10-11T00:00:00.000' AS DateTime), 36, 130, 1, 7)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (423373434, N'raul', N'gonzalez', 42337343, CAST(N'2012-05-17T00:00:00.000' AS DateTime), 1, 88, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (425693410, N'Juan Ignacio', N'Vicco', 42569341, CAST(N'2021-01-03T00:00:00.000' AS DateTime), 21, 115, 1, 1)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (430098716, N'Sol', N'Abraham', 43009871, CAST(N'2022-01-04T00:00:00.000' AS DateTime), 6, 121, 1, 4)
GO
INSERT [dbo].[Empleados] ([legajo], [nombre], [apellido], [documento], [fechaIngreso], [codPuesto], [codDom], [codTipoDoc], [codGenero]) VALUES (432345691, N'Victor Ruben', N'Sandez', 43234569, CAST(N'2022-05-22T00:00:00.000' AS DateTime), 11, 124, 1, 7)
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON 
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (157, CAST(N'2022-05-17T00:00:00.000' AS DateTime), 376, 4, 402697893, 374567891, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (163, CAST(N'2022-04-20T00:00:00.000' AS DateTime), 376, 7, 402697893, 374567891, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (169, CAST(N'2022-04-25T00:00:00.000' AS DateTime), 381, 1, 402697893, 374567891, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (175, CAST(N'2022-05-20T00:00:00.000' AS DateTime), 381, 10, 402697893, 374567891, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (181, CAST(N'2022-05-23T00:00:00.000' AS DateTime), 386, 1, 326549872, 374567891, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (187, CAST(N'2022-04-10T00:00:00.000' AS DateTime), 386, 1, 326549872, 374567891, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (193, CAST(N'2022-02-08T00:00:00.000' AS DateTime), 421, 7, 326549872, 374567891, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (199, CAST(N'2022-05-30T00:00:00.000' AS DateTime), 426, 7, 326549872, 374567891, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (205, CAST(N'2022-04-14T00:00:00.000' AS DateTime), 391, 4, 326549872, 221236544, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (211, CAST(N'2022-05-18T00:00:00.000' AS DateTime), 396, 4, 326549872, 221236544, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (217, CAST(N'2022-04-17T00:00:00.000' AS DateTime), 406, 10, 279874561, 221236544, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (229, CAST(N'2022-05-23T00:00:00.000' AS DateTime), 421, 10, 279874561, 221236544, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (235, CAST(N'2022-02-20T00:00:00.000' AS DateTime), 376, 10, 279874561, 221236544, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (241, CAST(N'2003-09-12T00:00:00.000' AS DateTime), 186, 10, 193928101, 374567891, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (247, CAST(N'2015-03-12T00:00:00.000' AS DateTime), 196, 1, 304958314, 406817495, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (253, CAST(N'2019-07-19T00:00:00.000' AS DateTime), 351, 10, 402697893, 406817495, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (259, CAST(N'1999-11-22T00:00:00.000' AS DateTime), 356, 7, 279874561, 406817495, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (265, CAST(N'2008-06-18T00:00:00.000' AS DateTime), 371, 10, 279874561, 374567891, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (271, CAST(N'2008-06-30T00:00:00.000' AS DateTime), 366, 10, 279874561, 374567891, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (277, CAST(N'2008-06-10T00:00:00.000' AS DateTime), 361, 10, 279874561, 374567891, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (283, CAST(N'2004-09-21T00:00:00.000' AS DateTime), 221, 10, 193928101, 406817495, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (289, CAST(N'2004-09-23T00:00:00.000' AS DateTime), 226, 10, 193928101, 406817495, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (295, CAST(N'2022-01-12T00:00:00.000' AS DateTime), 246, 10, 27987456, 221236544, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (301, CAST(N'2021-09-12T00:00:00.000' AS DateTime), 251, 1, 27987456, 406817495, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (307, CAST(N'2022-03-02T00:00:00.000' AS DateTime), 266, 1, 193928101, 406817495, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (313, CAST(N'2021-10-24T00:00:00.000' AS DateTime), 351, 10, 193928101, 406817495, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (319, CAST(N'2020-11-15T00:00:00.000' AS DateTime), 371, 1, 304958314, 406817495, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (325, CAST(N'2021-12-24T00:00:00.000' AS DateTime), 186, 10, 304958314, 221236544, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (331, CAST(N'2022-05-21T00:00:00.000' AS DateTime), 436, 4, 304958314, 326549872, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (337, CAST(N'2022-05-20T00:00:00.000' AS DateTime), 441, 7, 304958314, 326549872, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (343, CAST(N'2022-05-19T00:00:00.000' AS DateTime), 446, 1, 304958314, 326549872, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (349, CAST(N'2022-05-20T00:00:00.000' AS DateTime), 451, 10, 304958314, 326549872, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (355, CAST(N'2022-05-20T00:00:00.000' AS DateTime), 456, 1, 304958314, 326549872, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (361, CAST(N'2022-05-20T00:00:00.000' AS DateTime), 461, 1, 304958314, 374567891, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (367, CAST(N'2022-05-19T00:00:00.000' AS DateTime), 466, 7, 304958314, 374567891, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (373, CAST(N'2022-05-14T00:00:00.000' AS DateTime), 471, 7, 304958314, 374567891, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (379, CAST(N'2022-05-19T00:00:00.000' AS DateTime), 476, 4, 304958314, 402697893, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (385, CAST(N'2022-05-20T00:00:00.000' AS DateTime), 481, 4, 304958314, 402697893, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (391, CAST(N'2022-05-05T00:00:00.000' AS DateTime), 486, 10, 304958314, 402697893, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (397, CAST(N'2022-05-20T00:00:00.000' AS DateTime), 491, 10, 304958314, 304958314, 4)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (403, CAST(N'2022-05-19T00:00:00.000' AS DateTime), 496, 10, 304958314, 304958314, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (409, CAST(N'2022-05-18T00:00:00.000' AS DateTime), 501, 7, 304958314, 304958314, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (415, CAST(N'2022-04-15T00:00:00.000' AS DateTime), 506, 10, 304958314, 304958314, 7)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (691, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 536, 1, 279874561, 221236544, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (697, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 541, 4, 279874561, 221236544, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (703, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 546, 4, 279874561, 221236544, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (709, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 551, 4, 279874561, 221236544, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (715, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 556, 4, 279874561, 221236544, 1)
GO
INSERT [dbo].[Facturas] ([codFactura], [fechaPedido], [codCliente], [codTipoEnvio], [legajoArmadorPedido], [legajoFacturador], [codCanalAtencion]) VALUES (721, CAST(N'2022-03-15T00:00:00.000' AS DateTime), 536, 4, 279874561, 221236544, 1)
GO
SET IDENTITY_INSERT [dbo].[Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[FacturasFormasPagos] ON 
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (1, 1500, 157, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (4, 300, 163, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (7, 4500, 169, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (10, 5000, 175, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (13, 800, 181, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (16, 1000, 187, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (19, 14500, 193, 31)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (22, 30000, 199, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (25, 4000, 205, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (28, 7500, 211, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (31, 2000, 217, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (34, 4250, 229, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (37, 8000, 235, 31)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (40, 400, 241, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (43, 1000, 247, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (46, 1800, 253, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (49, 50000, 259, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (52, 3300, 265, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (55, 22000, 271, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (58, 5000, 277, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (61, 7000, 283, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (64, 2000, 289, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (67, 18000, 295, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (70, 3000, 301, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (73, 6000, 307, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (76, 44000, 313, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (79, 17188.6, 319, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (82, 4342.8, 325, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (85, 34500, 331, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (88, 4600000, 337, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (91, 98240, 343, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (94, 45000, 349, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (97, 756000, 355, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (100, 900000, 361, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (103, 240500, 367, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (106, 3666000, 373, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (109, 75445000, 379, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (112, 5400000, 385, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (115, 1824000, 391, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (118, 200000, 397, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (121, 3150000, 403, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (124, 3000000, 409, 37)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (127, 12000000, 415, 37)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (130, 34500, 331, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (133, 4600000, 337, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (136, 98240, 343, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (139, 45000, 349, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (142, 756000, 355, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (145, 900000, 361, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (148, 240500, 367, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (151, 3666000, 373, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (154, 75445000, 379, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (157, 5400000, 385, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (160, 1824000, 391, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (163, 200000, 397, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (166, 3150000, 403, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (169, 3000000, 409, 37)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (172, 12000000, 415, 37)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (175, 2000, 367, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (178, 1250, 373, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (181, 150000, 379, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (184, 25000, 385, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (187, 8800, 391, 31)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (190, 3150, 397, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (193, 1700, 403, 37)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (196, 600, 409, 19)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (199, 58100, 415, 22)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (202, 8400, 691, 25)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (205, 275400, 697, 28)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (208, 147000, 703, 31)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (211, 420000, 709, 34)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (214, 97750, 715, 37)
GO
INSERT [dbo].[FacturasFormasPagos] ([codPedidoFormaPago], [montoPago], [codFactura], [codFormaPago]) VALUES (217, 57200, 721, 34)
GO
SET IDENTITY_INSERT [dbo].[FacturasFormasPagos] OFF
GO
SET IDENTITY_INSERT [dbo].[FormasPagos] ON 
GO
INSERT [dbo].[FormasPagos] ([codFormaPago], [nomFormaPago], [recargo]) VALUES (19, N'Efectivo', 0)
GO
INSERT [dbo].[FormasPagos] ([codFormaPago], [nomFormaPago], [recargo]) VALUES (22, N'Cheque', 15)
GO
INSERT [dbo].[FormasPagos] ([codFormaPago], [nomFormaPago], [recargo]) VALUES (25, N'Transferencia', 0)
GO
INSERT [dbo].[FormasPagos] ([codFormaPago], [nomFormaPago], [recargo]) VALUES (28, N'Debito', 0)
GO
INSERT [dbo].[FormasPagos] ([codFormaPago], [nomFormaPago], [recargo]) VALUES (31, N'Credito', 7)
GO
INSERT [dbo].[FormasPagos] ([codFormaPago], [nomFormaPago], [recargo]) VALUES (34, N'Cuenta corriente', 10)
GO
INSERT [dbo].[FormasPagos] ([codFormaPago], [nomFormaPago], [recargo]) VALUES (37, N'Mercado Pago', 10)
GO
SET IDENTITY_INSERT [dbo].[FormasPagos] OFF
GO
SET IDENTITY_INSERT [dbo].[Formatos] ON 
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (1, N'4A0 ', N'1682 x 2378 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (4, N'2A0', N'1189 x 1682 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (7, N'A0 ', N'841 x 1189 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (10, N'A1', N'594 x 841 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (13, N'A2 ', N'420 x 594 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (16, N'A3', N'297 x 420 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (19, N'A4 ', N'210 x 297 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (22, N'A5', N'148 x 210 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (25, N'A6', N'105 x 148 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (28, N'A7 ', N'74 x 105 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (31, N'A8  ', N'52 x 74 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (34, N'A9', N'37 x 52 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (37, N'A10 ', N'26 x 37 mm')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (40, N'Caja A1', N'200x200x100')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (43, N'Caja A2', N'250x200x200')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (46, N'Caja B1', N'304x185x132')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (49, N'Caja C1', N'320x320x170')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (52, N'Caja D1', N'330x220x310')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (55, N'Caja E1', N'360x240x270')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (58, N'Caja F1', N'375x250x305')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (61, N'Caja G1', N'400x350x300')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (64, N'Caja H1', N'490x490x300')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (67, N'Caja I1', N'600x500x150')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (70, N'Caja I2', N'600x500x300')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (73, N'Caja I3', N'600x500x400')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (76, N'Caja J1', N'615x380x340')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (79, N'Caja K1', N'420x315x270')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (82, N'Caja L1', N'790x590x540')
GO
INSERT [dbo].[Formatos] ([codFormato], [nomFormato], [formato]) VALUES (85, N'Caja M1', N'800x440x250')
GO
SET IDENTITY_INSERT [dbo].[Formatos] OFF
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 
GO
INSERT [dbo].[Generos] ([codGenero], [nomGenero]) VALUES (1, N'Masculino')
GO
INSERT [dbo].[Generos] ([codGenero], [nomGenero]) VALUES (4, N'Femenino')
GO
INSERT [dbo].[Generos] ([codGenero], [nomGenero]) VALUES (7, N'No binario')
GO
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
SET IDENTITY_INSERT [dbo].[Localidades] ON 
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (4, N'Cordoba', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (7, N'Rio Cuarto', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (10, N'Villa Maria', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (13, N'Carlos Paz', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (16, N'San Francisco', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (19, N'Alta Gracia', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (22, N'Rio Tercero', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (25, N'Bell Ville', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (28, N'La Calera', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (31, N'Jesus Maria', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (34, N'Villa Dolores', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (37, N'Cruz del Eje', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (40, N'Villa Allende', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (43, N'Marcos Juarez', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (46, N'Arroyito', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (49, N'Dean Funes', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (52, N'Colonia Caroya', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (55, N'Laboulaye', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (58, N'Rio Segundo', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (61, N'Rio Ceballos', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (64, N'Cosquin', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (67, N'Villa Nueva', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (70, N'Unquillo', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (73, N'Morteros', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (76, N'La Falda', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (79, N'Las Varillas', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (82, N'Villa del Rosario', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (85, N'Pilar', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (88, N'Oncativo', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (91, N'Santa Rosa de Calamuchita', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (94, N'La Carlota', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (97, N'Malvinas Argentinas', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (100, N'Estacion Juarez Celman', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (103, N'Almafuerte', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (106, N'General Cabrera', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (109, N'Capilla del Monte', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (112, N'General Deheza', 13)
GO
INSERT [dbo].[Localidades] ([codLocalidad], [nomLocalidad], [codProvincia]) VALUES (115, N'Saldan', 13)
GO
SET IDENTITY_INSERT [dbo].[Localidades] OFF
GO
SET IDENTITY_INSERT [dbo].[Materiales] ON 
GO
INSERT [dbo].[Materiales] ([codMaterial], [nomMaterial]) VALUES (1, N'Carton')
GO
INSERT [dbo].[Materiales] ([codMaterial], [nomMaterial]) VALUES (4, N'Papel')
GO
INSERT [dbo].[Materiales] ([codMaterial], [nomMaterial]) VALUES (7, N'Papel autoadhesivo')
GO
INSERT [dbo].[Materiales] ([codMaterial], [nomMaterial]) VALUES (10, N'Plastico')
GO
INSERT [dbo].[Materiales] ([codMaterial], [nomMaterial]) VALUES (13, N'Imanes')
GO
INSERT [dbo].[Materiales] ([codMaterial], [nomMaterial]) VALUES (16, N'Vinilo')
GO
SET IDENTITY_INSERT [dbo].[Materiales] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (1, N'agenda chica', 0.4, 50, 4, 16, 1, 7)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (4, N'agenda grande', 0.8, 80, 4, 19, 4, 7)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (7, N'libro chico', 0.4, 75, 4, 31, 7, 10)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (10, N' libromediano', 1, 100, 4, 25, 31, 10)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (13, N'libro grande', 1.3, 150, 4, 19, 28, 10)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (16, N'rifa', 0.25, 100, 4, 37, 25, 25)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (19, N'rifa', 0.25, 100, 4, 37, 22, 25)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (22, N'rifa', 0.25, 100, 4, 37, 19, 25)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (25, N'entrada', 1, 300, 1, 37, 16, 34)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (28, N'entrada', 1, 300, 1, 37, 13, 34)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (31, N'entrada', 1, 300, 1, 37, 10, 34)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (34, N'catalogo chico', 0.4, 250, 1, 31, 4, 28)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (37, N'catalogo medio', 0.8, 400, 1, 25, 1, 28)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (40, N'catalogo grande', 1.4, 750, 1, 19, 7, 28)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (43, N'cartel inmobiliario', 3.5, 2000, 10, 1, 4, 19)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (46, N'Agenda Sancor Seguros', 0.3, 100, 4, 22, 28, 7)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (49, N'Boleta AFIP', 0.15, 100, 4, 22, 10, 1)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (52, N'Cuadernos Caldear', 0.2, 200, 4, 19, 28, 10)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (55, N'Tarjeta Empleado Sancor', 0.04, 250, 10, 31, 4, 13)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (58, N'Libro grande personalizado', 0.25, 300, 4, 19, 28, 10)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (61, N'Caja delivery personalizada', 0.1, 40, 1, 40, 31, 37)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (64, N'Caja envios mediana', 0.15, 50, 1, 46, 10, 37)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (67, N'Caja envios grandes', 0.2, 70, 1, 67, 10, 37)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (70, N'Folleto informativo Sancor', 0.05, 20, 4, 25, 13, 16)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (73, N'Caja regalo', 0.1, 60, 1, 46, 25, 37)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (76, N'Sobres pequeños', 0.01, 3, 4, 25, 28, 22)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (79, N'Sobre mediano ', 0.03, 6, 4, 22, 28, 22)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (82, N'Sobre grande', 0.1, 10, 4, 19, 28, 22)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (85, N'Sobre grande papel madera', 0.11, 13, 4, 19, 7, 22)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (88, N'Hojas membretadas', 0.03, 4, 4, 22, 28, 40)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (91, N'talonario', 0.15, 1500, 1, 1, 1, 10)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (94, N'catalogo', 1, 200000, 4, 4, 4, 31)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (97, N'vinillo', 1005, 24560, 7, 7, 7, 34)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (100, N'entradas', 0.023, 500, 10, 10, 10, 1)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (103, N'folleto', 1200, 5600, 13, 13, 4, 7)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (106, N'libro', 0.01, 6000, 16, 16, 1, 13)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (109, N'entradas', 0.54, 6500, 1, 19, 31, 4)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (112, N'cartel', 0.005, 78000, 4, 28, 28, 19)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (115, N'cartel', 0.003, 79000, 7, 40, 13, 19)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (118, N'catalogo', 4000, 54000, 1, 61, 10, 25)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (121, N'rifa', 0.14, 5700, 4, 64, 10, 22)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (124, N'sobre', 0.4, 500, 7, 70, 25, 34)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (127, N'tarjeta', 0.04, 450, 10, 73, 7, 13)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (130, N'agenda', 0.012, 500, 13, 1, 4, 16)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (133, N'resma troquelda', 0.018, 150, 16, 4, 1, 16)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (136, N'Talonario Afip', 0.4, 50, 4, 37, 28, 1)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (139, N'Resma Troquelada', 5, 800, 4, 19, 28, 4)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (145, N'rifa', 0.25, 100, 4, 28, 25, 25)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (148, N'tarjeta', 0.3, 30, 10, 28, 16, 13)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (151, N'libro', 2, 200, 4, 19, 7, 10)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (154, N'catalogo', 0.8, 60, 4, 19, 28, 28)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (157, N'entrada', 1, 25, 1, 25, 13, 34)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (160, N'entrada', 1, 25, 1, 25, 13, 34)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (163, N'entrada', 1, 25, 1, 25, 13, 34)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (166, N'vinilo', 0.5, 45, 16, 16, 25, 31)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (169, N'vinilo', 0.5, 45, 16, 16, 25, 31)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (172, N'agenda', 4, 70, 4, 19, 31, 7)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (175, N'folleto', 0.15, 15, 4, 22, 28, 16)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (178, N'sobre', 0.1, 40, 4, 22, 28, 22)
GO
INSERT [dbo].[Productos] ([codProd], [nombreProd], [peso], [precio], [codMaterial], [codFormato], [codColor], [codTipoProd]) VALUES (184, N'rifa', 0.25, 100, 4, 28, 25, 25)
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (1, N'Sergio Eruti', 40, N'20-23987763-5', 16, N'3514567898', N'SergioEruti@Hotmail.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (7, N'Donelli Insumos', 46, N'25-54356789-6', 19, N'3517654341', N'VentasDonelli@gmail.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (10, N'Fintex S.A.', 43, N'26-34567808-5', 19, N'3514567825', N'Ventascorporativas@Fintex.com.ar')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (13, N'Mnauel rodri', 106, N'40789654', 1, N'4805612', N'manuelito@gmail.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (16, N'francesca gloria', 109, N'39456123', 1, N'4753986', N'fran.gloria@gmail.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (19, N'mateo rico', 112, N'29987321', 1, N'5230632', N'mateo_ri@hotmail.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (22, N'juan', 169, N'20-30691847-9', 16, N'3517483758', N'pohokin970@dufeed.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (25, N'julian', 172, N'20-38395839-9', 16, N'3517584930', N'nahiva9822@hbehs.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (28, N'silvana', 175, N'27-35394839-9', 16, N'3518594030', N'poxiwiw469@roxoas.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (31, N'Insumos Capdevila', 181, N'26-15325444-5', 19, N'4522672', N'palaciodelrodado@gmaill.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (34, N'Claudio Perez', 187, N'25543120', 1, N'4792503', N'perezclaudio74@gmail.com')
GO
INSERT [dbo].[Proveedores] ([codProv], [nombre], [codDom], [documento], [codTipoDoc], [telefono], [email]) VALUES (37, N'Silvia Soldan ', 214, N'19761893', 1, N'4543490', N'soldansilvia@hotmail.com')
GO
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (1, 4)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (7, 1)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (7, 7)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (10, 10)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (10, 13)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (10, 16)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (13, 1)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (13, 4)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (13, 10)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (16, 7)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (16, 16)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (19, 13)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (22, 1)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (22, 10)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (22, 16)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (25, 4)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (25, 13)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (28, 7)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (31, 1)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (31, 10)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (34, 4)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (34, 13)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (37, 7)
GO
INSERT [dbo].[Proveedores_Materiales] ([codProv], [codMaterial]) VALUES (37, 16)
GO
SET IDENTITY_INSERT [dbo].[Provincias] ON 
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (1, N'CABA')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (4, N'BUENOS AIRES')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (7, N'CATAMARCA')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (10, N'CHUBUT')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (13, N'CORDOBA')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (16, N'CORRIENTES')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (19, N'ENTRE RIOS')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (22, N'FORMOSA')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (25, N'JUJUY')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (28, N'LA PAMPA')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (31, N'LA RIOJA')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (34, N'MENDOZA')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (37, N'MISIONES')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (40, N'NEUQUEN')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (43, N'RIO NEGRO')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (46, N'SALTA')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (49, N'SAN JUAN')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (52, N'SAN LUIS')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (55, N'SANTA FE')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (58, N'SANTA CRUZ')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (61, N'SANTIAGO DEL ESTERO')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (64, N'TIERRA DEL FUEGO')
GO
INSERT [dbo].[Provincias] ([codProvincia], [nomProvincia]) VALUES (67, N'TUCUMAN')
GO
SET IDENTITY_INSERT [dbo].[Provincias] OFF
GO
SET IDENTITY_INSERT [dbo].[Puestos] ON 
GO
INSERT [dbo].[Puestos] ([codPuesto], [nomPuesto]) VALUES (1, N'Supervisor')
GO
INSERT [dbo].[Puestos] ([codPuesto], [nomPuesto]) VALUES (6, N'Administrativo')
GO
INSERT [dbo].[Puestos] ([codPuesto], [nomPuesto]) VALUES (11, N'Contador')
GO
INSERT [dbo].[Puestos] ([codPuesto], [nomPuesto]) VALUES (16, N'Operario')
GO
INSERT [dbo].[Puestos] ([codPuesto], [nomPuesto]) VALUES (21, N'Gerente')
GO
INSERT [dbo].[Puestos] ([codPuesto], [nomPuesto]) VALUES (26, N'Atencion al cliente')
GO
INSERT [dbo].[Puestos] ([codPuesto], [nomPuesto]) VALUES (31, N'Limpieza')
GO
INSERT [dbo].[Puestos] ([codPuesto], [nomPuesto]) VALUES (36, N'Comunicacion')
GO
SET IDENTITY_INSERT [dbo].[Puestos] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposDeProductos] ON 
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (1, N'Talonario Afip')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (4, N'Resma troquelada')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (7, N'Agenda')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (10, N'Libro')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (13, N'Tarjeta')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (16, N'Folleto')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (19, N'Cartel')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (22, N'Sobre')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (25, N'Rifa')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (28, N'Catalogo')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (31, N'Vinilo')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (34, N'Entrada')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (37, N'Caja')
GO
INSERT [dbo].[TiposDeProductos] ([codTipoProd], [nomTipoProducto]) VALUES (40, N'Hoja impresa')
GO
SET IDENTITY_INSERT [dbo].[TiposDeProductos] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposDocumentos] ON 
GO
INSERT [dbo].[TiposDocumentos] ([codTipoDoc], [nombreTipoDoc]) VALUES (1, N'D.N.I.')
GO
INSERT [dbo].[TiposDocumentos] ([codTipoDoc], [nombreTipoDoc]) VALUES (4, N'L.C.')
GO
INSERT [dbo].[TiposDocumentos] ([codTipoDoc], [nombreTipoDoc]) VALUES (7, N'L.E.')
GO
INSERT [dbo].[TiposDocumentos] ([codTipoDoc], [nombreTipoDoc]) VALUES (10, N'Pasaporte')
GO
INSERT [dbo].[TiposDocumentos] ([codTipoDoc], [nombreTipoDoc]) VALUES (13, N'C.I.')
GO
INSERT [dbo].[TiposDocumentos] ([codTipoDoc], [nombreTipoDoc]) VALUES (16, N'CUIL')
GO
INSERT [dbo].[TiposDocumentos] ([codTipoDoc], [nombreTipoDoc]) VALUES (19, N'CUIT')
GO
SET IDENTITY_INSERT [dbo].[TiposDocumentos] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposDomicilios] ON 
GO
INSERT [dbo].[TiposDomicilios] ([codTipoDom], [nomTipoDom]) VALUES (1, N'Legal')
GO
INSERT [dbo].[TiposDomicilios] ([codTipoDom], [nomTipoDom]) VALUES (4, N'Personal')
GO
INSERT [dbo].[TiposDomicilios] ([codTipoDom], [nomTipoDom]) VALUES (7, N'Fiscal')
GO
INSERT [dbo].[TiposDomicilios] ([codTipoDom], [nomTipoDom]) VALUES (10, N'Comercial')
GO
INSERT [dbo].[TiposDomicilios] ([codTipoDom], [nomTipoDom]) VALUES (13, N'operativo')
GO
SET IDENTITY_INSERT [dbo].[TiposDomicilios] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposEnvios] ON 
GO
INSERT [dbo].[TiposEnvios] ([codTipoEnvio], [nombre], [costo]) VALUES (1, N'Cadete', 350)
GO
INSERT [dbo].[TiposEnvios] ([codTipoEnvio], [nombre], [costo]) VALUES (4, N'Andreani', 800)
GO
INSERT [dbo].[TiposEnvios] ([codTipoEnvio], [nombre], [costo]) VALUES (7, N'Correo Argentino', 600)
GO
INSERT [dbo].[TiposEnvios] ([codTipoEnvio], [nombre], [costo]) VALUES (10, N'Retiro en local', 0)
GO
SET IDENTITY_INSERT [dbo].[TiposEnvios] OFF
GO
ALTER TABLE [dbo].[Barrios]  WITH CHECK ADD  CONSTRAINT [Fk_Localidades] FOREIGN KEY([codLocalidad])
REFERENCES [dbo].[Localidades] ([codLocalidad])
GO
ALTER TABLE [dbo].[Barrios] CHECK CONSTRAINT [Fk_Localidades]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [Fk_Domicilio_Cliente] FOREIGN KEY([codDom])
REFERENCES [dbo].[Domicilios] ([codDom])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [Fk_Domicilio_Cliente]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [Fk_Tipos_Doc] FOREIGN KEY([codTipoDoc])
REFERENCES [dbo].[TiposDocumentos] ([codTipoDoc])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [Fk_Tipos_Doc]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [PK_Generos_Clientes] FOREIGN KEY([codGenero])
REFERENCES [dbo].[Generos] ([codGenero])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [PK_Generos_Clientes]
GO
ALTER TABLE [dbo].[Detalle_Facturas]  WITH CHECK ADD  CONSTRAINT [Fk_Factura] FOREIGN KEY([codFactura])
REFERENCES [dbo].[Facturas] ([codFactura])
GO
ALTER TABLE [dbo].[Detalle_Facturas] CHECK CONSTRAINT [Fk_Factura]
GO
ALTER TABLE [dbo].[Detalle_Facturas]  WITH CHECK ADD  CONSTRAINT [Fk_Producto] FOREIGN KEY([codProd])
REFERENCES [dbo].[Productos] ([codProd])
GO
ALTER TABLE [dbo].[Detalle_Facturas] CHECK CONSTRAINT [Fk_Producto]
GO
ALTER TABLE [dbo].[Domicilios]  WITH CHECK ADD  CONSTRAINT [Fk_Barrios] FOREIGN KEY([codBarrio])
REFERENCES [dbo].[Barrios] ([codBarrio])
GO
ALTER TABLE [dbo].[Domicilios] CHECK CONSTRAINT [Fk_Barrios]
GO
ALTER TABLE [dbo].[Domicilios]  WITH CHECK ADD  CONSTRAINT [Fk_Tipo_Dom] FOREIGN KEY([codTipoDom])
REFERENCES [dbo].[TiposDomicilios] ([codTipoDom])
GO
ALTER TABLE [dbo].[Domicilios] CHECK CONSTRAINT [Fk_Tipo_Dom]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [Fk_Domicilio] FOREIGN KEY([codDom])
REFERENCES [dbo].[Domicilios] ([codDom])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [Fk_Domicilio]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [Fk_Generos_Empleados] FOREIGN KEY([codGenero])
REFERENCES [dbo].[Generos] ([codGenero])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [Fk_Generos_Empleados]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [Fk_Puesto] FOREIGN KEY([codPuesto])
REFERENCES [dbo].[Puestos] ([codPuesto])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [Fk_Puesto]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [Fk_Tipo_Doc] FOREIGN KEY([codTipoDoc])
REFERENCES [dbo].[TiposDocumentos] ([codTipoDoc])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [Fk_Tipo_Doc]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [Fk_Canal_Atencion] FOREIGN KEY([codCanalAtencion])
REFERENCES [dbo].[CanalesAtencion] ([codCanalAtencion])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [Fk_Canal_Atencion]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [Fk_Cliente] FOREIGN KEY([codCliente])
REFERENCES [dbo].[Clientes] ([codCliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [Fk_Cliente]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [Fk_Empleado_Factura_Pedido] FOREIGN KEY([legajoFacturador])
REFERENCES [dbo].[Empleados] ([legajo])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [Fk_Empleado_Factura_Pedido]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [Fk_Tipo_Envio] FOREIGN KEY([codTipoEnvio])
REFERENCES [dbo].[TiposEnvios] ([codTipoEnvio])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [Fk_Tipo_Envio]
GO
ALTER TABLE [dbo].[FacturasFormasPagos]  WITH CHECK ADD  CONSTRAINT [Fk_Factura_Fomra_Pago] FOREIGN KEY([codFactura])
REFERENCES [dbo].[Facturas] ([codFactura])
GO
ALTER TABLE [dbo].[FacturasFormasPagos] CHECK CONSTRAINT [Fk_Factura_Fomra_Pago]
GO
ALTER TABLE [dbo].[FacturasFormasPagos]  WITH CHECK ADD  CONSTRAINT [Fk_Forma_Pago] FOREIGN KEY([codFormaPago])
REFERENCES [dbo].[FormasPagos] ([codFormaPago])
GO
ALTER TABLE [dbo].[FacturasFormasPagos] CHECK CONSTRAINT [Fk_Forma_Pago]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [Fk_Provincias] FOREIGN KEY([codProvincia])
REFERENCES [dbo].[Provincias] ([codProvincia])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [Fk_Provincias]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [Fk_Formato] FOREIGN KEY([codFormato])
REFERENCES [dbo].[Formatos] ([codFormato])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [Fk_Formato]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [Fk_Materiales] FOREIGN KEY([codMaterial])
REFERENCES [dbo].[Materiales] ([codMaterial])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [Fk_Materiales]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [Fk_Productos_Colores] FOREIGN KEY([codColor])
REFERENCES [dbo].[Colores] ([codColor])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [Fk_Productos_Colores]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [Fk_Productos_Tipo_Producto] FOREIGN KEY([codTipoProd])
REFERENCES [dbo].[TiposDeProductos] ([codTipoProd])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [Fk_Productos_Tipo_Producto]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [Fk_Cod_Domicilio_Prov] FOREIGN KEY([codDom])
REFERENCES [dbo].[Domicilios] ([codDom])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [Fk_Cod_Domicilio_Prov]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [Fk_Tipo_Documento_PRov] FOREIGN KEY([codTipoDoc])
REFERENCES [dbo].[TiposDocumentos] ([codTipoDoc])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [Fk_Tipo_Documento_PRov]
GO
ALTER TABLE [dbo].[Proveedores_Materiales]  WITH CHECK ADD  CONSTRAINT [Fk_Materiales_Proveedores] FOREIGN KEY([codMaterial])
REFERENCES [dbo].[Materiales] ([codMaterial])
GO
ALTER TABLE [dbo].[Proveedores_Materiales] CHECK CONSTRAINT [Fk_Materiales_Proveedores]
GO
ALTER TABLE [dbo].[Proveedores_Materiales]  WITH CHECK ADD  CONSTRAINT [Fk_Provedores_Materiales] FOREIGN KEY([codProv])
REFERENCES [dbo].[Proveedores] ([codProv])
GO
ALTER TABLE [dbo].[Proveedores_Materiales] CHECK CONSTRAINT [Fk_Provedores_Materiales]
GO
USE [master]
GO
ALTER DATABASE [Imprenta_Laser] SET  READ_WRITE 
GO
