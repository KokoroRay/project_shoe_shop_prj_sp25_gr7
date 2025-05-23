USE [group7]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 16/03/2025 8:39:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[User_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 16/03/2025 8:39:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Notification_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Admin_ID] [int] NULL,
	[Message] [nvarchar](255) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[Created_At] [datetime] NULL,
	[FullName] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[OrderDetails] [nvarchar](max) NULL,
	[TotalPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Notification_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Items]    Script Date: 16/03/2025 8:39:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Items](
	[Order_Item_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[Quantity] [int] NOT NULL,
	[Unit_Price] [decimal](10, 2) NOT NULL,
	[Size] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 16/03/2025 8:39:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NULL,
	[Order_Date] [datetime] NOT NULL,
	[Total_Price] [decimal](10, 2) NULL,
	[Status] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 16/03/2025 8:39:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](255) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Size] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[Rate] [decimal](2, 1) NULL,
	[Type] [nchar](10) NULL,
	[Original_Price] [decimal](10, 2) NULL,
	[Discount_Percent] [decimal](5, 2) NULL,
	[Discount_Start_Date] [datetime] NULL,
	[Discount_End_Date] [datetime] NULL,
	[Trademark_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trademark]    Script Date: 16/03/2025 8:39:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trademark](
	[Trademark_ID] [int] IDENTITY(1,1) NOT NULL,
	[Trademark_Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Trademark_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16/03/2025 8:39:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[DOB] [date] NULL,
	[Role] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Favorites] ([User_ID], [Product_ID]) VALUES (2, 8)
INSERT [dbo].[Favorites] ([User_ID], [Product_ID]) VALUES (2, 9)
INSERT [dbo].[Favorites] ([User_ID], [Product_ID]) VALUES (2, 10)
INSERT [dbo].[Favorites] ([User_ID], [Product_ID]) VALUES (2, 12)
INSERT [dbo].[Favorites] ([User_ID], [Product_ID]) VALUES (2, 14)
INSERT [dbo].[Favorites] ([User_ID], [Product_ID]) VALUES (2, 18)
INSERT [dbo].[Favorites] ([User_ID], [Product_ID]) VALUES (2, 22)
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (1, 40, 2, 1, N'Đơn hàng mới #40 từ người dùng tamnm', N'confirmed', CAST(N'2025-03-16T12:24:43.687' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (2, 41, 2, 1, N'Đơn hàng mới #41 từ người dùng tamnm', N'confirmed', CAST(N'2025-03-16T13:02:41.793' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (3, 42, 2, 1, N'Đơn hàng mới #42 từ người dùng tamnm', N'canceled', CAST(N'2025-03-16T13:10:12.110' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (4, 42, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'canceled', CAST(N'2025-03-16T13:10:54.700' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (5, 43, 2, NULL, N'Đơn hàng mới #43 từ người dùng tamnm', N'completed', CAST(N'2025-03-16T13:17:42.727' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (6, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T13:28:26.110' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (7, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T13:28:28.200' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (8, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T13:28:28.610' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (9, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T13:28:28.980' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (10, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T13:28:29.270' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (11, 44, 2, NULL, N'Đơn hàng mới #44 từ người dùng tamnm', N'completed', CAST(N'2025-03-16T13:32:15.763' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (12, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T14:45:29.843' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (13, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T14:45:40.700' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (14, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T14:45:40.953' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (15, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T14:45:41.287' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (16, 43, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'completed', CAST(N'2025-03-16T14:45:41.913' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (17, 44, 2, NULL, N'Đơn hàng của bạn đã hoàn thành!', N'completed', CAST(N'2025-03-16T15:47:25.897' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (18, 44, 2, NULL, N'Đơn hàng của bạn đã hoàn thành!', N'completed', CAST(N'2025-03-16T15:47:34.533' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (19, 44, 2, NULL, N'Đơn hàng của bạn đã hoàn thành!', N'completed', CAST(N'2025-03-16T15:54:29.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (20, 44, 2, NULL, N'Đơn hàng của bạn đã hoàn thành!', N'completed', CAST(N'2025-03-16T16:02:01.480' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (21, 43, 2, NULL, N'Đơn hàng của bạn đã hoàn thành!', N'completed', CAST(N'2025-03-16T16:02:10.483' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (22, 45, 2, NULL, N'Đơn hàng mới #45 từ người dùng tamnm', N'completed', CAST(N'2025-03-16T16:02:45.837' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (23, 45, 2, NULL, N'Đơn hàng của bạn đã hoàn thành!', N'completed', CAST(N'2025-03-16T16:03:00.063' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (24, 46, 2, NULL, N'Đơn hàng mới #46 từ người dùng tamnm', N'canceled', CAST(N'2025-03-16T16:15:43.413' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (25, 47, 2, NULL, N'Đơn hàng mới #47 từ người dùng tamnm', N'completed', CAST(N'2025-03-16T16:16:03.233' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (26, 47, 2, NULL, N'Đơn hàng của bạn đã hoàn thành!', N'completed', CAST(N'2025-03-16T16:16:14.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (27, 46, 2, NULL, N'Đơn hàng của bạn đã bị hủy!', N'canceled', CAST(N'2025-03-16T16:16:20.037' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (28, 48, 2, NULL, N'New order #48 awaiting confirmation.', N'completed', CAST(N'2025-03-16T18:09:56.910' AS DateTime), N'fasdfsf', N'sdfdsf', N'sdfsdf', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (29, 49, 2, NULL, N'New order #49 awaiting confirmation.', N'completed', CAST(N'2025-03-16T18:12:03.150' AS DateTime), N'dasd', N'asdas', N'asda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (30, 48, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T18:14:39.057' AS DateTime), N'fasdfsf', N'sdfdsf', N'sdfsdf', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (31, 50, 2, NULL, N'New order #50 awaiting confirmation.', N'completed', CAST(N'2025-03-16T18:21:00.450' AS DateTime), N'saada', N'asdasd', N'asda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
ADIDAS F50 PRO TF (Size: 39, Quantity: 1): $110.0
ADIDAS PREDATOR 24 ELITE TF (Size: 39, Quantity: 1): $110.0
NIKE ZOOM MERCURIAL VAPOR 16 ACADEMY TF (Size: 39, Quantity: 1): $78.0
', 605.36)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (32, 50, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T18:21:15.110' AS DateTime), N'saada', N'asdasd', N'asda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
ADIDAS F50 PRO TF (Size: 39, Quantity: 1): $110.0
ADIDAS PREDATOR 24 ELITE TF (Size: 39, Quantity: 1): $110.0
NIKE ZOOM MERCURIAL VAPOR 16 ACADEMY TF (Size: 39, Quantity: 1): $78.0
', 605.36)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (33, 51, 2, NULL, N'New order #51 awaiting confirmation.', N'completed', CAST(N'2025-03-16T18:32:58.820' AS DateTime), N'wadada', N'eweqe', N'qweq', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 2): $234.96
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 3): $318.0
NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
ADIDAS F50 PRO TF (Size: 39, Quantity: 1): $110.0
ADIDAS PREDATOR 24 ELITE TF (Size: 39, Quantity: 1): $110.0
NIKE ZOOM MERCURIAL VAPOR 16 ACADEMY TF (Size: 39, Quantity: 1): $78.0
', 1040.8400000000002)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (34, 51, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T18:33:12.357' AS DateTime), N'wadada', N'eweqe', N'qweq', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 2): $234.96
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 3): $318.0
NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
ADIDAS F50 PRO TF (Size: 39, Quantity: 1): $110.0
ADIDAS PREDATOR 24 ELITE TF (Size: 39, Quantity: 1): $110.0
NIKE ZOOM MERCURIAL VAPOR 16 ACADEMY TF (Size: 39, Quantity: 1): $78.0
', 1040.8400000000002)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (35, 52, 2, NULL, N'New order #52 awaiting confirmation.', N'completed', CAST(N'2025-03-16T18:40:07.770' AS DateTime), N'adasdaa', N'sdadada', N'adsasda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
ADIDAS F50 PRO TF (Size: 39, Quantity: 1): $110.0
ADIDAS PREDATOR 24 ELITE TF (Size: 39, Quantity: 1): $110.0
NIKE ZOOM MERCURIAL VAPOR 16 ACADEMY TF (Size: 39, Quantity: 1): $78.0
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $106.0
', 711.36)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (36, 52, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T18:40:24.170' AS DateTime), N'adasdaa', N'sdadada', N'adsasda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
ADIDAS F50 PRO TF (Size: 39, Quantity: 1): $110.0
ADIDAS PREDATOR 24 ELITE TF (Size: 39, Quantity: 1): $110.0
NIKE ZOOM MERCURIAL VAPOR 16 ACADEMY TF (Size: 39, Quantity: 1): $78.0
NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $106.0
', 711.36)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (37, 53, 2, NULL, N'New order #53 awaiting confirmation.', N'completed', CAST(N'2025-03-16T18:41:19.913' AS DateTime), N'ewawe', N'qweqe', N'qweqe', NULL, N'NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
', 103.7)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (38, 53, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T18:41:31.410' AS DateTime), N'ewawe', N'qweqe', N'qweqe', NULL, N'NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
', 103.7)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (39, 54, 2, NULL, N'New order #54 awaiting confirmation.', N'completed', CAST(N'2025-03-16T18:46:29.523' AS DateTime), N'asdad', N'asdasd', N'asdad', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (40, 54, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T18:46:42.300' AS DateTime), N'asdad', N'asdasd', N'asdad', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (41, 55, 2, NULL, N'New order #55 awaiting confirmation.', N'completed', CAST(N'2025-03-16T18:51:55.640' AS DateTime), N'asdasd', N'adsada', N'adsa', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (42, 55, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T18:52:05.600' AS DateTime), N'asdasd', N'adsada', N'adsa', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (43, 56, 2, NULL, N'New order #56 awaiting confirmation.', N'completed', CAST(N'2025-03-16T19:01:37.197' AS DateTime), N'eqweq', N'weqqeq', N'qewq', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
', 86.18)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (44, 56, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T19:01:48.720' AS DateTime), N'eqweq', N'weqqeq', N'qewq', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
', 86.18)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (45, 56, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T19:01:57.630' AS DateTime), N'eqweq', N'weqqeq', N'qewq', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $86.18
', 86.18)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (46, 57, 2, NULL, N'New order #57 awaiting confirmation.', N'completed', CAST(N'2025-03-16T19:04:53.097' AS DateTime), N'aewa', N'aweaw', N'awe', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (47, 57, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T19:05:02.200' AS DateTime), N'aewa', N'aweaw', N'awe', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (48, 58, 2, NULL, N'New order #58 awaiting confirmation.', N'completed', CAST(N'2025-03-16T19:09:48.513' AS DateTime), N'adasd', N'sdad', N'asda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (49, 58, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T19:09:58.353' AS DateTime), N'adasd', N'sdad', N'asda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (50, 59, 2, NULL, N'New order #59 awaiting confirmation.', N'completed', CAST(N'2025-03-16T19:14:30.240' AS DateTime), N'adad', N'sadsa', N'adsada', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (51, 59, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T19:14:44.977' AS DateTime), N'adad', N'sadsa', N'adsada', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (52, 60, 2, NULL, N'New order #60 awaiting confirmation.', N'completed', CAST(N'2025-03-16T19:19:32.873' AS DateTime), N'wsada', N'asdasd', N'asda', NULL, N'NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
', 103.7)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (53, 60, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T19:19:42.610' AS DateTime), N'wsada', N'asdasd', N'asda', NULL, N'NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
', 103.7)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (54, 61, 2, NULL, N'New order #61 awaiting confirmation.', N'completed', CAST(N'2025-03-16T19:22:47.423' AS DateTime), N'asdad', N'zxsx', N'asda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (55, 61, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T19:22:58.460' AS DateTime), N'asdad', N'zxsx', N'asda', NULL, N'NIKE PHANTOM GX 2 PRO TF (Size: 39, Quantity: 1): $117.48
', 117.48)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (56, 62, 2, NULL, N'New order #62 awaiting confirmation.', N'completed', CAST(N'2025-03-16T19:26:21.483' AS DateTime), N'qew', N'ewe', N'qwe', NULL, N'NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
', 103.7)
INSERT [dbo].[Notifications] ([Notification_ID], [Order_ID], [User_ID], [Admin_ID], [Message], [Status], [Created_At], [FullName], [PhoneNumber], [Address], [PaymentMethod], [OrderDetails], [TotalPrice]) VALUES (57, 62, 2, NULL, N'Your order has been confirmed!', N'completed', CAST(N'2025-03-16T19:26:30.847' AS DateTime), N'qew', N'ewe', N'qwe', NULL, N'NIKE TIEMPO LEGEND 10 PRO TF (Size: 39, Quantity: 1): $103.7
', 103.7)
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Items] ON 

INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (1, 1, 12, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (2, 2, 7, 1, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (3, 3, 8, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (4, 4, 9, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (5, 5, 8, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (6, 5, 47, 1, CAST(63.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (7, 6, 7, 1, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (8, 7, 57, 2, CAST(105.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (9, 7, 51, 1, CAST(63.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (10, 7, 31, 1, CAST(105.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (11, 7, 22, 5, CAST(106.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (12, 8, 11, 1, CAST(106.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (13, 9, 16, 1, CAST(89.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (14, 10, 16, 1, CAST(89.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (15, 11, 15, 1, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (16, 12, 15, 1, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (17, 13, 8, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (18, 14, 8, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (19, 15, 8, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (20, 16, 8, 4, CAST(108.00 AS Decimal(10, 2)), N'41')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (21, 17, 8, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (22, 18, 9, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (23, 19, 9, 3, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (24, 20, 9, 2, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (25, 21, 9, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (26, 22, 9, 1, CAST(108.00 AS Decimal(10, 2)), N'41')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (27, 22, 7, 2, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (28, 23, 7, 1, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (29, 24, 7, 2, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (30, 25, 11, 2, CAST(106.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (31, 26, 7, 1, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (32, 27, 15, 1, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (33, 28, 16, 1, CAST(89.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (34, 29, 16, 1, CAST(89.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (35, 30, 14, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (36, 31, 9, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (37, 32, 10, 1, CAST(106.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (38, 33, 9, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (39, 34, 8, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (40, 34, 12, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (41, 34, 14, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (42, 34, 15, 1, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (43, 35, 8, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (45, 37, 18, 3, CAST(78.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (46, 37, 15, 2, CAST(77.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (47, 37, 20, 1, CAST(108.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (50, 40, 8, 1, CAST(86.18 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (51, 41, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (52, 42, 8, 2, CAST(86.18 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (53, 43, 8, 1, CAST(86.18 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (54, 43, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (55, 43, 10, 1, CAST(103.70 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (56, 43, 12, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (57, 43, 18, 1, CAST(78.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (58, 44, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (59, 45, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (60, 46, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (61, 47, 7, 1, CAST(68.22 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (62, 48, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (63, 49, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (64, 50, 8, 1, CAST(86.18 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (65, 50, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (66, 50, 10, 1, CAST(103.70 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (67, 50, 12, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (68, 50, 14, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (69, 50, 18, 1, CAST(78.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (70, 51, 9, 2, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (71, 51, 22, 3, CAST(106.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (72, 51, 8, 1, CAST(86.18 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (73, 51, 10, 1, CAST(103.70 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (74, 51, 12, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (75, 51, 14, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (76, 51, 18, 1, CAST(78.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (77, 52, 8, 1, CAST(86.18 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (78, 52, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (79, 52, 10, 1, CAST(103.70 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (80, 52, 12, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (81, 52, 14, 1, CAST(110.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (82, 52, 18, 1, CAST(78.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (83, 52, 22, 1, CAST(106.00 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (84, 53, 10, 1, CAST(103.70 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (85, 54, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (86, 55, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (87, 56, 8, 1, CAST(86.18 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (88, 57, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (89, 58, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (90, 59, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (91, 60, 10, 1, CAST(103.70 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (92, 61, 9, 1, CAST(117.48 AS Decimal(10, 2)), N'39')
INSERT [dbo].[Order_Items] ([Order_Item_ID], [Order_ID], [Product_ID], [Quantity], [Unit_Price], [Size]) VALUES (93, 62, 10, 1, CAST(103.70 AS Decimal(10, 2)), N'39')
SET IDENTITY_INSERT [dbo].[Order_Items] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (1, 2, CAST(N'2025-02-16T20:41:49.363' AS DateTime), CAST(110.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (2, 3, CAST(N'2025-02-21T11:26:09.820' AS DateTime), CAST(77.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (3, 3, CAST(N'2025-02-21T11:26:53.000' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (4, 3, CAST(N'2025-02-21T11:27:36.417' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (5, 2, CAST(N'2025-02-28T00:34:15.553' AS DateTime), CAST(171.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (6, 2, CAST(N'2025-03-02T19:28:26.830' AS DateTime), CAST(77.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (7, 2, CAST(N'2025-03-02T20:27:22.630' AS DateTime), CAST(908.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (8, 2, CAST(N'2025-03-03T11:32:12.297' AS DateTime), CAST(106.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (9, 2, CAST(N'2025-03-03T11:34:18.010' AS DateTime), CAST(89.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (10, 2, CAST(N'2025-03-03T11:35:07.013' AS DateTime), CAST(89.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (11, 2, CAST(N'2025-03-04T22:38:34.617' AS DateTime), CAST(77.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (12, 2, CAST(N'2025-03-05T07:23:38.783' AS DateTime), CAST(77.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (13, 2, CAST(N'2025-03-05T08:50:49.357' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (14, 2, CAST(N'2025-03-05T08:58:36.930' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (15, 2, CAST(N'2025-03-05T20:08:28.790' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (16, 2, CAST(N'2025-03-06T00:13:26.820' AS DateTime), CAST(432.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (17, 2, CAST(N'2025-03-06T11:47:59.007' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (18, 2, CAST(N'2025-03-06T11:56:58.500' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (19, 2, CAST(N'2025-03-06T11:57:08.123' AS DateTime), CAST(324.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (20, 2, CAST(N'2025-03-06T11:57:22.360' AS DateTime), CAST(216.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (21, 2, CAST(N'2025-03-06T11:59:04.063' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (22, 2, CAST(N'2025-03-06T18:45:00.477' AS DateTime), CAST(262.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (23, 2, CAST(N'2025-03-06T18:54:01.910' AS DateTime), CAST(77.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (24, 2, CAST(N'2025-03-06T18:54:11.950' AS DateTime), CAST(154.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (25, 2, CAST(N'2025-03-06T18:55:01.583' AS DateTime), CAST(212.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (26, 2, CAST(N'2025-03-06T18:56:40.660' AS DateTime), CAST(77.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (27, 2, CAST(N'2025-03-06T19:02:55.597' AS DateTime), CAST(77.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (28, 2, CAST(N'2025-03-06T19:04:46.367' AS DateTime), CAST(89.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (29, 2, CAST(N'2025-03-06T19:04:53.277' AS DateTime), CAST(89.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (30, 2, CAST(N'2025-03-06T19:33:08.643' AS DateTime), CAST(110.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (31, 2, CAST(N'2025-03-06T20:41:35.833' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (32, 2, CAST(N'2025-03-06T20:50:22.240' AS DateTime), CAST(106.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (33, 2, CAST(N'2025-03-06T21:05:31.063' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (34, 2, CAST(N'2025-03-09T20:55:38.837' AS DateTime), CAST(405.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (35, 2, CAST(N'2025-03-12T14:38:51.547' AS DateTime), CAST(108.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (37, 2, CAST(N'2025-03-16T02:06:01.417' AS DateTime), CAST(496.00 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (40, 2, CAST(N'2025-03-16T12:24:39.807' AS DateTime), CAST(86.18 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (41, 2, CAST(N'2025-03-16T13:02:37.837' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (42, 2, CAST(N'2025-03-16T13:10:08.383' AS DateTime), CAST(172.36 AS Decimal(10, 2)), N'canceled')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (43, 2, CAST(N'2025-03-16T13:17:38.863' AS DateTime), CAST(495.36 AS Decimal(10, 2)), N'completed')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (44, 2, CAST(N'2025-03-16T13:32:12.090' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'completed')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (45, 2, CAST(N'2025-03-16T16:02:41.433' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (46, 2, CAST(N'2025-03-16T16:15:39.330' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (47, 2, CAST(N'2025-03-16T16:15:59.543' AS DateTime), CAST(68.22 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (48, 2, CAST(N'2025-03-16T18:09:56.867' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (49, 2, CAST(N'2025-03-16T18:12:03.093' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (50, 2, CAST(N'2025-03-16T18:21:00.410' AS DateTime), CAST(605.36 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (51, 2, CAST(N'2025-03-16T18:32:58.777' AS DateTime), CAST(1040.84 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (52, 2, CAST(N'2025-03-16T18:40:07.733' AS DateTime), CAST(711.36 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (53, 2, CAST(N'2025-03-16T18:41:19.870' AS DateTime), CAST(103.70 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (54, 2, CAST(N'2025-03-16T18:46:29.487' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (55, 2, CAST(N'2025-03-16T18:51:55.603' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (56, 2, CAST(N'2025-03-16T19:01:37.163' AS DateTime), CAST(86.18 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (57, 2, CAST(N'2025-03-16T19:04:53.060' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (58, 2, CAST(N'2025-03-16T19:09:48.463' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (59, 2, CAST(N'2025-03-16T19:14:30.207' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (60, 2, CAST(N'2025-03-16T19:19:32.843' AS DateTime), CAST(103.70 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (61, 2, CAST(N'2025-03-16T19:22:47.393' AS DateTime), CAST(117.48 AS Decimal(10, 2)), N'pending')
INSERT [dbo].[Orders] ([Order_ID], [User_ID], [Order_Date], [Total_Price], [Status]) VALUES (62, 2, CAST(N'2025-03-16T19:26:21.447' AS DateTime), CAST(103.70 AS Decimal(10, 2)), N'pending')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (7, N'ADIDAS TOP SALA COMPETITION', CAST(68.22 AS Decimal(10, 2)), 100, N'39, 40, 41', N'White/Red', N'https://product.hstatic.net/200000278317/product/hung-futsal-giay-da-bong-adidas-top-sala-competition-ig8763-trang-do-1_79e2081dc2eb463ebe41d4378ecef1c3_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', CAST(77.00 AS Decimal(10, 2)), CAST(11.40 AS Decimal(5, 2)), CAST(N'2025-03-16T00:00:00.000' AS DateTime), CAST(N'2025-03-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (8, N'NIKE PHANTOM GX 2 PRO TF', CAST(86.18 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Green', N'https://product.hstatic.net/200000278317/product/utsal-giay-da-bong-nike-phantom-gx2-pro-tf-fj2583-003-xam-xanh-chuoi-1_d57ef02934a84e23936df310abec12e6_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', CAST(108.00 AS Decimal(10, 2)), CAST(20.20 AS Decimal(5, 2)), CAST(N'2025-03-16T00:00:00.000' AS DateTime), CAST(N'2025-03-29T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (9, N'NIKE PHANTOM GX 2 PRO TF', CAST(117.48 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Green', N'https://product.hstatic.net/200000278317/product/utsal-giay-da-bong-nike-phantom-gx2-pro-tf-fj2583-003-xam-xanh-chuoi-1_d57ef02934a84e23936df310abec12e6_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', CAST(132.00 AS Decimal(10, 2)), CAST(11.00 AS Decimal(5, 2)), CAST(N'2025-03-16T00:00:00.000' AS DateTime), CAST(N'2025-03-19T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (10, N'NIKE TIEMPO LEGEND 10 PRO TF', CAST(103.70 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Grey/Blue', N'https://product.hstatic.net/200000278317/product/-giay-da-bong-nike-tiempo-legend-10-pro-tf-dv4336-001-xam-xanh-chuoi-1_1cb89fd59bfa4e278b87c17d7ee718e9_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', CAST(121.00 AS Decimal(10, 2)), CAST(14.30 AS Decimal(5, 2)), CAST(N'2025-03-16T00:00:00.000' AS DateTime), CAST(N'2025-03-18T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (11, N'NIKE TIEMPO LEGEND 10 ACADEMY TF', CAST(79.74 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Grey/Blue', N'https://product.hstatic.net/200000278317/product/-giay-da-bong-nike-tiempo-legend-10-pro-tf-dv4336-001-xam-xanh-chuoi-1_1cb89fd59bfa4e278b87c17d7ee718e9_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', CAST(89.00 AS Decimal(10, 2)), CAST(10.40 AS Decimal(5, 2)), CAST(N'2025-03-16T00:00:00.000' AS DateTime), CAST(N'2025-03-18T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (12, N'ADIDAS F50 PRO TF', CAST(110.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Red/Black', N'https://product.hstatic.net/200000278317/product/thanh-hung-futsal-giay-da-bong-adidas-f50-pro-tf-if1324-do-den-1_ff28246f7f4d46b897edf6a27ed38d75_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (13, N'ADIDAS F50 LEAGUE TF', CAST(77.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Red/Orange', N'https://product.hstatic.net/200000278317/product/thanh-hung-futsal-giay-da-bong-adidas-f50-league-tf-if1335-do-cam-1_a9b6c46a91374f6da090f8058878530b_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (14, N'ADIDAS PREDATOR 24 ELITE TF', CAST(110.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Gray/Purple', N'https://product.hstatic.net/200000278317/product/-hung-futsal-giay-da-bong-adidas-predator-24-elite-tf-if6373-xam-tim-1_d978effdfb2d45c99cee117494c19261_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (15, N'ADIDAS COPA PURE 2 LEAGUE TF', CAST(77.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Purple/Silver', N'https://product.hstatic.net/200000278317/product/hung-futsal-giay-da-bong-adidas-copa-pure-2-league-tf-ig8720-tim-bac-1_fc0965d020fd4b8188e8757c7937c600_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (16, N'NIKE ZOOM MERCURIAL SUPERFLY 10 ACADEMY KM TF', CAST(89.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Yellow/Orange', N'https://product.hstatic.net/200000278317/product/ong-nike-zoom-mercurial-superfly-9-academy-km-tf-fq8333-800-vang-cam-1_18a007fffefe443ba0adcb73ffeba855_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (17, N'NIKE ZOOM MERCURIAL VAPOR 16 PRO TF', CAST(108.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue', N'https://product.hstatic.net/200000278317/product/-giay-da-bong-nike-zoom-mercurial-vapor-16-pro-tf-fq8687-400-xanh-lo-1_1c0738fae09444d28597ca180cdd9eb8_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (18, N'NIKE ZOOM MERCURIAL VAPOR 16 ACADEMY TF', CAST(78.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue', N'https://product.hstatic.net/200000278317/product/y-da-bong-nike-zoom-mercurial-vapor-16-academy-tf-fq8449-400-xanh-lo-1_ca56ffadbb094dc4867ce5cee3b9b853_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (19, N'NIKE ZOOM MERCURIAL SUPERFLY 10 ACADEMY TF', CAST(89.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue', N'https://product.hstatic.net/200000278317/product/a-bong-nike-zoom-mercurial-superfly-10-academy-tf-fq8331-400-xanh-lo-1_8f0742b2a9a14a0286372af40f19366a_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (20, N'NIKE PHANTOM GX 2 PRO TF', CAST(108.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue', N'https://product.hstatic.net/200000278317/product/ng-futsal-giay-da-bong-nike-phantom-gx-2-pro-tf-fj2583-400-xanh-bien-1_b7e59f2e57894ea29f3d1a938ebc8eb2_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (21, N'NIKE PHANTOM LUNA 2 ACADEMY TF', CAST(89.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue', N'https://product.hstatic.net/200000278317/product/utsal-giay-da-bong-nike-phantom-luna-2-academy-tf-fj2566-400-xanh-lo-1_b68f445be375412897f068e46fe360a3_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (22, N'NIKE TIEMPO LEGEND 10 PRO TF', CAST(106.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue/White', N'https://product.hstatic.net/200000278317/product/tsal-giay-da-bong-nike-tiempo-legend-10-pro-tf-dv4336-400-xanh-trang-1_c2079b050a484c4699473563b10a0aab_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (23, N'NIKE TIEMPO LEGEND 10 ACADEMY TF', CAST(78.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue/White', N'https://product.hstatic.net/200000278317/product/-giay-da-bong-nike-tiempo-legend-10-academy-tf-dv4342-400-xanh-trang-1_c1dfde216acc47ec86f2734129ef1ef4_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (24, N'NIKE PREMIER III TF', CAST(80.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Black/White', N'https://product.hstatic.net/200000278317/product/nh-hung-futsal-giay-da-bong-nike-premier-iii-tf-hm0283-001-den-trang-1_accde2d2f8d54067b71da424ca71fdd5_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (25, N'NIKE STREET GATO', CAST(85.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Grey/Blue', N'https://product.hstatic.net/200000278317/product/thanh-hung-futsal-giay-da-bong-nike-street-gato-dc8466-102-xam-xanh-1_3c4c40a072b14e24a147af82815d692a_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (26, N'NIKE LUNAR GATO II', CAST(77.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Black/Yellow', N'https://product.hstatic.net/200000278317/product/giay-da-bong-nike-lunar-gato-ii-580456-009-xanh-trang-1_a8ce30185d2d4a79a875fae62b7d0d57_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (27, N'NIKE LUNAR GATO II', CAST(89.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Grey/Blue', N'https://product.hstatic.net/200000278317/product/giay-da-bong-nike-lunar-gato-ii-580456-010-xam-xanh-la-1_c6ce941b661345888128f0c16bbe5154_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (28, N'MIZUNO MORELIA SALA ELITE IN', CAST(114.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Neon Yellow/White', N'https://product.hstatic.net/200000278317/product/giay-da-bong-mizuno-morelia-sala-elite-in-q1ga240145-vang-neon-trang-1_d6a80d7f9d6e493b8899c8b4790630d2_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (29, N'MIZUNO MORELIA SALA ELITE IN', CAST(107.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'White/Red', N'https://product.hstatic.net/200000278317/product/futsal-giay-da-bong-mizuno-morelia-sala-elite-in-q1ga230164-trang-do-1_1fc77d568cbc4e1dbf78092d5d8f7f91_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (30, N'MIZUNO MORELIA SALA ELITE IN', CAST(113.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue/White', N'https://product.hstatic.net/200000278317/product/giay-da-banh-mizuno-morelia-sala-elite-in-q1ga230125-xanh-trang-1_875bfcc771d34b47890e86657add1d06_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (31, N'MIZUNO MORELIA NEO III PRO IN L?C VI?T LIMITED EDITION', CAST(105.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue/White', N'https://product.hstatic.net/200000278317/product/o-morelia-neo-iii-pro-in-lac-viet-limited-edition-q1gb228444-do-vang-1_3f5c9f9ebcd040d7a9a3aa5dbe399f7c_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (32, N'ADIDAS TOP SALA COMPETITION', CAST(78.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'White/Red', N'https://product.hstatic.net/200000278317/product/hung-futsal-giay-da-bong-adidas-top-sala-competition-ig8763-trang-do-1_79e2081dc2eb463ebe41d4378ecef1c3_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (33, N'ADIDAS TOP SALA COMPETITION', CAST(70.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Red/White', N'https://product.hstatic.net/200000278317/product/giay-da-bong-adidas-top-sala-competition-ie1546-do-trang-1_fe32cc7d035b43c99c6df7cdd68ef593_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (34, N'ADIDAS COPA GLORO IN', CAST(69.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue/White', N'https://product.hstatic.net/200000278317/product/hung-futsal-giay-da-bong-adidas-top-sala-competition-ie7551-xam-xanh-1_90be0e83fcba4053846902e94e217fdc_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (35, N'ADIDAS TOP SALA COMPETITION', CAST(70.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Red', N'https://product.hstatic.net/200000278317/product/ung-futsal-giay-da-bong-adidas-top-sala-competition-ie7549-do-bac-do-1_654909908641442898c5f6367229dc9d_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (36, N'ADIDAS TOP SALA COMPETITION', CAST(66.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Black/Red', N'https://product.hstatic.net/200000278317/product/giay-da-bong-adidas-top-sala-competition-ie1546-den-do-1_ce7daaa1522a4a45aea4e9c601b8c972_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (47, N'JOMA TOP FLEX TF', CAST(63.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Yellow/Red', N'https://product.hstatic.net/200000278317/product/thanh-hung-futsal-giay-da-bong-joma-top-flex-2328-tf-vang-do-1_9526215fd8bc4477be68a49e12ff2ac1_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (51, N'JOMA TOP FLEX TF', CAST(63.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'White/Yellow', N'https://product.hstatic.net/200000278317/product/thanh-hung-futsal-giay-da-bong-joma-top-flex-2342-tf-trang-vang-1_e1e94baf01824c559c94aecd11e1b662_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (52, N'JOMA TOP FLEX TF', CAST(63.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Yellow', N'https://product.hstatic.net/200000278317/product/giay-da-bong-joma-top-flex-tf-2309-vang-neon-1_0e6bc78a89bf4e31884a343d47036123_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (53, N'JOMA TOP FLEX TF', CAST(63.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue/Black', N'https://product.hstatic.net/200000278317/product/giay-da-bong-joma-top-flex-tf-2304-xanh-den-1_fd94cbfb98854676a96a197395c79d29_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (56, N'JOMA KANGAROO MORIENTES TF', CAST(71.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Red', N'https://product.hstatic.net/200000278317/product/giay-da-banh-joma-morientes-tf-3126xp5022-do-do-1_c70ea83714d045d69901317e26f6d3ca_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (57, N'PUMA FUTURE 7 PRO CAGE', CAST(105.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Blue', N'https://product.hstatic.net/200000278317/product/g-futsal-giay-da-bong-puma-future-7-pro-cage-tt-107923-01-xanh-duong-1_3119b2ae2e594446a2a738ad0c3b6b43_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (59, N'PUMA ULTRA 5 MATCH TT', CAST(82.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Purple', N'https://product.hstatic.net/200000278317/product/nh-hung-futsal-giay-da-bong-puma-ultra-5-match-tt-107892-01-tim-than-1_fb152cbe97fd44e888d5529a7f2ea672_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (60, N'PUMA ULTRA 5 MATCH VOL UP TT', CAST(82.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'White/Blue/Pink', N'https://product.hstatic.net/200000278317/product/-giay-da-bong-puma-ultra-5-match-vol-up-tt-108091-01-trang-xanh-hong-1_45dfe18a48224506929c287f11fa0352_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (65, N'PUMA ULTRA ULTIMATE CAGE', CAST(77.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Yellow/Orange', N'https://product.hstatic.net/200000278317/product/hung-futsal-giay-da-bong-puma-ultra-ultimate-cage-107745-03-vang-cam-1_a1729d8b10b641348601c6ea87d4c35b_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (66, N'PUMA ULTRA ULTIMATE CAGE', CAST(77.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'White/Pink', N'https://product.hstatic.net/200000278317/product/futsal-giay-da-bong-puma-ultra-ultimate-cage-tt-107745-01-hong-trang-1_a1ad65ef09f340dfb8b171332d3b3635_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (67, N'KAMITO FUTSAL TA11', CAST(32.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Red/Pink', N'https://product.hstatic.net/200000278317/product/giay-da-bong-kamito-futsal-ta11-pro-kmi230211-do-hong-1_871c68f3bfb544a1a0c22056ef9b83e1_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (70, N'KAMITO FUTSAL VELOCIDAD IC FIRE BACK', CAST(24.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Yellow/White', N'https://product.hstatic.net/200000278317/product/futsal-giay-da-bong-kamito-futsal-velocidad-in-kmic240130-vang-trang-1_2b5bce2eac214dec8b677260a1911bc0_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'TF        ', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (71, N'KAMITO FUTSAL VELOCIDAD IC FIRE BACK', CAST(24.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Green', N'https://product.hstatic.net/200000278317/product/futsal-giay-da-bong-kamito-futsal-velocidad-ic-kmic240120-xanh-trang-1_6d1872fafbd8456cad84bc5ae64c4bb7_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (72, N'KAMITO FUTSAL TA11 PRO', CAST(36.00 AS Decimal(10, 2)), 100, N'39, 40, 41', N'Red/Pink', N'https://product.hstatic.net/200000278317/product/giay-da-bong-kamito-futsal-ta11-pro-kmi230111-do-hong-1_1f39d6616ad34bc5b39ed9a438b863b8_master.jpg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([Product_ID], [Product_Name], [Price], [Quantity], [Size], [Description], [Image], [Rate], [Type], [Original_Price], [Discount_Percent], [Discount_Start_Date], [Discount_End_Date], [Trademark_ID]) VALUES (78, N'Biti''s Hunter Football Futsal', CAST(112.20 AS Decimal(10, 2)), 100, N'40, 41, 43', N'Red', N'uploads/0022423_giay-da-bong-nam-bitis-hunter-football-hsm003600-mau-do_1000.jpeg', CAST(5.0 AS Decimal(2, 1)), N'IC        ', CAST(132.00 AS Decimal(10, 2)), CAST(15.00 AS Decimal(5, 2)), CAST(N'2025-03-16T00:00:00.000' AS DateTime), CAST(N'2025-03-18T00:00:00.000' AS DateTime), 12)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Trademark] ON 

INSERT [dbo].[Trademark] ([Trademark_ID], [Trademark_Name]) VALUES (1, N'Adidas')
INSERT [dbo].[Trademark] ([Trademark_ID], [Trademark_Name]) VALUES (12, N'Bitis')
INSERT [dbo].[Trademark] ([Trademark_ID], [Trademark_Name]) VALUES (2, N'Joma')
INSERT [dbo].[Trademark] ([Trademark_ID], [Trademark_Name]) VALUES (3, N'Kamito')
INSERT [dbo].[Trademark] ([Trademark_ID], [Trademark_Name]) VALUES (4, N'Mizuno')
INSERT [dbo].[Trademark] ([Trademark_ID], [Trademark_Name]) VALUES (5, N'Nike')
INSERT [dbo].[Trademark] ([Trademark_ID], [Trademark_Name]) VALUES (6, N'Puma')
SET IDENTITY_INSERT [dbo].[Trademark] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([User_ID], [User_Name], [Password], [Email], [Phone], [Address], [DOB], [Role]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin@example.com', N'0123456789', N'123 Admin Street', CAST(N'1990-01-01' AS Date), N'admin')
INSERT [dbo].[Users] ([User_ID], [User_Name], [Password], [Email], [Phone], [Address], [DOB], [Role]) VALUES (2, N'tamnm', N'f7feb14191fd7c3a03ca0b75f450ae26', N'tamnmce181522@fpt.edu.vn', N'0933561709', N'Cantho', CAST(N'2004-03-05' AS Date), N'customer')
INSERT [dbo].[Users] ([User_ID], [User_Name], [Password], [Email], [Phone], [Address], [DOB], [Role]) VALUES (3, N'thien', N'9dfee72b8839f5007e30b4d9a1ec386c', N'ngocthien281204@gmail.com', N'0981260124', N'Vn', CAST(N'2025-02-28' AS Date), N'customer')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Trademar__E3225FC9A7DFCABE]    Script Date: 16/03/2025 8:39:01 CH ******/
ALTER TABLE [dbo].[Trademark] ADD UNIQUE NONCLUSTERED 
(
	[Trademark_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D105340B6E4B15]    Script Date: 16/03/2025 8:39:01 CH ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT (getdate()) FOR [Created_At]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [Order_Date]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('pending') FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Discount_Percent]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('customer') FOR [Role]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([Product_ID])
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD FOREIGN KEY([Admin_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Orders] ([Order_ID])
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Order_Items]  WITH CHECK ADD FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Orders] ([Order_ID])
GO
ALTER TABLE [dbo].[Order_Items]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([Product_ID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Trademark] FOREIGN KEY([Trademark_ID])
REFERENCES [dbo].[Trademark] ([Trademark_ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Trademark]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD CHECK  (([Status]='canceled' OR [Status]='completed' OR [Status]='pending'))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([Role]='customer' OR [Role]='admin'))
GO
