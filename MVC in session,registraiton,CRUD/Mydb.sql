USE [master]
GO
/****** Object:  Database [Mydb]    Script Date: 05-04-2023 12:22:32 ******/
CREATE DATABASE [Mydb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mydb', FILENAME = N'C:\Users\107360\Mydb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mydb_log', FILENAME = N'C:\Users\107360\Mydb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Mydb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mydb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mydb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mydb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mydb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mydb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mydb] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mydb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Mydb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mydb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mydb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mydb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mydb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mydb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mydb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mydb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mydb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Mydb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mydb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mydb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mydb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mydb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mydb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mydb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mydb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mydb] SET  MULTI_USER 
GO
ALTER DATABASE [Mydb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mydb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mydb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mydb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mydb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mydb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Mydb] SET QUERY_STORE = OFF
GO
USE [Mydb]
GO
/****** Object:  Table [dbo].[maildata]    Script Date: 05-04-2023 12:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maildata](
	[To] [varchar](255) NULL,
	[CC] [varchar](255) NULL,
	[BCC] [varchar](255) NULL,
	[Subject] [varchar](255) NULL,
	[Body] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 05-04-2023 12:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[EmpId] [int] NOT NULL,
	[FullName] [varchar](20) NULL,
	[email] [varchar](45) NULL,
	[Contact] [varchar](45) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tododata]    Script Date: 05-04-2023 12:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tododata](
	[S.No.] [int] IDENTITY(1,1) NOT NULL,
	[Task] [varchar](255) NULL,
	[Status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[S.No.] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[student] ([EmpId], [FullName], [email], [Contact]) VALUES (12, N'ewawe', N'asd@', N'741852')
INSERT [dbo].[student] ([EmpId], [FullName], [email], [Contact]) VALUES (123, N'gaurav', N'gauy@gmail.com', N'963852741')
INSERT [dbo].[student] ([EmpId], [FullName], [email], [Contact]) VALUES (653, N'dgfg', N'gh@f', N'76')
INSERT [dbo].[student] ([EmpId], [FullName], [email], [Contact]) VALUES (741, N'escfwaDC', N'Q2EWSECFQ2', N'1234567890')
GO
SET IDENTITY_INSERT [dbo].[Tododata] ON 

INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (2, N'gaurav', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (3, N'Bhawna', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (4, N'deepu', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (6, N'gauravidiot', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (7, N'gaurav', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (10, N'gaurav', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (11, N'yygtgy', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (14, N'gaurav', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (16, N'aWSYFCGVBUJAFMN ', N'done')
INSERT [dbo].[Tododata] ([S.No.], [Task], [Status]) VALUES (17, N'muje aj vo kam krke sbmit krna h', N'done')
SET IDENTITY_INSERT [dbo].[Tododata] OFF
GO
USE [master]
GO
ALTER DATABASE [Mydb] SET  READ_WRITE 
GO
