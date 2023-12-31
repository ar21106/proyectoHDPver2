USE [Planilla]
GO
/****** Object:  Table [dbo].[Descuentos]    Script Date: 12/06/2023 18:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuentos](
	[idRetenciones] [int] NOT NULL,
	[idEmpleado] [int] NULL,
	[renta] [money] NULL,
	[isss] [money] NULL,
	[afp] [money] NULL,
	[otros] [money] NULL,
	[Periodo] [datetime] NULL,
 CONSTRAINT [pk_idRetenciones] PRIMARY KEY CLUSTERED 
(
	[idRetenciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 12/06/2023 18:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](150) NOT NULL,
	[cargo] [varchar](100) NOT NULL,
	[fechaIngreso] [datetime] NOT NULL,
	[salario] [money] NULL,
	[email] [varchar](100) NULL,
	[pais] [int] NULL,
	[logo] [varchar](150) NULL,
 CONSTRAINT [pk_idEmpleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pais]    Script Date: 12/06/2023 18:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pais](
	[idPais] [int] NOT NULL,
	[nomPais] [varchar](50) NULL,
 CONSTRAINT [pk_idPais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (1, 16, 750.0000, 360.0000, 225.0000, 425.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (2, 20, 750.0000, 360.0000, 225.0000, 320.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (3, 21, 750.0000, 360.0000, 225.0000, 40.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (4, 22, 750.0000, 360.0000, 225.0000, 125.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (5, 23, 750.0000, 360.0000, 225.0000, 854.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (6, 24, 750.0000, 360.0000, 225.0000, 13.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (7, 25, 750.0000, 360.0000, 225.0000, 321.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (8, 26, 750.0000, 360.0000, 225.0000, 452.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (9, 27, 2000.0000, 360.0000, 600.0000, 21.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Descuentos] ([idRetenciones], [idEmpleado], [renta], [isss], [afp], [otros], [Periodo]) VALUES (10, 28, 3750.0000, 360.0000, 1125.0000, 1456.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (16, N'Nancy Davolio', N'Vendedor', CAST(N'2019-01-01T12:34:56.000' AS DateTime), 3000.0000, N'nancy@gmail.com', 1, N'C:\Users\Inese\Downloads\Banderas\salvador.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (20, N'Andrew	Fuller', N'Vendedor', CAST(N'2020-01-01T12:34:56.000' AS DateTime), 3000.0000, N'Andrew@gmail.com', 1, N'C:\Users\Inese\Downloads\Banderas\panama.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (21, N'Janet Leverling', N'Vendedor', CAST(N'2018-01-01T12:34:56.000' AS DateTime), 3000.0000, N'janet@gmail.com', 1, N'C:\Users\Inese\Downloads\Banderas\salvador.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (22, N'Margaret Peacoockr', N'Vendedor', CAST(N'2019-01-01T12:34:56.000' AS DateTime), 3000.0000, N'mar@gmail.com', 3, N'C:\Users\Inese\Downloads\Banderas\peru.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (23, N'Steven Buchanan', N'Vendedor', CAST(N'2021-01-01T12:34:56.000' AS DateTime), 3000.0000, N'steven@gmail.com', 3, N'C:\Users\Inese\Downloads\Banderas\peru.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (24, N'Michael Suyama', N'Vendedor', CAST(N'2019-01-01T12:34:56.000' AS DateTime), 3000.0000, N'michael@gmail.com', 2, N'C:\Users\Inese\Downloads\Banderas\panama.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (25, N'Robert King', N'Vendedor', CAST(N'2018-01-01T12:34:56.000' AS DateTime), 3000.0000, N'robert@gmail.com', 1, N'C:\Users\Inese\Downloads\Banderas\salvdor.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (26, N'Laura Callahan', N'Vendedor', CAST(N'2021-01-01T12:34:56.000' AS DateTime), 3000.0000, N'Andrew@gmail.com', 2, N'C:\Users\Inese\Downloads\Banderas\panama.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (27, N'Anne Dodsworth', N'Coordinador de ventas', CAST(N'2017-01-01T12:34:56.000' AS DateTime), 8000.0000, N'anne@gmail.com', 1, N'C:\Users\Inese\Downloads\Banderas\salvador.png')
INSERT [dbo].[Empleados] ([idEmpleado], [nombres], [cargo], [fechaIngreso], [salario], [email], [pais], [logo]) VALUES (28, N'Katy Holmes', N'Gerente de ventas', CAST(N'2017-01-01T12:34:56.000' AS DateTime), 15000.0000, N'katy@gmail.com', 1, N'C:\Users\Inese\Downloads\Banderas\salvador.png')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
INSERT [dbo].[pais] ([idPais], [nomPais]) VALUES (1, N'El Salvador')
INSERT [dbo].[pais] ([idPais], [nomPais]) VALUES (2, N'Panama')
INSERT [dbo].[pais] ([idPais], [nomPais]) VALUES (3, N'Peru')
GO
ALTER TABLE [dbo].[Descuentos] ADD  DEFAULT (getdate()) FOR [Periodo]
GO
ALTER TABLE [dbo].[Descuentos]  WITH CHECK ADD  CONSTRAINT [fk_idRetEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[Descuentos] CHECK CONSTRAINT [fk_idRetEmpleado]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [fk_paisResidencia] FOREIGN KEY([pais])
REFERENCES [dbo].[pais] ([idPais])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [fk_paisResidencia]
GO
/****** Object:  StoredProcedure [dbo].[sp_editar]    Script Date: 12/06/2023 18:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_editar](
@idEmpleado int,
@nombres varchar(150),@cargo varchar(100), @fechaIngreso varchar (100),@salario decimal(10,2),@email varchar(100), @pais int,  @logo varchar (150)
)
as
begin
update Empleados set nombres=@nombres,cargo=@cargo,fechaIngreso=@fechaIngreso,salario=@salario,email=@email, pais=@pais,logo=@logo where idEmpleado=@idEmpleado
end
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar]    Script Date: 12/06/2023 18:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eliminar](
@idEmpleado int
)
as
begin
delete from Empleados where idEmpleado=@idEmpleado
end
GO
/****** Object:  StoredProcedure [dbo].[sp_registrar]    Script Date: 12/06/2023 18:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_registrar](
@nombres varchar(150),@cargo varchar(100), @fechaIngreso varchar (100),@salario decimal(10,2),@email varchar(100), @pais int,  @logo varchar (150)
)
as
begin
insert into Empleados (nombres,cargo,fechaIngreso,salario,email,pais,logo)
values (@nombres,@cargo, @fechaIngreso,@salario,@email, @pais,@logo)
end
GO
