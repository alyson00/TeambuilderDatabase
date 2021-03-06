/****** Object:  Database [TeamBuilder]    Script Date: 4/30/2022 4:51:15 PM ******/
CREATE DATABASE [TeamBuilder]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_S_Gen5_1', MAXSIZE = 10 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [TeamBuilder] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [TeamBuilder] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TeamBuilder] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TeamBuilder] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TeamBuilder] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TeamBuilder] SET ARITHABORT OFF 
GO
ALTER DATABASE [TeamBuilder] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TeamBuilder] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TeamBuilder] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TeamBuilder] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TeamBuilder] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TeamBuilder] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TeamBuilder] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TeamBuilder] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TeamBuilder] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [TeamBuilder] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TeamBuilder] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TeamBuilder] SET  MULTI_USER 
GO
ALTER DATABASE [TeamBuilder] SET ENCRYPTION ON
GO
ALTER DATABASE [TeamBuilder] SET QUERY_STORE = ON
GO
ALTER DATABASE [TeamBuilder] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[Counter1]    Script Date: 4/30/2022 4:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counter1](
	[count1] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 4/30/2022 4:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [varchar](50) NULL,
	[courseDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfessorLogin]    Script Date: 4/30/2022 4:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessorLogin](
	[ProfessorName] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[passw] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 4/30/2022 4:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[projectName] [varchar](50) NULL,
	[Descrp] [varchar](max) NULL,
	[ProfessorName] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/30/2022 4:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[projectName] [varchar](50) NULL,
	[roleName] [varchar](50) NULL,
	[unwantedSkills] [varchar](max) NULL,
	[wantedSkills] [varchar](max) NULL,
	[Candidate1] [int] NULL,
	[Candidate2] [int] NULL,
	[Candidate3] [int] NULL,
	[Candidate4] [int] NULL,
	[Candidate5] [int] NULL,
	[selected] [int] NOT NULL,
	[confidence] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInformation]    Script Date: 4/30/2022 4:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[GPA] [decimal](4, 3) NULL,
	[Email] [varchar](50) NULL,
	[ProcessedData] [varchar](max) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[numInternships] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingResumes]    Script Date: 4/30/2022 4:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingResumes](
	[keyword] [varchar](50) NULL,
	[dataText] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_selected]  DEFAULT ((0)) FOR [selected]
GO
ALTER DATABASE [TeamBuilder] SET  READ_WRITE 
GO
