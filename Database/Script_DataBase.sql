USE [master]
GO
/****** Object:  Database [SER]    Script Date: 01/02/2022 12:14:39 p. m. ******/
CREATE DATABASE [SER]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SER', FILENAME = N'/var/opt/mssql/data/SER.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SER_log', FILENAME = N'/var/opt/mssql/data/SER_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SER] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SER].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SER] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SER] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SER] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SER] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SER] SET ARITHABORT OFF 
GO
ALTER DATABASE [SER] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SER] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SER] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SER] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SER] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SER] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SER] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SER] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SER] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SER] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SER] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SER] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SER] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SER] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SER] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SER] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SER] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SER] SET RECOVERY FULL 
GO
ALTER DATABASE [SER] SET  MULTI_USER 
GO
ALTER DATABASE [SER] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SER] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SER] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SER] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SER] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SER', N'ON'
GO
ALTER DATABASE [SER] SET QUERY_STORE = OFF
GO
USE [SER]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 01/02/2022 12:14:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[CorreoElectronico] [varchar](100) NULL,
	[Matricula] [varchar](15) NOT NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlumnoTrabajoRecepcional]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlumnoTrabajoRecepcional](
	[AlumnoID] [varchar](15) NOT NULL,
	[TrabajoRecepcionalID] [int] NOT NULL,
 CONSTRAINT [PK_AlumnoTrabajoRecepcional] PRIMARY KEY CLUSTERED 
(
	[AlumnoID] ASC,
	[TrabajoRecepcionalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlumnoExperienciaEducativa]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlumnoExperienciaEducativa](
	[AlumnoID] [varchar](15) NOT NULL,
	[ExperienciaEducativaID] [int] NOT NULL,
 CONSTRAINT [PK_AlumnoExperienciaEducativa] PRIMARY KEY CLUSTERED 
(
	[AlumnoID] ASC,
	[ExperienciaEducativaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExperienciaEducativa]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExperienciaEducativa](
	[EstadoAbierto] [int] NULL,
	[Nombre] [varchar](200) NULL,
	[Nrc] [varchar](20) NULL,
	[Periodo] [varchar](100) NULL,
	[Seccion] [varchar](20) NULL,
	[ExperienciaEducativaID] [int] IDENTITY(1,1) NOT NULL,
	[ProfesorID] [int] NULL,
 CONSTRAINT [PK_ExperienciaEducativa] PRIMARY KEY CLUSTERED 
(
	[ExperienciaEducativaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrabajoRecepcional]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrabajoRecepcional](
	[TrabajoRecepcionalID] [int] IDENTITY(1,1) NOT NULL,
	[Anteproyecto] [varbinary](max) NULL,
	[Estado] [varchar](100) NULL,
	[Fechadeinicio] [date] NULL,
	[LineaDeInvestigacion] [varchar](max) NULL,
	[Modalidad] [varchar](100) NULL,
	[Nombre] [varchar](200) NULL,
	[AcademiaID] [int] NULL,
	[PladeafeiID] [int] NULL,
	[ProyectoDeInvestigacionID] [int] NULL,
	[VinculacionID] [int] NULL,
 CONSTRAINT [PK_TrabajoRecepcional] PRIMARY KEY CLUSTERED 
(
	[TrabajoRecepcionalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[AlumnoTrabajoRecepcionalProyectoGuiadoView]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AlumnoTrabajoRecepcionalProyectoGuiadoView]
AS
SELECT dbo.Alumno.CorreoElectronico, dbo.Alumno.Matricula, dbo.Alumno.Nombre, dbo.TrabajoRecepcional.Estado, dbo.TrabajoRecepcional.Fechadeinicio, dbo.TrabajoRecepcional.Modalidad, 
                  dbo.ExperienciaEducativa.Nombre AS ExperienciaEducativa, dbo.ExperienciaEducativa.ExperienciaEducativaID, dbo.TrabajoRecepcional.TrabajoRecepcionalID
FROM     dbo.Alumno INNER JOIN
                  dbo.AlumnoTrabajoRecepcional ON dbo.Alumno.Matricula = dbo.AlumnoTrabajoRecepcional.AlumnoID INNER JOIN
                  dbo.TrabajoRecepcional ON dbo.AlumnoTrabajoRecepcional.TrabajoRecepcionalID = dbo.TrabajoRecepcional.TrabajoRecepcionalID INNER JOIN
                  dbo.AlumnoExperienciaEducativa ON dbo.Alumno.Matricula = dbo.AlumnoExperienciaEducativa.AlumnoID INNER JOIN
                  dbo.ExperienciaEducativa ON dbo.AlumnoExperienciaEducativa.ExperienciaEducativaID = dbo.ExperienciaEducativa.ExperienciaEducativaID
WHERE  (dbo.ExperienciaEducativa.Nombre = 'Proyecto Guiado')
GO
/****** Object:  Table [dbo].[Academia]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academia](
	[AcademiaID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_Academia] PRIMARY KEY CLUSTERED 
(
	[AcademiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuerpoAcademico]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuerpoAcademico](
	[Nombre] [varchar](200) NULL,
	[Objetivogeneral] [varchar](max) NULL,
	[CuerpoAcademicoID] [int] IDENTITY(1,1) NOT NULL,
	[AcademiaID] [int] NOT NULL,
 CONSTRAINT [PK_CuerpoacAdemico] PRIMARY KEY CLUSTERED 
(
	[CuerpoAcademicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuerpoAcademicoIntegrante]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuerpoAcademicoIntegrante](
	[CuerpoAcademicoID] [int] NOT NULL,
	[IntegranteID] [int] NOT NULL,
 CONSTRAINT [PK_CuerpoAcademicoIntegrante] PRIMARY KEY CLUSTERED 
(
	[CuerpoAcademicoID] ASC,
	[IntegranteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[FechaInicio] [date] NULL,
	[Tipo] [varchar](100) NULL,
	[DireccionID] [int] IDENTITY(1,1) NOT NULL,
	[ExperienciaEducativaID] [int] NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[DireccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DireccionIntegrante]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DireccionIntegrante](
	[DireccionID] [int] NOT NULL,
	[IntegranteID] [int] NOT NULL,
 CONSTRAINT [PK_DireccionIntegrante] PRIMARY KEY CLUSTERED 
(
	[DireccionID] ASC,
	[IntegranteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DireccionSinodalDelTrabajo]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DireccionSinodalDelTrabajo](
	[DireccionID] [int] NOT NULL,
	[SinodalDelTrabajoID] [int] NOT NULL,
 CONSTRAINT [PK_DireccionSinodalDeTrabajo] PRIMARY KEY CLUSTERED 
(
	[DireccionID] ASC,
	[SinodalDelTrabajoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[Archivo] [varbinary](max) NULL,
	[NombreDocumento] [varchar](200) NULL,
	[DocumentoID] [int] IDENTITY(1,1) NOT NULL,
	[TrabajoRecepcionalID] [int] NULL,
	[Notas] [varchar](max) NULL,
	[ExperienciaEducativaID] [int] NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[DocumentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentoExamenDefensa]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentoExamenDefensa](
	[DocumentoID] [int] NOT NULL,
	[ExamenDefensaID] [int] NOT NULL,
 CONSTRAINT [PK_DocumentoExamenDefensa] PRIMARY KEY CLUSTERED 
(
	[DocumentoID] ASC,
	[ExamenDefensaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamenDefensa]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamenDefensa](
	[FechaAplicacion] [date] NULL,
	[ExamenDefensaID] [int] IDENTITY(1,1) NOT NULL,
	[TrabajoRecepcionalID] [int] NOT NULL,
 CONSTRAINT [PK_ExamenDefensa] PRIMARY KEY CLUSTERED 
(
	[ExamenDefensaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Integrante]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integrante](
	[NumeroDePersonal] [varchar](100) NULL,
	[Tipo] [varchar](100) NULL,
	[IntegranteID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_Integrante] PRIMARY KEY CLUSTERED 
(
	[IntegranteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lgac]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lgac](
	[Descripcion] [varchar](max) NULL,
	[Nombre] [varchar](200) NULL,
	[LgacID] [int] IDENTITY(1,1) NOT NULL,
	[CuerpoAcademicoID] [int] NULL,
 CONSTRAINT [PK_Lgac] PRIMARY KEY CLUSTERED 
(
	[LgacID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pladeafei]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pladeafei](
	[Accion] [varchar](max) NULL,
	[ArchivoPladea] [varbinary](max) NULL,
	[ObjetivoGeneral] [varchar](max) NULL,
	[Periodo] [varchar](100) NULL,
	[PladeafeiID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Pladeafei] PRIMARY KEY CLUSTERED 
(
	[PladeafeiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PladeafeiLgac]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PladeafeiLgac](
	[PladeafeiID] [int] NOT NULL,
	[LgacID] [int] NOT NULL,
 CONSTRAINT [PK_PladeafeiLgac] PRIMARY KEY CLUSTERED 
(
	[PladeafeiID] ASC,
	[LgacID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanDeCurso]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanDeCurso](
	[Archivo] [varbinary](max) NULL,
	[ObjetivoGeneral] [varchar](max) NULL,
	[PlanDeCursoID] [int] IDENTITY(1,1) NOT NULL,
	[ExperienciaEducativaID] [int] NOT NULL,
 CONSTRAINT [PK_PlanDeCurso] PRIMARY KEY CLUSTERED 
(
	[PlanDeCursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanDeTrabajo]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanDeTrabajo](
	[FechaDeAprobacion] [date] NULL,
	[PeriodoEscolar] [varchar](100) NULL,
	[PlanDeTrabajoID] [int] IDENTITY(1,1) NOT NULL,
	[AcademiaID] [int] NULL,
 CONSTRAINT [PK_PlanDeTrabajo] PRIMARY KEY CLUSTERED 
(
	[PlanDeTrabajoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[Nombre] [varchar](200) NULL,
	[NombreUsuario] [varchar](200) NULL,
	[NumeroDePersonal] [varchar](200) NULL,
	[ProfesorID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProyectoDeInvestigacion]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProyectoDeInvestigacion](
	[FechaInicio] [date] NULL,
	[Nombre] [varchar](200) NULL,
	[ProyectoDeInvestigacionID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ProyectoDeInvestigacion] PRIMARY KEY CLUSTERED 
(
	[ProyectoDeInvestigacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProyectoDeInvestigacionLgac]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProyectoDeInvestigacionLgac](
	[ProyectoDeInvestigacionID] [int] NOT NULL,
	[LgacID] [int] NOT NULL,
 CONSTRAINT [PK_ProyectoDeInvestigacionLgac] PRIMARY KEY CLUSTERED 
(
	[ProyectoDeInvestigacionID] ASC,
	[LgacID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinodalDelTrabajo]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinodalDelTrabajo](
	[CorreoElectronico] [varchar](100) NULL,
	[Organizacion] [varchar](200) NULL,
	[Telefono] [varchar](10) NULL,
	[SinodalDelTrabajoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_SinodalDelTrabajo] PRIMARY KEY CLUSTERED 
(
	[SinodalDelTrabajoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrabajoRecepcionalIntegrante]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrabajoRecepcionalIntegrante](
	[IntegranteID] [int] NOT NULL,
	[TrabajoRecepcionalID] [int] NOT NULL,
 CONSTRAINT [PK_TrabajoRecepcionalIntegrante] PRIMARY KEY CLUSTERED 
(
	[IntegranteID] ASC,
	[TrabajoRecepcionalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrabajoRecepcionalSinodalDelTrabajo]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrabajoRecepcionalSinodalDelTrabajo](
	[SinodalDelTrabajoID] [int] NOT NULL,
	[TrabajoRecepcionalID] [int] NOT NULL,
 CONSTRAINT [PK_TrabajoRecepcionalSinodalDelTrabajo] PRIMARY KEY CLUSTERED 
(
	[SinodalDelTrabajoID] ASC,
	[TrabajoRecepcionalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vinculacion]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vinculacion](
	[CopiaConvenio] [varbinary](max) NULL,
	[FechaDeInicioDeConvenio] [date] NULL,
	[OrganizacionVinculada] [varchar](200) NULL,
	[VinculacionID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Vinculacion] PRIMARY KEY CLUSTERED 
(
	[VinculacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VinculacionLgac]    Script Date: 01/02/2022 12:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VinculacionLgac](
	[VinculacionID] [int] NOT NULL,
	[LgacID] [int] NOT NULL,
 CONSTRAINT [PK_VinculacionLgac] PRIMARY KEY CLUSTERED 
(
	[VinculacionID] ASC,
	[LgacID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AlumnoExperienciaEducativa]  WITH CHECK ADD  CONSTRAINT [FK_AlumnoExperienciaEducativa_Alumno] FOREIGN KEY([AlumnoID])
REFERENCES [dbo].[Alumno] ([Matricula])
GO
ALTER TABLE [dbo].[AlumnoExperienciaEducativa] CHECK CONSTRAINT [FK_AlumnoExperienciaEducativa_Alumno]
GO
ALTER TABLE [dbo].[AlumnoExperienciaEducativa]  WITH CHECK ADD  CONSTRAINT [FK_AlumnoExperienciaEducativa_ExperienciaEducativa] FOREIGN KEY([ExperienciaEducativaID])
REFERENCES [dbo].[ExperienciaEducativa] ([ExperienciaEducativaID])
GO
ALTER TABLE [dbo].[AlumnoExperienciaEducativa] CHECK CONSTRAINT [FK_AlumnoExperienciaEducativa_ExperienciaEducativa]
GO
ALTER TABLE [dbo].[AlumnoTrabajoRecepcional]  WITH CHECK ADD  CONSTRAINT [FK_AlumnoTrabajoRecepcional_Alumno] FOREIGN KEY([AlumnoID])
REFERENCES [dbo].[Alumno] ([Matricula])
GO
ALTER TABLE [dbo].[AlumnoTrabajoRecepcional] CHECK CONSTRAINT [FK_AlumnoTrabajoRecepcional_Alumno]
GO
ALTER TABLE [dbo].[AlumnoTrabajoRecepcional]  WITH CHECK ADD  CONSTRAINT [FK_AlumnoTrabajoRecepcional_TrabajoRecepcional] FOREIGN KEY([TrabajoRecepcionalID])
REFERENCES [dbo].[TrabajoRecepcional] ([TrabajoRecepcionalID])
GO
ALTER TABLE [dbo].[AlumnoTrabajoRecepcional] CHECK CONSTRAINT [FK_AlumnoTrabajoRecepcional_TrabajoRecepcional]
GO
ALTER TABLE [dbo].[CuerpoAcademico]  WITH CHECK ADD  CONSTRAINT [FK_Cuerpoacademico_Academia] FOREIGN KEY([AcademiaID])
REFERENCES [dbo].[Academia] ([AcademiaID])
GO
ALTER TABLE [dbo].[CuerpoAcademico] CHECK CONSTRAINT [FK_Cuerpoacademico_Academia]
GO
ALTER TABLE [dbo].[CuerpoAcademicoIntegrante]  WITH CHECK ADD  CONSTRAINT [FK_CuerpoAcademicoIntegrante_CuerpoAcademico] FOREIGN KEY([CuerpoAcademicoID])
REFERENCES [dbo].[CuerpoAcademico] ([CuerpoAcademicoID])
GO
ALTER TABLE [dbo].[CuerpoAcademicoIntegrante] CHECK CONSTRAINT [FK_CuerpoAcademicoIntegrante_CuerpoAcademico]
GO
ALTER TABLE [dbo].[CuerpoAcademicoIntegrante]  WITH CHECK ADD  CONSTRAINT [FK_CuerpoAcademicoIntegrante_Integrante] FOREIGN KEY([IntegranteID])
REFERENCES [dbo].[Integrante] ([IntegranteID])
GO
ALTER TABLE [dbo].[CuerpoAcademicoIntegrante] CHECK CONSTRAINT [FK_CuerpoAcademicoIntegrante_Integrante]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_ExperienciaEducativa] FOREIGN KEY([ExperienciaEducativaID])
REFERENCES [dbo].[ExperienciaEducativa] ([ExperienciaEducativaID])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_ExperienciaEducativa]
GO
ALTER TABLE [dbo].[DireccionIntegrante]  WITH CHECK ADD  CONSTRAINT [FK_DireccionIntegrante_Direccion] FOREIGN KEY([DireccionID])
REFERENCES [dbo].[Direccion] ([DireccionID])
GO
ALTER TABLE [dbo].[DireccionIntegrante] CHECK CONSTRAINT [FK_DireccionIntegrante_Direccion]
GO
ALTER TABLE [dbo].[DireccionIntegrante]  WITH CHECK ADD  CONSTRAINT [FK_DireccionIntegrante_Integrante] FOREIGN KEY([IntegranteID])
REFERENCES [dbo].[Integrante] ([IntegranteID])
GO
ALTER TABLE [dbo].[DireccionIntegrante] CHECK CONSTRAINT [FK_DireccionIntegrante_Integrante]
GO
ALTER TABLE [dbo].[DireccionSinodalDelTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DireccionSinodalDelTrabajo_Direccion] FOREIGN KEY([DireccionID])
REFERENCES [dbo].[Direccion] ([DireccionID])
GO
ALTER TABLE [dbo].[DireccionSinodalDelTrabajo] CHECK CONSTRAINT [FK_DireccionSinodalDelTrabajo_Direccion]
GO
ALTER TABLE [dbo].[DireccionSinodalDelTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DireccionSinodalDelTrabajo_SinodalDelTrabajo] FOREIGN KEY([SinodalDelTrabajoID])
REFERENCES [dbo].[SinodalDelTrabajo] ([SinodalDelTrabajoID])
GO
ALTER TABLE [dbo].[DireccionSinodalDelTrabajo] CHECK CONSTRAINT [FK_DireccionSinodalDelTrabajo_SinodalDelTrabajo]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_ExperienciaEducativa] FOREIGN KEY([ExperienciaEducativaID])
REFERENCES [dbo].[ExperienciaEducativa] ([ExperienciaEducativaID])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_ExperienciaEducativa]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_TrabajoRecepcional] FOREIGN KEY([TrabajoRecepcionalID])
REFERENCES [dbo].[TrabajoRecepcional] ([TrabajoRecepcionalID])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_TrabajoRecepcional]
GO
ALTER TABLE [dbo].[DocumentoExamenDefensa]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoExamenDefensa_Documento] FOREIGN KEY([DocumentoID])
REFERENCES [dbo].[Documento] ([DocumentoID])
GO
ALTER TABLE [dbo].[DocumentoExamenDefensa] CHECK CONSTRAINT [FK_DocumentoExamenDefensa_Documento]
GO
ALTER TABLE [dbo].[DocumentoExamenDefensa]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoExamenDefensa_ExamenDefensa] FOREIGN KEY([ExamenDefensaID])
REFERENCES [dbo].[ExamenDefensa] ([ExamenDefensaID])
GO
ALTER TABLE [dbo].[DocumentoExamenDefensa] CHECK CONSTRAINT [FK_DocumentoExamenDefensa_ExamenDefensa]
GO
ALTER TABLE [dbo].[ExamenDefensa]  WITH CHECK ADD  CONSTRAINT [FK_ExamenDeDefensa_TrabajoRecepcional] FOREIGN KEY([TrabajoRecepcionalID])
REFERENCES [dbo].[TrabajoRecepcional] ([TrabajoRecepcionalID])
GO
ALTER TABLE [dbo].[ExamenDefensa] CHECK CONSTRAINT [FK_ExamenDeDefensa_TrabajoRecepcional]
GO
ALTER TABLE [dbo].[ExperienciaEducativa]  WITH CHECK ADD  CONSTRAINT [FK_ExperienciaEducativa_Profesor] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Profesor] ([ProfesorID])
GO
ALTER TABLE [dbo].[ExperienciaEducativa] CHECK CONSTRAINT [FK_ExperienciaEducativa_Profesor]
GO
ALTER TABLE [dbo].[PladeafeiLgac]  WITH CHECK ADD  CONSTRAINT [FK_PladeafeiLgac_lgac] FOREIGN KEY([LgacID])
REFERENCES [dbo].[Lgac] ([LgacID])
GO
ALTER TABLE [dbo].[PladeafeiLgac] CHECK CONSTRAINT [FK_PladeafeiLgac_lgac]
GO
ALTER TABLE [dbo].[PladeafeiLgac]  WITH CHECK ADD  CONSTRAINT [FK_PladeafeiLgac_Pladeafei] FOREIGN KEY([PladeafeiID])
REFERENCES [dbo].[Pladeafei] ([PladeafeiID])
GO
ALTER TABLE [dbo].[PladeafeiLgac] CHECK CONSTRAINT [FK_PladeafeiLgac_Pladeafei]
GO
ALTER TABLE [dbo].[PlanDeCurso]  WITH CHECK ADD  CONSTRAINT [FK_PlanDeCurso_ExperienciaEducativa] FOREIGN KEY([ExperienciaEducativaID])
REFERENCES [dbo].[ExperienciaEducativa] ([ExperienciaEducativaID])
GO
ALTER TABLE [dbo].[PlanDeCurso] CHECK CONSTRAINT [FK_PlanDeCurso_ExperienciaEducativa]
GO
ALTER TABLE [dbo].[PlanDeTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_PlanDeTrabajo_Academia] FOREIGN KEY([AcademiaID])
REFERENCES [dbo].[Academia] ([AcademiaID])
GO
ALTER TABLE [dbo].[PlanDeTrabajo] CHECK CONSTRAINT [FK_PlanDeTrabajo_Academia]
GO
ALTER TABLE [dbo].[ProyectoDeInvestigacionLgac]  WITH CHECK ADD  CONSTRAINT [FK_ProyectoDeInvestigacionLgac_Lgac] FOREIGN KEY([LgacID])
REFERENCES [dbo].[Lgac] ([LgacID])
GO
ALTER TABLE [dbo].[ProyectoDeInvestigacionLgac] CHECK CONSTRAINT [FK_ProyectoDeInvestigacionLgac_Lgac]
GO
ALTER TABLE [dbo].[ProyectoDeInvestigacionLgac]  WITH CHECK ADD  CONSTRAINT [FK_ProyectoDeInvestigacionLgac_ProyectoDeInvestigacion] FOREIGN KEY([ProyectoDeInvestigacionID])
REFERENCES [dbo].[ProyectoDeInvestigacion] ([ProyectoDeInvestigacionID])
GO
ALTER TABLE [dbo].[ProyectoDeInvestigacionLgac] CHECK CONSTRAINT [FK_ProyectoDeInvestigacionLgac_ProyectoDeInvestigacion]
GO
ALTER TABLE [dbo].[TrabajoRecepcional]  WITH CHECK ADD  CONSTRAINT [FK_TrabajoRecepcional_Academia] FOREIGN KEY([AcademiaID])
REFERENCES [dbo].[Academia] ([AcademiaID])
GO
ALTER TABLE [dbo].[TrabajoRecepcional] CHECK CONSTRAINT [FK_TrabajoRecepcional_Academia]
GO
ALTER TABLE [dbo].[TrabajoRecepcional]  WITH CHECK ADD  CONSTRAINT [FK_TrabajoRecepcional_Pladeafei] FOREIGN KEY([PladeafeiID])
REFERENCES [dbo].[Pladeafei] ([PladeafeiID])
GO
ALTER TABLE [dbo].[TrabajoRecepcional] CHECK CONSTRAINT [FK_TrabajoRecepcional_Pladeafei]
GO
ALTER TABLE [dbo].[TrabajoRecepcional]  WITH CHECK ADD  CONSTRAINT [FK_TrabajoRecepcional_ProyectoDeInvestigacion] FOREIGN KEY([ProyectoDeInvestigacionID])
REFERENCES [dbo].[ProyectoDeInvestigacion] ([ProyectoDeInvestigacionID])
GO
ALTER TABLE [dbo].[TrabajoRecepcional] CHECK CONSTRAINT [FK_TrabajoRecepcional_ProyectoDeInvestigacion]
GO
ALTER TABLE [dbo].[TrabajoRecepcional]  WITH CHECK ADD  CONSTRAINT [FK_TrabajoRecepcional_Vinculacion] FOREIGN KEY([VinculacionID])
REFERENCES [dbo].[Vinculacion] ([VinculacionID])
GO
ALTER TABLE [dbo].[TrabajoRecepcional] CHECK CONSTRAINT [FK_TrabajoRecepcional_Vinculacion]
GO
ALTER TABLE [dbo].[TrabajoRecepcionalIntegrante]  WITH CHECK ADD  CONSTRAINT [FK_TrabajoRecepcionalIntegrante_Integrante] FOREIGN KEY([IntegranteID])
REFERENCES [dbo].[Integrante] ([IntegranteID])
GO
ALTER TABLE [dbo].[TrabajoRecepcionalIntegrante] CHECK CONSTRAINT [FK_TrabajoRecepcionalIntegrante_Integrante]
GO
ALTER TABLE [dbo].[TrabajoRecepcionalIntegrante]  WITH CHECK ADD  CONSTRAINT [FK_TrabajoRecepcionalIntegrante_TrabajoRecepcional] FOREIGN KEY([TrabajoRecepcionalID])
REFERENCES [dbo].[TrabajoRecepcional] ([TrabajoRecepcionalID])
GO
ALTER TABLE [dbo].[TrabajoRecepcionalIntegrante] CHECK CONSTRAINT [FK_TrabajoRecepcionalIntegrante_TrabajoRecepcional]
GO
ALTER TABLE [dbo].[TrabajoRecepcionalSinodalDelTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_TrabajoRecepcionalSinodalDelTrabajo_SinodalDelTrabajo] FOREIGN KEY([SinodalDelTrabajoID])
REFERENCES [dbo].[SinodalDelTrabajo] ([SinodalDelTrabajoID])
GO
ALTER TABLE [dbo].[TrabajoRecepcionalSinodalDelTrabajo] CHECK CONSTRAINT [FK_TrabajoRecepcionalSinodalDelTrabajo_SinodalDelTrabajo]
GO
ALTER TABLE [dbo].[TrabajoRecepcionalSinodalDelTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_TrabajoRecepcionalSinodalDelTrabajo_TrabajoRecepcional] FOREIGN KEY([TrabajoRecepcionalID])
REFERENCES [dbo].[TrabajoRecepcional] ([TrabajoRecepcionalID])
GO
ALTER TABLE [dbo].[TrabajoRecepcionalSinodalDelTrabajo] CHECK CONSTRAINT [FK_TrabajoRecepcionalSinodalDelTrabajo_TrabajoRecepcional]
GO
ALTER TABLE [dbo].[VinculacionLgac]  WITH CHECK ADD  CONSTRAINT [FK_VinculacionLgac_Lgac] FOREIGN KEY([LgacID])
REFERENCES [dbo].[Lgac] ([LgacID])
GO
ALTER TABLE [dbo].[VinculacionLgac] CHECK CONSTRAINT [FK_VinculacionLgac_Lgac]
GO
ALTER TABLE [dbo].[VinculacionLgac]  WITH CHECK ADD  CONSTRAINT [FK_VinculacionLgac_Vinculacion] FOREIGN KEY([VinculacionID])
REFERENCES [dbo].[Vinculacion] ([VinculacionID])
GO
ALTER TABLE [dbo].[VinculacionLgac] CHECK CONSTRAINT [FK_VinculacionLgac_Vinculacion]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[18] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Alumno"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 148
               Right = 262
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AlumnoTrabajoRecepcional"
            Begin Extent = 
               Top = 17
               Left = 424
               Bottom = 136
               Right = 666
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TrabajoRecepcional"
            Begin Extent = 
               Top = 0
               Left = 773
               Bottom = 163
               Right = 1047
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AlumnoExperienciaEducativa"
            Begin Extent = 
               Top = 245
               Left = 373
               Bottom = 364
               Right = 623
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExperienciaEducativa"
            Begin Extent = 
               Top = 181
               Left = 785
               Bottom = 344
               Right = 1035
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2280
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AlumnoTrabajoRecepcionalProyectoGuiadoView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'56
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AlumnoTrabajoRecepcionalProyectoGuiadoView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AlumnoTrabajoRecepcionalProyectoGuiadoView'
GO
USE [master]
GO
ALTER DATABASE [SER] SET  READ_WRITE 
GO
