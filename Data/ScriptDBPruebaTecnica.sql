USE [master]
GO
/****** Object:  Database [PruebaTecnica]    Script Date: 8/08/2022 1:49:37 a. m. ******/
CREATE DATABASE [PruebaTecnica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaTecnica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaTecnica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaTecnica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaTecnica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PruebaTecnica] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaTecnica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaTecnica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaTecnica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaTecnica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaTecnica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaTecnica] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaTecnica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PruebaTecnica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaTecnica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaTecnica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaTecnica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaTecnica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaTecnica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaTecnica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaTecnica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaTecnica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PruebaTecnica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaTecnica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaTecnica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaTecnica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaTecnica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaTecnica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PruebaTecnica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaTecnica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PruebaTecnica] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaTecnica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaTecnica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaTecnica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaTecnica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PruebaTecnica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PruebaTecnica] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PruebaTecnica] SET QUERY_STORE = OFF
GO
USE [PruebaTecnica]
GO
/****** Object:  Table [dbo].[ListaTarea]    Script Date: 8/08/2022 1:49:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaTarea](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TituloTarea] [varchar](50) NOT NULL,
	[Responsable] [varchar](150) NULL,
	[Estado] [varchar](20) NULL,
	[FechaInicial] [smalldatetime] NOT NULL,
	[FechaFinal] [smalldatetime] NULL,
 CONSTRAINT [PK_ListaTarea] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ListaTarea] ON 
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (1, N'Lavar la ropa', N'Roger Meza', N'Asignada', CAST(N'2022-08-14T00:00:00' AS SmallDateTime), CAST(N'2022-08-24T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (2, N'Doblar y guardar la ropa limpia', N'Laura Aldana', N'Asignada', CAST(N'2022-08-07T00:00:00' AS SmallDateTime), CAST(N'2022-08-07T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (3, N'Pasar la aspiradora, barrer, quitar el polvo', N'Jeronimo Meza', N'En Proceso', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-08T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (4, N'Poner la mesa', N'Roger Meza', N'Pendiente', CAST(N'2022-08-24T00:00:00' AS SmallDateTime), CAST(N'2022-08-24T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (5, N'Recoger la mesa', N'Jeronimo Meza', N'En Proceso', CAST(N'2022-08-30T00:00:00' AS SmallDateTime), CAST(N'2022-08-31T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (6, N'Lavar y guardar los platos', N'Roger Meza', N'En Proceso', CAST(N'2022-08-15T00:00:00' AS SmallDateTime), CAST(N'2022-08-30T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (7, N'Trapear los pisos', N'Laura Aldana', N'Completada', CAST(N'2022-08-24T00:00:00' AS SmallDateTime), CAST(N'2022-08-31T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (8, N'Limpiar el lavabo', N'Laura Aldana', N'En Proceso', CAST(N'2022-08-22T00:00:00' AS SmallDateTime), CAST(N'2022-08-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (9, N'Hacer el jardín', N'Jeronimo Meza', N'Pendiente', CAST(N'2022-08-22T00:00:00' AS SmallDateTime), CAST(N'2022-09-08T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (10, N'Lavar el auto familiar', N'Laura Aldana', N'En Proceso', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-16T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (11, N' limpiar las jaulas de las aves', N'Jeronimo Meza', N'Completada', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-23T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (12, N'sacar a caminar a las mascotas', N'Roger Meza', N'Asiganada', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-15T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (13, N'Limpiar los areneros', N'Jeronimo Meza', N'Asignada', CAST(N'2022-08-07T00:00:00' AS SmallDateTime), CAST(N'2022-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (14, N'Quitar el polvo', N'Jeronimo Meza', N'Asignada', CAST(N'2022-08-01T00:00:00' AS SmallDateTime), CAST(N'2022-08-30T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (15, N'Lavar la moto', N'Roger Meza', N'Completada', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-30T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[ListaTarea] OFF
GO
USE [master]
GO
ALTER DATABASE [PruebaTecnica] SET  READ_WRITE 
GO
