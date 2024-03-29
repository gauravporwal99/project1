USE [master]
GO
/****** Object:  Database [registration]    Script Date: 05-04-2023 12:23:18 ******/
CREATE DATABASE [registration]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'registration', FILENAME = N'C:\Users\107360\registration.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'registration_log', FILENAME = N'C:\Users\107360\registration_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [registration] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [registration].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [registration] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [registration] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [registration] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [registration] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [registration] SET ARITHABORT OFF 
GO
ALTER DATABASE [registration] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [registration] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [registration] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [registration] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [registration] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [registration] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [registration] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [registration] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [registration] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [registration] SET  ENABLE_BROKER 
GO
ALTER DATABASE [registration] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [registration] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [registration] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [registration] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [registration] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [registration] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [registration] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [registration] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [registration] SET  MULTI_USER 
GO
ALTER DATABASE [registration] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [registration] SET DB_CHAINING OFF 
GO
ALTER DATABASE [registration] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [registration] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [registration] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [registration] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [registration] SET QUERY_STORE = OFF
GO
USE [registration]
GO
/****** Object:  Table [dbo].[incomeData]    Script Date: 05-04-2023 12:23:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incomeData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Income] [int] NULL,
	[category] [varchar](255) NULL,
	[IncomeDate] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterData]    Script Date: 05-04-2023 12:23:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterData](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](30) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[MobileNumber] [varchar](30) NOT NULL,
	[UserAddress] [varchar](30) NOT NULL,
	[Gender] [varchar](30) NOT NULL,
	[HighestQualification] [varchar](30) NOT NULL,
	[DOB] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regtable]    Script Date: 05-04-2023 12:23:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regtable](
	[name] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Contact] [varchar](10) NULL,
	[gender] [varchar](255) NULL,
	[HighestQualification] [varchar](255) NULL,
	[User_id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 05-04-2023 12:23:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[name] [varchar](255) NULL,
	[class] [varchar](50) NULL,
	[subject] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[incomeData] ON 

INSERT [dbo].[incomeData] ([id], [Income], [category], [IncomeDate]) VALUES (1, 30000, N'salary', CAST(N'2023-03-30T12:29:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[incomeData] OFF
GO
SET IDENTITY_INSERT [dbo].[RegisterData] ON 

INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (1, N'Krishna', N'krishna@gmail.com', N'1234432112', N'Mathura', N'Male', N'PostGraduate', N'121212')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (2, N'Bhawna', N'krishna@gmail.com', N'1234432112', N'Mathura', N'Female', N'PostGraduate', N'121212')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (3, N'Bhawna', N'bhawna@gmail.com', N'1234567890', N'dssd', N'Female', N'postgraduate', N'11052001')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (4, N'qwqw', N'qwqww', N'121212', N'qwqw', N'Female', N'Graduate', N'12121')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (5, N'qwewqe', N'qwewqe', N'qweqwe', N'qweqwe', N'Female', N'Graduate', N'ewqeqw')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (6, N'wqewq', N'wqeeqwe', N'wqeqwe', N'eqwew', N'Male', N'PostGraduate', N'ewqewq')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (1008, N'Gaurav', N'g@g.com', N'1111111111', N'Jaipur', N'Male', N'12', N'111111')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (1009, N'Gaurav', N'g@g.com', N'1111111111', N'Jaipur', N'Male', N'12', N'111111')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (1010, N'Gaurav', N'g@g.com', N'1111111111', N'Jaipur', N'Male', N'12', N'111111')
INSERT [dbo].[RegisterData] ([UserId], [FullName], [Email], [MobileNumber], [UserAddress], [Gender], [HighestQualification], [DOB]) VALUES (2007, N'Payal', N'g@g.com', N'1111111111', N'Jaipur', N'Male', N'12', N'111111')
SET IDENTITY_INSERT [dbo].[RegisterData] OFF
GO
SET IDENTITY_INSERT [dbo].[regtable] ON 

INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'string', N'string', N'string', N'string', N'string', 1)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'abc', N'12334', N'34544', N'Male', N'Post Graduate', 2)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'sddf', N'sdsdZ@def', N'fdffddfffd', N'Male', N'Post Graduate', 3)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'ede', N'wede@deeded', N'ededededed', N'Female', N'Post Graduate', 5)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'gh', N'hygghhg@frft', N'gujgghjgfj', N'Female', N'Post Graduate', 6)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'YUAH', N'JHGAh@jhg', N'3132143613', N'Male', N'Graduate', 7)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'swsw', N'jhbjk@KJHS', N'3163143213', N'Male', N'Post Graduate', 8)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'SRGSDG', N'KHJKDS@LKJHKL', N'6346546546', N'Male', N'Post Graduate', 9)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'sad', N'kajshskaj@kjlhlk', N'5646546546', N'Male', N'Post Graduate', 10)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'wswd', N'sddlkjj@lkjds', N'5465465465', N'Male', N'Post Graduate', 11)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'sdffgbjfg', N'hgfh@ghjhjkjkjlkl', N'4545654654', N'Male', N'Post Graduate', 12)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'wd', N'ds@swdwsd', N'6546546546', N'Male', N'Post Graduate', 13)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'eer', N'dd@dwsdd', N'+654+6526+', N'Male', N'Post Graduate', 14)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'ggffjfjkh', N'kjnbujknkm@hhhvbhc', N'4851454525', N'Male', N'Post Graduate', 15)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'gaurav', N'gaurav.porwal@genus.in', N'9564123766', N'Male', N'Post Graduate', 16)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'Ayush ', N'sharmaay926@gmail.com', N'9638527410', N'Female', N'Post Graduate', 17)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'ADG', N'genus.power.in', N'9638527419', N'Male', N'Under Gradutation', 18)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'blah blah blahhhhh', N'kljlsfdbhiujh@hghxuy', N'8798454124', N'Male', N'Graduate', 19)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'gaude', N'tysfys@hsuj', N'345678899', N'malehjj', N'sgsu', 20)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'gaude', N'tysfys@hsuj', N'345678899', N'malehjj', N'sgsu', 21)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'arta1', N'string', N'string', N'string', N'0', 22)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'arya1', N'st@gmai', N'74198696', N'Female', N'0', 24)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'gauravavvvvvvvv', N'st@gmai', N'74198696', N'Female', N'0', 25)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'gdffffffffffffffffffffffffffff', N'st@gppppppppmai', N'741978696', N'Femhhgale', N'PjhjhG', 26)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'shubham kumar', N'bihar@ing', N'1234567890', N'Male', N'topper from gb road', 28)
INSERT [dbo].[regtable] ([name], [Email], [Contact], [gender], [HighestQualification], [User_id]) VALUES (N'hgdyuiylotg', N'stritf@gjhfgng', N'string', N'string', N'string', 29)
SET IDENTITY_INSERT [dbo].[regtable] OFF
GO
USE [master]
GO
ALTER DATABASE [registration] SET  READ_WRITE 
GO
