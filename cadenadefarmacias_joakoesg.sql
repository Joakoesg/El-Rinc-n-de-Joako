USE [master]
GO
/****** Object:  Database [CadenaDeFarmacias]    Script Date: 9/09/2022 11:51:37 ******/
CREATE DATABASE [CadenaDeFarmacias]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CadenaDeFarmacias', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CadenaDeFarmacias.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CadenaDeFarmacias_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CadenaDeFarmacias_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CadenaDeFarmacias] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CadenaDeFarmacias].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CadenaDeFarmacias] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET ARITHABORT OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CadenaDeFarmacias] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CadenaDeFarmacias] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CadenaDeFarmacias] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CadenaDeFarmacias] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET RECOVERY FULL 
GO
ALTER DATABASE [CadenaDeFarmacias] SET  MULTI_USER 
GO
ALTER DATABASE [CadenaDeFarmacias] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CadenaDeFarmacias] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CadenaDeFarmacias] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CadenaDeFarmacias] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CadenaDeFarmacias] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CadenaDeFarmacias] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CadenaDeFarmacias', N'ON'
GO
ALTER DATABASE [CadenaDeFarmacias] SET QUERY_STORE = OFF
GO
USE [CadenaDeFarmacias]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 9/09/2022 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IDCompra] [int] IDENTITY(1,1) NOT NULL,
	[NomCliente] [varchar](255) NULL,
	[Telef] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farmacia]    Script Date: 9/09/2022 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farmacia](
	[IDFarmacia] [varchar](255) NOT NULL,
	[Antiguedad] [varchar](255) NULL,
	[Relaciones] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFarmacia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ganancias]    Script Date: 9/09/2022 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ganancias](
	[TipoDeDinero] [varchar](255) NOT NULL,
	[GananciaBruta] [varchar](255) NULL,
	[GananciaNeta] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoDeDinero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 9/09/2022 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[IDProducto] [varchar](255) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Categoría] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publicidad]    Script Date: 9/09/2022 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicidad](
	[Públicodirigido] [varchar](255) NOT NULL,
	[PublicidadFisica] [varchar](255) NULL,
	[PublicidadVirtual] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Públicodirigido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IDCompra], [NomCliente], [Telef]) VALUES (1, N'juaan', N'43253')
INSERT [dbo].[Cliente] ([IDCompra], [NomCliente], [Telef]) VALUES (2, N'pep', N'4636356')
INSERT [dbo].[Cliente] ([IDCompra], [NomCliente], [Telef]) VALUES (3, N'pedro', N'36753546')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
INSERT [dbo].[Farmacia] ([IDFarmacia], [Antiguedad], [Relaciones]) VALUES (N'INKAFARMA', N'40 AÑOS', N'internacionales')
INSERT [dbo].[Farmacia] ([IDFarmacia], [Antiguedad], [Relaciones]) VALUES (N'MIFARMA', N'100 AÑOS', N'EXTRANJERas')
INSERT [dbo].[Farmacia] ([IDFarmacia], [Antiguedad], [Relaciones]) VALUES (N'TUFARMA', N'30 AÑIOS', N'klocales')
GO
INSERT [dbo].[Ganancias] ([TipoDeDinero], [GananciaBruta], [GananciaNeta]) VALUES (N'dolares', N'1000', N'800')
INSERT [dbo].[Ganancias] ([TipoDeDinero], [GananciaBruta], [GananciaNeta]) VALUES (N'euros', N'700', N'400')
INSERT [dbo].[Ganancias] ([TipoDeDinero], [GananciaBruta], [GananciaNeta]) VALUES (N'soles', N'800', N'600')
GO
INSERT [dbo].[Inventario] ([IDProducto], [Nombre], [Categoría]) VALUES (N'AC367', N'pañales', N'bebes')
INSERT [dbo].[Inventario] ([IDProducto], [Nombre], [Categoría]) VALUES (N'HF546', N'paracetamol', N'pastillas')
INSERT [dbo].[Inventario] ([IDProducto], [Nombre], [Categoría]) VALUES (N'SF456', N'jabon', N'higiene')
GO
INSERT [dbo].[Publicidad] ([Públicodirigido], [PublicidadFisica], [PublicidadVirtual]) VALUES (N'abuelos', N'pancartas de ensure adavnace ', N'comerciales de ensurre advance')
INSERT [dbo].[Publicidad] ([Públicodirigido], [PublicidadFisica], [PublicidadVirtual]) VALUES (N'niños', N'pancartas de cepillos ', N'comerciales de pasta dental para niños')
INSERT [dbo].[Publicidad] ([Públicodirigido], [PublicidadFisica], [PublicidadVirtual]) VALUES (N'padres', N'pancartas de productos para hijos ', N'comerciales de familias felices')
GO
USE [master]
GO
ALTER DATABASE [CadenaDeFarmacias] SET  READ_WRITE 
GO
