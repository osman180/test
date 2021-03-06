USE [master]
GO
/****** Object:  Database [Hotel Managment System ]    Script Date: 8/5/2020 10:49:17 PM ******/
CREATE DATABASE [Hotel Managment System ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hotel Managment System', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.OOO\MSSQL\DATA\Hotel Managment System .mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hotel Managment System _log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.OOO\MSSQL\DATA\Hotel Managment System _log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hotel Managment System ] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotel Managment System ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotel Managment System ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hotel Managment System ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hotel Managment System ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hotel Managment System ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hotel Managment System ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET RECOVERY FULL 
GO
ALTER DATABASE [Hotel Managment System ] SET  MULTI_USER 
GO
ALTER DATABASE [Hotel Managment System ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hotel Managment System ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hotel Managment System ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hotel Managment System ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Hotel Managment System ] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hotel Managment System ', N'ON'
GO
USE [Hotel Managment System ]
GO
/****** Object:  User [osman]    Script Date: 8/5/2020 10:49:17 PM ******/
CREATE USER [osman] FOR LOGIN [osman] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Customerinfo]    Script Date: 8/5/2020 10:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customerinfo](
	[id] [int] NOT NULL,
	[fullname] [varchar](60) NOT NULL,
	[floor] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[roomtype] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[zipcode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customerinfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 8/5/2020 10:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [int] NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rom]    Script Date: 8/5/2020 10:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rom](
	[Room id] [varchar](50) NOT NULL,
	[Roomtype] [varchar](50) NOT NULL,
	[floor] [varchar](50) NOT NULL,
	[price] [varchar](50) NOT NULL,
	[nobeds] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customerinfo] ([id], [fullname], [floor], [phone], [roomtype], [email], [address], [zipcode]) VALUES (0, N'Karl Berg', N'3', N'5127797021', N'-Select-', N'ismacil420@gmail.com', N'2808 West Lehigh Avenue', N'19112')
INSERT [dbo].[Customerinfo] ([id], [fullname], [floor], [phone], [roomtype], [email], [address], [zipcode]) VALUES (1, N'ismail ahmed', N'3', N'234545', N'Duoble', N'ismacil420@gmail.com', N'2808 West Lehigh Av', N'')
INSERT [dbo].[Customerinfo] ([id], [fullname], [floor], [phone], [roomtype], [email], [address], [zipcode]) VALUES (2, N'Karl Berg', N'3', N'5127797021', N'Duoble', N'ismacil420@gmail.com', N'2808 West Lehigh Avenue', N'19112')
INSERT [dbo].[Customerinfo] ([id], [fullname], [floor], [phone], [roomtype], [email], [address], [zipcode]) VALUES (3, N'Karl Berg', N'3', N'5127797021', N'Single', N'ismacil420@gmail.com', N'2808 West Lehigh Avenue', N'19112')
INSERT [dbo].[Customerinfo] ([id], [fullname], [floor], [phone], [roomtype], [email], [address], [zipcode]) VALUES (4, N'muumin', N'2', N'234567', N'Duoble', N'ismacil420@gmail.com', N'mogadisho', N'19112')
INSERT [dbo].[Customerinfo] ([id], [fullname], [floor], [phone], [roomtype], [email], [address], [zipcode]) VALUES (5, N'Karl Berg', N'3', N'5127797021', N'Duoble', N'ismacil420@gmail.com', N'2808 West Lehigh Avenue', N'19112')
INSERT [dbo].[login] ([id], [Username], [Password]) VALUES (1, N'osman', 1234)
INSERT [dbo].[login] ([id], [Username], [Password]) VALUES (2, N'ali', 1234)
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'1', N'Double', N'2', N'50', N'Male')
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'2', N'Double', N'3', N'60', N'Female')
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'4', N'Double', N'al', N'50', N'Single')
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'6', N'Double', N'2', N'23', N'Single')
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'7', N'single', N'3', N'25', N'Single')
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'7', N'single', N'3', N'25', N'Single')
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'7', N'single', N'3', N'25', N'Single')
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'', N'Double', N'2', N'55', N'Single')
INSERT [dbo].[rom] ([Room id], [Roomtype], [floor], [price], [nobeds]) VALUES (N'', N'Double', N'2', N'55', N'Single')
USE [master]
GO
ALTER DATABASE [Hotel Managment System ] SET  READ_WRITE 
GO
