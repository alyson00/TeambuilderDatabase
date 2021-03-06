USE [TBDraft]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 12/5/2021 6:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [varchar](50) NULL,
	[courseDescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfessorLogin]    Script Date: 12/5/2021 6:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessorLogin](
	[ProfessorName] [varchar](50) NOT NULL,
	[username] [varchar](50) NULL,
	[passw] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_ProfessorLogin] PRIMARY KEY CLUSTERED 
(
	[ProfessorName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 12/5/2021 6:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[projectName] [varchar](50) NOT NULL,
	[Descrp] [varchar](max) NULL,
	[ProfessorName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[projectName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/5/2021 6:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[projectName] [varchar](50) NULL,
	[roleName] [varchar](50) NULL,
	[roleDescription] [varchar](max) NULL,
	[conskills] [varchar](max) NULL,
	[proskills] [varchar](max) NULL,
	[Candidate1] [int] NULL,
	[Candidate2] [int] NULL,
	[Candidate3] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInformation]    Script Date: 12/5/2021 6:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[GPA] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[StudentResume] [varbinary](max) NULL,
	[ProcessedData] [varchar](max) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[StringResume] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingResumes]    Script Date: 12/5/2021 6:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingResumes](
	[keyword] [varchar](50) NULL,
	[dataText] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
