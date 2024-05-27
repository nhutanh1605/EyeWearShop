USE [master]
GO
/****** Object:  Database [EyeWearShop]    Script Date: 31/05/2023 9:28:48 PM ******/
CREATE DATABASE [EyeWearShop]
GO
ALTER DATABASE [EyeWearShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EyeWearShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EyeWearShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EyeWearShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EyeWearShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [EyeWearShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EyeWearShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EyeWearShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EyeWearShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EyeWearShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EyeWearShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EyeWearShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EyeWearShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EyeWearShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EyeWearShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EyeWearShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EyeWearShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EyeWearShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EyeWearShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EyeWearShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EyeWearShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EyeWearShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EyeWearShop] SET RECOVERY FULL 
GO
ALTER DATABASE [EyeWearShop SET  MULTI_USER 
GO
ALTER DATABASE [EyeWearShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EyeWearShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EyeWearShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EyeWearShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EyeWearShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EyeWearShop] SET QUERY_STORE = OFF
GO
USE [EyeWearShop]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 28/05/2022 9:28:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Activated] [bit] NOT NULL,
	[Admin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 28/05/2022 9:28:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [varchar](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 28/05/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 28/05/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28/05/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'MK01', N'Kính Mát')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'MK02', N'Gọng Kính')

SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([Username], [Password],[Fullname], [Email], [Photo], [Activated], [Admin]) VALUES ('nhutanh', '123', 'Tran Nhut Anh' , 'nhutanh1605@gmail.com', 'nhutanh.png', 0, 0);
INSERT [dbo].[Accounts] ([Username], [Password],[Fullname], [Email], [Photo], [Activated], [Admin]) VALUES ('nhutanh1', '123', 'Tran Nhut Anh' , 'nhutanh16051@gmail.com', 'nhutanh.png', 0, 1);
INSERT [dbo].[Accounts] ([Username], [Password],[Fullname], [Email], [Photo], [Activated], [Admin]) VALUES ('nhutanh2', '123', 'Tran Nhut Anh' , 'nhutanh16052@gmail.com', 'nhutanh.png', 0, 0);


SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1, N'Kính Mát Nữ BOLON BL3085 C10', N'kinhmatnubolonbl3085.png',3780000, CAST(N'2023-06-07' AS Date), 1, N'MK01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (2, N'Kính Mát Nữ BOLON BL3096 C10', N'kinhmatnubolonbl3096.png',3780000, CAST(N'2023-06-07' AS Date), 1, N'MK01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (3, N'Kính Mát Unisex FLYER F93615 C1', N'kinhmatunisexflyerf93615.png',464000, CAST(N'2023-06-07' AS Date), 1, N'MK01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (4, N'Kính Mát Unisex HANGTEN HTS22 BK', N'kinhmatunisexhangtenhts22.png',599000, CAST(N'2023-06-07' AS Date), 1, N'MK01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (5, N'Kính Mát Unisex BOLON BL6102 A91', N'kinhmatunisexbolonbl6102.png',3280000, CAST(N'2023-06-07' AS Date), 1, N'MK01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (6, N'Kính Mát Unisex BOLON BL3085 C10', N'kinhmatunisexbolonbl3085.png',3780000, CAST(N'2023-06-07' AS Date), 1, N'MK01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (7, N'Gọng kính BOLON BH7006 B30', N'gongkinhbolonbh7006b30.png',3280000, CAST(N'2023-06-07' AS Date), 1, N'MK02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (8, N'Gọng Kính ANCCI AC23507 DBL', N'gongkinhancciac23507dbl.png',760000, CAST(N'2023-06-07' AS Date), 1, N'MK02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (9, N'Gọng Kính Unisex FOSSIL FOS7148 003', N'gongkinhunisexfossilfos7148003.png',464000, CAST(N'2023-06-07' AS Date), 1, N'MK02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (10, N'Gọng Kính Unisex ANCCI AC23504 GRY', N'gongkinhunisexancciac23504gry.png',760000, CAST(N'2023-06-07' AS Date), 1, N'MK02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (11, N'Gọng Kính Unisex ANCCI AC23504 DBL', N'gongkinhunisexancciac23504dbl.png',760000, CAST(N'2023-06-07' AS Date), 1, N'MK02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (12, N'Gọng Kính Nam BOLON BJ3117 B10', N'gongkinhnambolonbj3117b10.png',3280000, CAST(N'2023-06-07' AS Date), 1, N'MK02')

SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Index [UQ__OrderDet__08D097A2BB215830]    Script Date: 28/05/2022 9:28:51 PM ******/
ALTER TABLE [dbo].[OrderDetails] ADD UNIQUE NONCLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
USE [master]
GO
ALTER DATABASE [EyeWearShop] SET  READ_WRITE 
GO
ALTER TABLE [dbo].[Products]
ADD [Qty] INT
UPDATE [dbo].[Products]
SET [Qty] = 1

select * from Products
select * from accounts
select * from categories