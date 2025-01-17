USE [master]
GO
/****** Object:  Database [libraryproject]    Script Date: 20-Nov-24 6:43:57 PM ******/
CREATE DATABASE [libraryproject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'libraryproject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\libraryproject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'libraryproject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\libraryproject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [libraryproject] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [libraryproject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [libraryproject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [libraryproject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [libraryproject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [libraryproject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [libraryproject] SET ARITHABORT OFF 
GO
ALTER DATABASE [libraryproject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [libraryproject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [libraryproject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [libraryproject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [libraryproject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [libraryproject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [libraryproject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [libraryproject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [libraryproject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [libraryproject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [libraryproject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [libraryproject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [libraryproject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [libraryproject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [libraryproject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [libraryproject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [libraryproject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [libraryproject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [libraryproject] SET  MULTI_USER 
GO
ALTER DATABASE [libraryproject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [libraryproject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [libraryproject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [libraryproject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [libraryproject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [libraryproject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [libraryproject] SET QUERY_STORE = ON
GO
ALTER DATABASE [libraryproject] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [libraryproject]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 20-Nov-24 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Book_ID] [int] IDENTITY(1,1) NOT NULL,
	[Book_Name] [varchar](50) NULL,
	[Book_Author] [varchar](50) NULL,
	[Date_Added] [datetime] NULL,
	[Available_Books] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrow]    Script Date: 20-Nov-24 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrow](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Book_Name] [varchar](50) NULL,
	[Book_ID] [int] NULL,
	[Customer_ID] [int] NULL,
	[Borrow_Date] [datetime] NULL,
	[Return_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 20-Nov-24 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [varchar](50) NULL,
	[Gender] [char](1) NULL,
	[Email] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Admin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Author], [Date_Added], [Available_Books]) VALUES (17, N'1971 : Vetore Baire', N'A K Khandakar', NULL, 96)
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Author], [Date_Added], [Available_Books]) VALUES (18, N'Neta o Pita : Tajuddin Ahmed', N'Sharmin Ahmed ', NULL, 99)
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Author], [Date_Added], [Available_Books]) VALUES (19, N'Muhammod Saw : A Prophet for our time', N'Karen Armstrong', NULL, 147)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Borrow] ON 

INSERT [dbo].[Borrow] ([ID], [Book_Name], [Book_ID], [Customer_ID], [Borrow_Date], [Return_Date]) VALUES (34, N'Muhammod Saw ; A phrophet for our time', 19, 8, CAST(N'2024-11-18T01:15:29.450' AS DateTime), CAST(N'2024-11-25T01:15:29.450' AS DateTime))
INSERT [dbo].[Borrow] ([ID], [Book_Name], [Book_ID], [Customer_ID], [Borrow_Date], [Return_Date]) VALUES (35, N'Neta o Pita : Tajuddin Ahmed', 18, 8, CAST(N'2024-11-18T01:15:38.487' AS DateTime), CAST(N'2024-11-25T01:15:38.487' AS DateTime))
INSERT [dbo].[Borrow] ([ID], [Book_Name], [Book_ID], [Customer_ID], [Borrow_Date], [Return_Date]) VALUES (36, N'1971 : Vetore Baire', 17, 9, CAST(N'2024-11-18T01:15:58.323' AS DateTime), CAST(N'2024-11-25T01:15:58.323' AS DateTime))
INSERT [dbo].[Borrow] ([ID], [Book_Name], [Book_ID], [Customer_ID], [Borrow_Date], [Return_Date]) VALUES (37, N'Muhammod Saw ; A phrophet for our time', 19, 9, CAST(N'2024-11-18T01:16:06.980' AS DateTime), CAST(N'2024-11-25T01:16:06.980' AS DateTime))
INSERT [dbo].[Borrow] ([ID], [Book_Name], [Book_ID], [Customer_ID], [Borrow_Date], [Return_Date]) VALUES (38, N'1971 : Vetore Baire', 17, 24, CAST(N'2024-11-18T13:34:10.680' AS DateTime), CAST(N'2024-11-25T13:34:10.680' AS DateTime))
INSERT [dbo].[Borrow] ([ID], [Book_Name], [Book_ID], [Customer_ID], [Borrow_Date], [Return_Date]) VALUES (39, N'1971 : Vetore Baire', 17, 8, CAST(N'2024-11-18T13:42:48.767' AS DateTime), CAST(N'2024-11-25T13:42:48.767' AS DateTime))
INSERT [dbo].[Borrow] ([ID], [Book_Name], [Book_ID], [Customer_ID], [Borrow_Date], [Return_Date]) VALUES (40, N'Muhammod Saw : A Prophet for our time', 19, 9, CAST(N'2024-11-18T13:43:00.947' AS DateTime), CAST(N'2024-11-25T13:43:00.947' AS DateTime))
INSERT [dbo].[Borrow] ([ID], [Book_Name], [Book_ID], [Customer_ID], [Borrow_Date], [Return_Date]) VALUES (1034, N'1971 : Vetore Baire', 17, 6, CAST(N'2024-11-20T18:40:58.107' AS DateTime), CAST(N'2024-11-27T18:40:58.107' AS DateTime))
SET IDENTITY_INSERT [dbo].[Borrow] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Gender], [Email], [UserName], [Admin]) VALUES (6, N'Fahad', N'M', N'fahad@gmail.com', N'fahad', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Gender], [Email], [UserName], [Admin]) VALUES (8, N'Israt', N'F', N'israt@gmail.com', N'israt', NULL)
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Gender], [Email], [UserName], [Admin]) VALUES (9, N'Nafisul ', N'M', N'nafisul@gmail.com', N'nafisul', NULL)
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Gender], [Email], [UserName], [Admin]) VALUES (10, N'Atik', N'M', N'atik@gmail.com', N'atik', NULL)
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Gender], [Email], [UserName], [Admin]) VALUES (16, N'test', N'M', N'test@gmail.com', N'test', NULL)
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Name], [Gender], [Email], [UserName], [Admin]) VALUES (24, N'helloworld', N'M', N'hello@hello.com', N'hello', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
ALTER TABLE [dbo].[Borrow]  WITH CHECK ADD FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Book] ([Book_ID])
GO
ALTER TABLE [dbo].[Borrow]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
USE [master]
GO
ALTER DATABASE [libraryproject] SET  READ_WRITE 
GO
