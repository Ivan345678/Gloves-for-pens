USE [master]
GO
/****** Object:  Database [Auchan]    Script Date: 21.12.2023 5:05:51 ******/
CREATE DATABASE [Auchan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Auchan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Auchan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Auchan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Auchan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Auchan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Auchan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Auchan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Auchan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Auchan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Auchan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Auchan] SET ARITHABORT OFF 
GO
ALTER DATABASE [Auchan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Auchan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Auchan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Auchan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Auchan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Auchan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Auchan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Auchan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Auchan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Auchan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Auchan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Auchan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Auchan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Auchan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Auchan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Auchan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Auchan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Auchan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Auchan] SET  MULTI_USER 
GO
ALTER DATABASE [Auchan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Auchan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Auchan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Auchan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Auchan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Auchan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Auchan] SET QUERY_STORE = OFF
GO
USE [Auchan]
GO
/****** Object:  Table [dbo].[ListProducts]    Script Date: 21.12.2023 5:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Price] [int] NOT NULL,
	[Receipt] [int] NOT NULL,
 CONSTRAINT [PK_ListProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 21.12.2023 5:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Barcode] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Segment] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 21.12.2023 5:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21.12.2023 5:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Segment]    Script Date: 21.12.2023 5:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Segment](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Segment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 21.12.2023 5:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ListProducts] ON 

INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (1, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (2, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (3, N'Веник', 159, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (4, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (5, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (6, N'Веник', 159, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (7, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (8, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (9, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (10, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (11, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (12, N'Мачалка', 20, 1)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (13, N'Мачалка', 20, 7)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (14, N'Мачалка', 20, 7)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (15, N'Мачалка', 20, 7)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (16, N'Мачалка', 20, 7)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (17, N'Мачалка', 20, 8)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (18, N'Веник', 159, 8)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (19, N'Веник', 159, 9)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (20, N'Веник', 159, 11)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (21, N'Веник', 159, 12)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (22, N'Веник', 159, 13)
INSERT [dbo].[ListProducts] ([Id], [Name], [Price], [Receipt]) VALUES (23, N'Мачалка', 20, 13)
SET IDENTITY_INSERT [dbo].[ListProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (3, 1, N'Омывайка', 1, 345)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (4, 2, N'Лампочка', 2, 143)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (5, 3, N'Футбольный мяч', 3, 569)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (6, 4, N'Скотч', 4, 234)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (7, 5, N'Саморезы', 4, 99)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (8, 6, N'Краска', 4, 523)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (9, 7, N'Подушка', 7, 256)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (10, 8, N'Полотенце', 6, 134)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (11, 9, N'Микроволновка', 10, 2560)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (12, 10, N'Колбаса', 11, 123)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (13, 11, N'Пазл', 9, 150)
INSERT [dbo].[Products] ([Id], [Barcode], [Name], [Segment], [Price]) VALUES (14, 12, N'Термометор', 12, 300)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([Id], [Condition]) VALUES (1, N'Завершон 1')
INSERT [dbo].[Receipt] ([Id], [Condition]) VALUES (7, N'Завершон 1')
INSERT [dbo].[Receipt] ([Id], [Condition]) VALUES (8, N'Завершон 1')
INSERT [dbo].[Receipt] ([Id], [Condition]) VALUES (9, N'Завершон 1')
INSERT [dbo].[Receipt] ([Id], [Condition]) VALUES (11, N'Завершон 1')
INSERT [dbo].[Receipt] ([Id], [Condition]) VALUES (12, N'Завершон 1')
INSERT [dbo].[Receipt] ([Id], [Condition]) VALUES (13, N'Завершон 1')
SET IDENTITY_INSERT [dbo].[Receipt] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Сканировщик')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (1, N'Авто')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (2, N'Багаж')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (3, N'Спорт')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (4, N'Ремонт')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (5, N'Ремонт')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (6, N'Текстиль')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (7, N'Текстиль')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (8, N'Текстиль')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (9, N'Игрушки')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (10, N'Бытовая техника')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (11, N'Калбасы')
INSERT [dbo].[Segment] ([Id], [Name]) VALUES (12, N'Кемпинг')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [Role]) VALUES (1, N'1', N'1', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[ListProducts]  WITH CHECK ADD  CONSTRAINT [FK_ListProducts_Receipt] FOREIGN KEY([Receipt])
REFERENCES [dbo].[Receipt] ([Id])
GO
ALTER TABLE [dbo].[ListProducts] CHECK CONSTRAINT [FK_ListProducts_Receipt]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Segment] FOREIGN KEY([Segment])
REFERENCES [dbo].[Segment] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Segment]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Auchan] SET  READ_WRITE 
GO
