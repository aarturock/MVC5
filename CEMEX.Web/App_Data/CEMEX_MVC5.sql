USE [CEMEX_MVC5]
GO
/****** Object:  Table [dbo].[Moviles]    Script Date: 16/11/2016 20:41:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Moviles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VersionSistemaOperativo] [varchar](50) NOT NULL,
	[NumeroTelefono] [varchar](50) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[NumeroSerie] [varchar](50) NOT NULL,
	[IMEI] [varchar](50) NOT NULL,
	[Estatus] [int] NOT NULL,
 CONSTRAINT [PK_Moviles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 16/11/2016 20:41:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[Fecha_Creada] [datetime] NOT NULL,
	[Fecha_Modificada] [datetime] NOT NULL,
 CONSTRAINT [PK__Roles__3214EC07C1B43A72] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Moviles] ON 

INSERT [dbo].[Moviles] ([Id], [VersionSistemaOperativo], [NumeroTelefono], [Marca], [Modelo], [NumeroSerie], [IMEI], [Estatus]) VALUES (1, N'4.0.1', N'39489394389889', N'Samsumg', N'Edge 7', N'8439843989', N'9483998483949384', 1)
INSERT [dbo].[Moviles] ([Id], [VersionSistemaOperativo], [NumeroTelefono], [Marca], [Modelo], [NumeroSerie], [IMEI], [Estatus]) VALUES (2, N'5.0.1', N'848394399943', N'Sony', N'Xperia T2 Ultra', N'8439843989', N'9843894394893', 1)
INSERT [dbo].[Moviles] ([Id], [VersionSistemaOperativo], [NumeroTelefono], [Marca], [Modelo], [NumeroSerie], [IMEI], [Estatus]) VALUES (3, N'54.3.39848', N'7877887788', N'Samsumg', N'Xperia T2 Ultra', N'98439483898', N'788777887787878', 1)
SET IDENTITY_INSERT [dbo].[Moviles] OFF
/****** Object:  StoredProcedure [dbo].[MovilesPorEstatus]    Script Date: 16/11/2016 20:41:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Arturo López Vásquez
-- Create date: 
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MovilesPorEstatus]
	@Estatus int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
		Id,
		VersionSistemaOperativo,
		NumeroTelefono,
		Marca,
		Modelo,
		NumeroSerie,
		IMEI,
		Estatus
	FROM 
		Moviles
	WHERE 
		(Estatus = @Estatus OR @Estatus = 0)
END

GO
/****** Object:  StoredProcedure [dbo].[MovilInsertar]    Script Date: 16/11/2016 20:41:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MovilInsertar] 
	@VersionSistemaOperativo VARCHAR(50),
	@NumeroTelefono VARCHAR(50),
	@Marca VARCHAR(50),
	@Modelo VARCHAR(50),
	@NumeroSerie VARCHAR(50),
	@IMEI VARCHAR(50),
	@Estatus INT

AS
BEGIN

	SET NOCOUNT ON;
		

		INSERT INTO 
		Moviles 
		(VersionSistemaOperativo,
		NumeroTelefono,
		Marca,
		Modelo,
		NumeroSerie,
		IMEI,
		Estatus)
	VALUES
		(@VersionSistemaOperativo,
		@NumeroTelefono,
		@Marca,
		@Modelo,
		@NumeroSerie,
		@IMEI,
		@Estatus)
END

GO
/****** Object:  StoredProcedure [dbo].[MovilModificar]    Script Date: 16/11/2016 20:41:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MovilModificar]
	@IdMovil INT,
	@VersionSistemaOperativo VARCHAR(50),
	@NumeroTelefono VARCHAR(50),
	@Marca VARCHAR(50),
	@Modelo VARCHAR(50),
	@NumeroSerie VARCHAR(50),
	@IMEI VARCHAR(50),
	@Estatus INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE Moviles 
	SET 
		VersionSistemaOperativo = @VersionSistemaOperativo,
		NumeroTelefono = @NumeroTelefono,
		Marca = @Marca,
		Modelo = @Modelo,
		NumeroSerie = @NumeroSerie,
		IMEI = @IMEI,
		Estatus = @Estatus
	WHERE 
		Id = @IdMovil
END

GO
/****** Object:  StoredProcedure [dbo].[MovilporId]    Script Date: 16/11/2016 20:41:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MovilporId]
	@IdMovil INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
		Id,
		VersionSistemaOperativo,
		NumeroTelefono,
		Marca,
		Modelo,
		NumeroSerie,
		IMEI,
		Estatus
	FROM Moviles WHERE Id = @IdMovil
END

GO
/****** Object:  StoredProcedure [dbo].[MovilValidarsiExiste]    Script Date: 16/11/2016 20:41:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MovilValidarsiExiste]
	@NumeroTelefono VARCHAR(50),
	@NumeroSerie VARCHAR(50),
	@IMEI VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @NoNumeroTelefono INT = 0, 
			@NoNumeroSerie INT = 0,
			@NoIMEI INT = 0

	SELECT @NoNumeroTelefono = COUNT(*) FROM Moviles WHERE RTRIM(LTRIM(NumeroTelefono)) = @NumeroTelefono
	SELECT @NoNumeroSerie = COUNT(*) FROM Moviles WHERE RTRIM(LTRIM(NumeroSerie)) = @NumeroSerie
	SELECT @NoIMEI = COUNT(*)  FROM Moviles WHERE RTRIM(LTRIM(IMEI)) = @IMEI

	--IF @NumeroTelefono > 0 OR @NoNumeroSerie > 0 OR @NoIMEI > 0
	--BEGIN 
		SELECT @NoNumeroTelefono , @NoNumeroSerie, @NoIMEI
	--END
	--ELSE 
	--BEGIN 
	--	SELECT 
	--END
	


END

GO
