USE [master]
GO
/****** Object:  Database [HOTEL]    Script Date: 05-04-2023 12:18:57 ******/
CREATE DATABASE [HOTEL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HOTEL', FILENAME = N'C:\Users\107360\HOTEL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HOTEL_log', FILENAME = N'C:\Users\107360\HOTEL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HOTEL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HOTEL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HOTEL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HOTEL] SET ARITHABORT OFF 
GO
ALTER DATABASE [HOTEL] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HOTEL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HOTEL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HOTEL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HOTEL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HOTEL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HOTEL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HOTEL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HOTEL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HOTEL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HOTEL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HOTEL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HOTEL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HOTEL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HOTEL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HOTEL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HOTEL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HOTEL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HOTEL] SET  MULTI_USER 
GO
ALTER DATABASE [HOTEL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HOTEL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HOTEL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HOTEL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HOTEL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HOTEL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HOTEL] SET QUERY_STORE = OFF
GO
USE [HOTEL]
GO
/****** Object:  Table [dbo].[book_table]    Script Date: 05-04-2023 12:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_table](
	[Hotel_No] [varchar](45) NULL,
	[Guest_No] [varchar](45) NULL,
	[Date_Form] [datetime] NULL,
	[Date_To] [datetime] NULL,
	[Room_No] [int] NULL,
	[total] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking_Table]    Script Date: 05-04-2023 12:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking_Table](
	[Hotel_No] [varchar](255) NULL,
	[Guest_No] [varchar](255) NULL,
	[Date_Form] [datetime] NULL,
	[Date_To] [datetime] NULL,
	[Room_No] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GUEST_TABLE]    Script Date: 05-04-2023 12:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GUEST_TABLE](
	[GUEST_NO] [varchar](255) NULL,
	[NAME] [varchar](255) NULL,
	[CITY] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel_Table]    Script Date: 05-04-2023 12:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel_Table](
	[Hotel_No] [varchar](255) NOT NULL,
	[Name] [varchar](255) NULL,
	[City] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Hotel_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Table]    Script Date: 05-04-2023 12:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Table](
	[Room_No] [int] NOT NULL,
	[Hotel_No] [varchar](255) NULL,
	[Type] [varchar](255) NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[book_table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No], [total]) VALUES (N'852', N'96', CAST(N'2356-01-01T00:00:00.000' AS DateTime), CAST(N'2541-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[book_table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No], [total]) VALUES (N'741', N'852', CAST(N'2563-01-01T00:00:00.000' AS DateTime), CAST(N'2012-02-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[book_table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No], [total]) VALUES (N'1111', N'1111', CAST(N'3002-01-01T00:00:00.000' AS DateTime), CAST(N'3265-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[book_table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No], [total]) VALUES (N'859', N'753', CAST(N'3562-01-01T00:00:00.000' AS DateTime), CAST(N'2541-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H111', N'G256', CAST(N'1999-08-10T00:00:00.000' AS DateTime), CAST(N'1999-08-15T00:00:00.000' AS DateTime), 412)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H111', N'G367', CAST(N'1999-08-18T00:00:00.000' AS DateTime), CAST(N'1999-08-21T00:00:00.000' AS DateTime), 412)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H235', N'G879', CAST(N'1999-09-05T00:00:00.000' AS DateTime), CAST(N'1999-09-12T00:00:00.000' AS DateTime), 1267)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H498', N'G230', CAST(N'1999-09-15T00:00:00.000' AS DateTime), CAST(N'1999-09-18T00:00:00.000' AS DateTime), 467)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H498', N'G256', CAST(N'1999-11-30T00:00:00.000' AS DateTime), CAST(N'1999-12-02T00:00:00.000' AS DateTime), 345)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H498', N'G467', CAST(N'1999-11-03T00:00:00.000' AS DateTime), CAST(N'1999-11-05T00:00:00.000' AS DateTime), 345)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H193', N'G190', CAST(N'1999-11-15T00:00:00.000' AS DateTime), CAST(N'1999-11-19T00:00:00.000' AS DateTime), 1001)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H193', N'G367', CAST(N'1999-09-12T00:00:00.000' AS DateTime), CAST(N'1999-09-14T00:00:00.000' AS DateTime), 1001)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H193', N'G367', CAST(N'1999-10-01T00:00:00.000' AS DateTime), CAST(N'1999-10-06T00:00:00.000' AS DateTime), 1201)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H437', N'G190', CAST(N'1999-10-04T00:00:00.000' AS DateTime), CAST(N'1999-10-06T00:00:00.000' AS DateTime), 223)
INSERT [dbo].[Booking_Table] ([Hotel_No], [Guest_No], [Date_Form], [Date_To], [Room_No]) VALUES (N'H437', N'G879', CAST(N'1999-09-14T00:00:00.000' AS DateTime), CAST(N'1999-09-17T00:00:00.000' AS DateTime), 223)
GO
INSERT [dbo].[GUEST_TABLE] ([GUEST_NO], [NAME], [CITY]) VALUES (N'G256', N'Adam Wayne', N'Pittsburgh')
INSERT [dbo].[GUEST_TABLE] ([GUEST_NO], [NAME], [CITY]) VALUES (N'G367', N'Tara cummings', N'Baltimore')
INSERT [dbo].[GUEST_TABLE] ([GUEST_NO], [NAME], [CITY]) VALUES (N'G879', N'Vanessa Parry', N'Pittsburgh')
INSERT [dbo].[GUEST_TABLE] ([GUEST_NO], [NAME], [CITY]) VALUES (N'G230', N'Tom Hancock', N'Philadelphia')
INSERT [dbo].[GUEST_TABLE] ([GUEST_NO], [NAME], [CITY]) VALUES (N'G467', N'Robert swift', N'Atlanta')
INSERT [dbo].[GUEST_TABLE] ([GUEST_NO], [NAME], [CITY]) VALUES (N'G190', N'Edward Cane', N'Baltimore')
GO
INSERT [dbo].[Hotel_Table] ([Hotel_No], [Name], [City]) VALUES (N'H111', N'Empire Hotel', N'New York')
INSERT [dbo].[Hotel_Table] ([Hotel_No], [Name], [City]) VALUES (N'H193', N'Devon Hotel', N'Boston')
INSERT [dbo].[Hotel_Table] ([Hotel_No], [Name], [City]) VALUES (N'H235', N'Park Palace', N'New York')
INSERT [dbo].[Hotel_Table] ([Hotel_No], [Name], [City]) VALUES (N'H432', N'BrownStone Hotel', N'Toronto')
INSERT [dbo].[Hotel_Table] ([Hotel_No], [Name], [City]) VALUES (N'H437', N'Clairmount Hotel', N'Boston')
INSERT [dbo].[Hotel_Table] ([Hotel_No], [Name], [City]) VALUES (N'H498', N'James Plaza', N'Toronto')
GO
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (223, N'H437', N'N', 155)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (257, N'H437', N'N', 140)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (313, N'H111', N'S', 145)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (345, N'H498', N'N', 160)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (412, N'H111', N'N', 145)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (467, N'H498', N'N', 180)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (876, N'H432', N'S', 124)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (898, N'H432', N'S', 124)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (1001, N'H193', N'S', 150)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (1201, N'H193', N'N', 175)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (1267, N'H235', N'N', 175)
INSERT [dbo].[Room_Table] ([Room_No], [Hotel_No], [Type], [price]) VALUES (1289, N'H235', N'N', 195)
GO
ALTER TABLE [dbo].[Booking_Table]  WITH CHECK ADD FOREIGN KEY([Hotel_No])
REFERENCES [dbo].[Hotel_Table] ([Hotel_No])
GO
ALTER TABLE [dbo].[Booking_Table]  WITH CHECK ADD FOREIGN KEY([Room_No])
REFERENCES [dbo].[Room_Table] ([Room_No])
GO
ALTER TABLE [dbo].[Booking_Table]  WITH CHECK ADD FOREIGN KEY([Room_No])
REFERENCES [dbo].[Room_Table] ([Room_No])
GO
ALTER TABLE [dbo].[Room_Table]  WITH CHECK ADD FOREIGN KEY([Hotel_No])
REFERENCES [dbo].[Hotel_Table] ([Hotel_No])
GO
USE [master]
GO
ALTER DATABASE [HOTEL] SET  READ_WRITE 
GO
