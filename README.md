# WebApiToDoList
Proyecto WebApiToDoList 
- Para configurar otra cadena de conexion se debe ir appsettings.json donde encontrara la propiedad "ConnectionStrings" con nombre ConexionDB y podra remplazar la cadena de conexion.

- Para la creacion de la base de datos relaciono el script que se debe ejecutar.

USE [PruebaTecnica]
GO
/****** Object:  Table [dbo].[ListaTarea]    Script Date: 8/08/2022 12:27:27 a. m. ******/
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
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (9, N'Doblar y guardar la ropa limpia', N'Laura Aldana', N'Asignada', CAST(N'2022-08-07T00:00:00' AS SmallDateTime), CAST(N'2022-08-07T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (14, N'Pasar la aspiradora, barrer, quitar el polvo', N'Jeronimo Meza', N'En Proceso', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-08T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (16, N'Poner la mesa', N'Roger Meza', N'Pendiente', CAST(N'2022-08-24T00:00:00' AS SmallDateTime), CAST(N'2022-08-24T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (17, N'Recoger la mesa', N'Jeronimo Meza', N'En Proceso', CAST(N'2022-08-30T00:00:00' AS SmallDateTime), CAST(N'2022-08-31T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (18, N'Lavar y guardar los platos', N'Roger Meza', N'En Proceso', CAST(N'2022-08-15T00:00:00' AS SmallDateTime), CAST(N'2022-08-30T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (19, N'Trapear los pisos', N'Laura Aldana', N'Completada', CAST(N'2022-08-24T00:00:00' AS SmallDateTime), CAST(N'2022-08-31T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (20, N'Limpiar el lavabo', N'Laura Aldana', N'En Proceso', CAST(N'2022-08-22T00:00:00' AS SmallDateTime), CAST(N'2022-08-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (21, N'Hacer el jardín', N'Jeronimo Meza', N'Pendiente', CAST(N'2022-08-22T00:00:00' AS SmallDateTime), CAST(N'2022-09-08T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (22, N'Lavar el auto familiar', N'Laura Aldana', N'En Proceso', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-16T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (23, N' limpiar las jaulas de las aves', N'Jeronimo Meza', N'Completada', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-23T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (24, N'sacar a caminar a las mascotas', N'Roger Meza', N'Asiganada', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-15T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (29, N'Limpiar los areneros', N'Jeronimo Meza', N'Asignada', CAST(N'2022-08-07T00:00:00' AS SmallDateTime), CAST(N'2022-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (30, N'Quitar el polvo', N'Jeronimo Meza', N'Asignada', CAST(N'2022-08-01T00:00:00' AS SmallDateTime), CAST(N'2022-08-30T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[ListaTarea] ([ID], [TituloTarea], [Responsable], [Estado], [FechaInicial], [FechaFinal]) VALUES (31, N'Lavar la moto', N'Roger Meza', N'Completada', CAST(N'2022-08-08T00:00:00' AS SmallDateTime), CAST(N'2022-08-30T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[ListaTarea] OFF
GO

