USE [master]
GO
/****** Object:  Database [Assignment_PRJ301]    Script Date: 7/30/2023 9:07:37 AM ******/
CREATE DATABASE [Assignment_PRJ301]
USE [Assignment_PRJ301]
GO
/****** Object:  Table [dbo].[Bed]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bed](
	[BedId] [int] NOT NULL,
	[RoomId] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BedId] ASC,
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangeRoomRequest]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangeRoomRequest](
	[UserId1] [varchar](8) NOT NULL,
	[UserId2] [varchar](8) NULL,
	[RoomId1] [varchar](4) NULL,
	[BedId1] [int] NULL,
	[RoomId2] [varchar](4) NULL,
	[BedId2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dormitory]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dormitory](
	[DomId] [int] NOT NULL,
	[DomName] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[DomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fee]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee](
	[UserId] [varchar](8) NOT NULL,
	[Fee] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[UserId] [varchar](8) NOT NULL,
	[SemesterId] [varchar](4) NOT NULL,
	[BedId] [int] NULL,
	[RoomId] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestBooking]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestBooking](
	[UserId] [varchar](8) NULL,
	[RoomId] [varchar](4) NOT NULL,
	[BedId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BedId] ASC,
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestContact]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestContact](
	[UserId] [varchar](8) NULL,
	[Phone] [varchar](10) NULL,
	[Message] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [varchar](4) NOT NULL,
	[DomId] [int] NULL,
	[CategoryId] [int] NULL,
	[Gender] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomCategory]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCategory](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterId] [varchar](4) NOT NULL,
	[SemesterName] [nvarchar](255) NULL,
	[StartTime] [date] NULL,
	[EndTime] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/30/2023 9:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nvarchar](255) NULL,
	[UserId] [varchar](8) NOT NULL,
	[UserDob] [date] NULL,
	[UserGender] [bit] NULL,
	[Password] [nvarchar](255) NULL,
	[isAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'A304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'B304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'C304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'D304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'E304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (1, N'F304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'A304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'B304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C104')
GO
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'C304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'D304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'E304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (2, N'F304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'A304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'B304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'C304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'D304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E204')
GO
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'E304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (3, N'F304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'A304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'B304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'C304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D301')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D302')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D303')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'D304')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'E101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'E102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'E103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'E104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'F101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'F102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'F103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (4, N'F104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'A101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'A102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'A103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'A104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'A201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'A202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'A203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'A204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'B101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'B102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'B103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'B104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'B201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'B202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'B203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (5, N'B204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'A101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'A102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'A103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'A104')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'A201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'A202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'A203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'A204')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'B101')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'B102')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'B103')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'B104')
GO
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'B201')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'B202')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'B203')
INSERT [dbo].[Bed] ([BedId], [RoomId]) VALUES (6, N'B204')
GO
INSERT [dbo].[Dormitory] ([DomId], [DomName]) VALUES (1, N'A')
INSERT [dbo].[Dormitory] ([DomId], [DomName]) VALUES (2, N'B')
INSERT [dbo].[Dormitory] ([DomId], [DomName]) VALUES (3, N'C')
INSERT [dbo].[Dormitory] ([DomId], [DomName]) VALUES (4, N'D')
INSERT [dbo].[Dormitory] ([DomId], [DomName]) VALUES (5, N'E')
INSERT [dbo].[Dormitory] ([DomId], [DomName]) VALUES (6, N'F')
GO
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'ADMIN001', 800000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'ADMIN002', 700000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'ADMIN003', 900000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'ADMIN004', 900000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'ADMIN005', 566000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA150006', 8300000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA150263', 350000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA160001', 300000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA160004', 10000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA160009', 500000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA160441', 600000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA170111', 1700000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA170602', 1350000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA170808', 860000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA170821', 1300000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA170999', 4000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA171212', 1300000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA172134', 1200000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA176432', 800000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HA180213', 180000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE150022', 800000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE150062', 1400000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE150089', 456000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE150909', 1430000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE152222', 1350000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE156001', 90000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE160001', 1750000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE160002', 700000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE160008', 1234000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE160015', 4500000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE160023', 600000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE160662', 3050000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE160809', 7000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE161111', 300000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE161830', 560000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE161899', 700000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE162990', 170000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE163444', 600000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE164343', 1200000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE164448', 560000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE165423', 1000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170004', 1800000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170021', 100000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170025', 100000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170039', 8000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170223', 3700000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170245', 10000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170344', 8800000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170350', 400000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170390', 100000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170608', 3500000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170661', 7600000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170662', 3600000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170891', 850000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE170902', 3400000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE171199', 1200000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE171456', 6545000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE171661', 700000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE171717', 450000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE171919', 5000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE172555', 2300000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE17333', 1670000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE174231', 1030000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE174333', 1700000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE176003', 4500000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE176321', 1000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE176666', 650000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE176669', 100000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE176866', 2500000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE180008', 800000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE180009', 100000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE180034', 4000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE180309', 2630000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE180909', 3800000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE181569', 3000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE183330', 900000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE184545', 290000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HE186552', 400000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS150065', 7075000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS156001', 4000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS156002', 380000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS160002', 3400000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS160681', 220000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS161817', 3400000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS162201', 480000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS162301', 600000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS162478', 1200000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS163333', 200000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS170010', 2000000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS170071', 300000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS170098', 244000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS170301', 100000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS170401', 500000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS170701', 1900000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS174500', 860000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS180001', 340000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS180029', 400000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS180123', 400000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS180222', 4200000.0000)
INSERT [dbo].[Fee] ([UserId], [Fee]) VALUES (N'HS184378', 670000.0000)
GO
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA150006', N'Fa22', 6, N'A104')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA150006', N'Su22', 6, N'A104')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA150263', N'Fa22', 5, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA150263', N'Sp23', 5, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA150263', N'Su22', 5, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160001', N'Fa22', 3, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160001', N'Sp23', 3, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160001', N'Su22', 3, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160004', N'Fa22', 6, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160004', N'Sp23', 6, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160004', N'Su22', 6, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160009', N'Fa22', 1, N'F203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160009', N'Sp23', 1, N'F203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA160009', N'Su22', 1, N'F203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA170111', N'Fa22', 2, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA170602', N'Sp23', 1, N'C102')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA170999', N'Fa22', 1, N'F303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA170999', N'Sp23', 1, N'F303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA170999', N'Su22', 1, N'F303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA171212', N'Fa22', 1, N'A301')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA171212', N'Sp23', 1, N'A301')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA176432', N'Fa22', 4, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA176432', N'Sp23', 4, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HA176432', N'Su22', 4, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE150089', N'Fa22', 2, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE150089', N'Sp23', 2, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE150089', N'Su22', 2, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE150909', N'Fa22', 1, N'B204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE150909', N'Sp23', 1, N'B204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE150909', N'Su22', 1, N'B204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160001', N'Fa22', 1, N'E303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160001', N'Sp23', 1, N'E303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160002', N'Fa22', 2, N'F104')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160002', N'Sp23', 2, N'F104')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160002', N'Su22', 2, N'F104')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160008', N'Fa22', 2, N'F201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160008', N'Sp23', 2, N'F201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160008', N'Su22', 2, N'F201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160015', N'Fa22', 4, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160015', N'Sp23', 4, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160015', N'Su22', 4, N'A103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160809', N'Fa22', 3, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160809', N'Sp23', 3, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE160809', N'Su22', 3, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE161111', N'Fa22', 1, N'C301')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE161111', N'Sp23', 3, N'C301')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE161111', N'Su22', 1, N'C301')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE161899', N'Fa22', 2, N'E302')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE161899', N'Sp23', 2, N'E302')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE161899', N'Su22', 2, N'E302')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE162990', N'Fa22', 1, N'C103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE162990', N'Su22', 1, N'C103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE163444', N'Su22', 1, N'A301')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE164343', N'Fa22', 3, N'C204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE164343', N'Sp23', 3, N'C204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE164343', N'Su22', 3, N'C204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE164448', N'Fa22', 4, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE164448', N'Su22', 4, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE165423', N'Fa22', 1, N'F101')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE165423', N'Sp23', 4, N'A102')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170021', N'Fa22', 3, N'D304')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170021', N'Sp23', 3, N'D304')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170025', N'Fa22', 1, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170025', N'Sp23', 1, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170025', N'Su22', 1, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170039', N'Fa22', 4, N'A202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170039', N'Sp23', 4, N'A202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170039', N'Su22', 4, N'A202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170223', N'Su22', 3, N'E303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170344', N'Fa22', 1, N'E304')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170344', N'Sp23', 1, N'E304')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170344', N'Su22', 1, N'E304')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170350', N'Fa22', 2, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170350', N'Su22', 2, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170390', N'Fa22', 1, N'F302')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170390', N'Sp23', 1, N'F302')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170608', N'Fa22', 1, N'D304')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170608', N'Sp23', 1, N'D304')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170608', N'Su22', 1, N'D304')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170661', N'Fa22', 1, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170661', N'Sp23', 1, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170661', N'Su22', 1, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170662', N'Fa22', 3, N'E202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170662', N'Sp23', 3, N'E202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170662', N'Su22', 3, N'E202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170891', N'Sp23', 1, N'E204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170891', N'Su22', 4, N'D202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170902', N'Fa22', 3, N'B204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE170902', N'Su22', 3, N'B204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE171661', N'Fa22', 4, N'D101')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE171919', N'Sp23', 1, N'C301')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE172555', N'Fa22', 1, N'C102')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE172555', N'Su22', 1, N'C102')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE174231', N'Su22', 1, N'F101')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE174333', N'Fa22', 6, N'A101')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE174333', N'Sp23', 1, N'B201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176321', N'Fa22', 1, N'B202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176321', N'Sp23', 1, N'F101')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176321', N'Su22', 1, N'B202')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176666', N'Su22', 1, N'F302')
GO
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176669', N'Fa22', 3, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176669', N'Sp23', 3, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176669', N'Su22', 3, N'D204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176866', N'Fa22', 1, N'A104')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE176866', N'Sp23', 1, N'A104')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE180034', N'Sp23', 3, N'D101')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HE183330', N'Sp23', 2, N'D201')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS160002', N'Fa22', 5, N'B103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS160681', N'Fa22', 4, N'A203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS160681', N'Sp23', 4, N'A203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS160681', N'Su22', 4, N'A203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS162301', N'Fa22', 3, N'F203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS162301', N'Sp23', 3, N'F203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS162301', N'Su22', 3, N'F203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS162478', N'Fa22', 3, N'C103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS162478', N'Sp23', 3, N'C103')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS163333', N'Fa22', 2, N'E204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS163333', N'Sp23', 2, N'E204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS163333', N'Su22', 2, N'E204')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS170010', N'Fa22', 2, N'B303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS170071', N'Sp23', 6, N'B203')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS174500', N'Fa22', 2, N'E303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS174500', N'Sp23', 2, N'E303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS174500', N'Su22', 2, N'E303')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS180001', N'Sp23', 1, N'F104')
INSERT [dbo].[Order] ([UserId], [SemesterId], [BedId], [RoomId]) VALUES (N'HS180222', N'Sp23', 1, N'E202')
GO
INSERT [dbo].[RequestContact] ([UserId], [Phone], [Message]) VALUES (N'HE176321', N'0912345678', N'Em muốn đặt phòng.')
GO
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A101', 1, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A102', 1, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A103', 1, 3, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A104', 1, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A201', 1, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A202', 1, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A203', 1, 3, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A204', 1, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A301', 1, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A302', 1, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A303', 1, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'A304', 1, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B101', 2, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B102', 2, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B103', 2, 3, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B104', 2, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B201', 2, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B202', 2, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B203', 2, 3, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B204', 2, 3, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B301', 2, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B302', 2, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B303', 2, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'B304', 2, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C101', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C102', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C103', 3, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C104', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C201', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C202', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C203', 3, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C204', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C301', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C302', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C303', 3, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'C304', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D101', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D102', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D103', 4, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D104', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D201', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D202', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D203', 4, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D204', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D301', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D302', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D303', 4, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'D304', 4, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E101', 5, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E102', 5, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E103', 5, 2, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E104', 5, 2, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E201', 5, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E202', 5, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E203', 5, 1, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E204', 5, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E301', 5, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E302', 5, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E303', 5, 1, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'E304', 5, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F101', 6, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F102', 6, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F103', 6, 1, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F104', 6, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F201', 6, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F202', 6, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F203', 6, 1, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F204', 6, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F301', 6, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F302', 6, 1, 1)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F303', 6, 1, 0)
INSERT [dbo].[Room] ([RoomId], [DomId], [CategoryId], [Gender]) VALUES (N'F304', 6, 1, 1)
GO
INSERT [dbo].[RoomCategory] ([CategoryId], [CategoryName], [Price]) VALUES (1, N'Phòng 3 người', 950000.0000)
INSERT [dbo].[RoomCategory] ([CategoryId], [CategoryName], [Price]) VALUES (2, N'Phòng 4 người', 850000.0000)
INSERT [dbo].[RoomCategory] ([CategoryId], [CategoryName], [Price]) VALUES (3, N'Phòng 6 người', 700000.0000)
GO
INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [StartTime], [EndTime]) VALUES (N'Fa22', N'Fall 2022', CAST(N'2022-09-01' AS Date), CAST(N'2022-12-31' AS Date))
INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [StartTime], [EndTime]) VALUES (N'Sp23', N'Spring 2023', CAST(N'2023-01-01' AS Date), CAST(N'2022-04-30' AS Date))
INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [StartTime], [EndTime]) VALUES (N'Su22', N'Summer 2022', CAST(N'2022-05-01' AS Date), CAST(N'2022-08-31' AS Date))
GO
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Hải Anh', N'ADMIN001', CAST(N'1998-03-12' AS Date), 1, N'123456', 1)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Tạ Nhật Minh', N'ADMIN002', CAST(N'1995-01-23' AS Date), 1, N'123456', 1)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Tạ Ngọc Anh', N'ADMIN003', CAST(N'2003-11-03' AS Date), 0, N'123456', 1)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Hồng Sơn', N'ADMIN004', CAST(N'1992-09-09' AS Date), 1, N'123456', 1)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phan Linh Đan', N'ADMIN005', CAST(N'1996-06-14' AS Date), 0, N'123456', 1)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Cao Duy Thạch', N'HA150006', CAST(N'2001-11-08' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trịnh Hà Vi', N'HA150263', CAST(N'2002-07-07' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Thanh Hà', N'HA160001', CAST(N'2002-06-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Vũ Thị Hồng Ngọc', N'HA160004', CAST(N'2002-05-13' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Thanh Hà', N'HA160009', CAST(N'2002-04-30' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Mai Quỳnh Trang', N'HA160441', CAST(N'2002-06-05' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Hà Anh', N'HA170111', CAST(N'2003-09-01' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Thành Công', N'HA170602', CAST(N'2003-05-05' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trương Mai Hoa', N'HA170808', CAST(N'2003-08-27' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Anh Thư', N'HA170821', CAST(N'2003-02-16' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Ngô Ngọc Ánh', N'HA170999', CAST(N'2003-05-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Chử Nghiêm Luân', N'HA171212', CAST(N'2003-11-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Chử Minh Trang', N'HA172134', CAST(N'2003-06-15' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Hữu Trí', N'HA173092', CAST(N'2003-01-31' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phạm Tuấn Khôi', N'HA176432', CAST(N'2003-02-09' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Thanh Thảo', N'HA180213', CAST(N'2004-07-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Mạc Hoàng Lâm', N'HE150022', CAST(N'2001-12-17' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Tấn Tài', N'HE150062', CAST(N'2001-06-15' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lưu Tuệ Minh', N'HE150089', CAST(N'2001-05-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Thái Duy', N'HE150909', CAST(N'2001-04-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Minh Tiến', N'HE152222', CAST(N'2001-07-19' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Chu Ngọc Đức', N'HE156001', CAST(N'2001-05-15' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Hà Thanh', N'HE160001', CAST(N'2002-11-12' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trịnh Đăng Khoa', N'HE160002', CAST(N'2002-03-26' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Văn Quốc', N'HE160008', CAST(N'2002-06-06' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Thùy Dương', N'HE160015', CAST(N'2002-07-22' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Hữu Trí', N'HE160023', CAST(N'2002-01-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Đinh Tuấn Nam', N'HE160662', CAST(N'2002-12-28' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Chu Tuấn Kiệt', N'HE160809', CAST(N'2002-09-29' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lưu Chí Tài', N'HE161111', CAST(N'2002-08-29' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Đức Huy', N'HE161830', CAST(N'2002-01-23' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Bùi Xuân Nam', N'HE161899', CAST(N'2002-03-22' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Bùi Hồng Anh', N'HE162990', CAST(N'2002-12-06' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Ngọc Quang', N'HE163444', CAST(N'2002-01-12' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Đặng Hoàng Giang', N'HE164343', CAST(N'2002-02-28' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Dư Hữu Hòa', N'HE164448', CAST(N'2002-10-31' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Ngô Đức Linh', N'HE165423', CAST(N'2002-06-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Đỗ Tuấn Tú', N'HE170004', CAST(N'2003-06-01' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Hoàng Thái Anh', N'HE170021', CAST(N'2003-02-21' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phạm Ngọc Quân', N'HE170025', CAST(N'2003-04-10' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Nam Giang', N'HE170039', CAST(N'2003-06-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phan Thị Mai Phương', N'HE170223', CAST(N'2003-06-18' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Thiện An', N'HE170245', CAST(N'2003-03-19' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Minh Thành', N'HE170344', CAST(N'2003-07-02' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Quang Minh', N'HE170350', CAST(N'2003-08-03' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Khang Minh', N'HE170390', CAST(N'2003-01-02' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Văn Phước', N'HE170608', CAST(N'2003-04-18' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lại Đức Duy', N'HE170661', CAST(N'2003-08-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Đức Minh', N'HE170662', CAST(N'2003-02-18' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Phúc Hưng', N'HE170891', CAST(N'2003-07-26' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Đoàn Thế Mạnh', N'HE170902', CAST(N'2003-09-16' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Hồ Anh Minh', N'HE171199', CAST(N'2003-08-19' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Đại Lâm', N'HE171456', CAST(N'2003-12-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Bá Nguyên Khang', N'HE171661', CAST(N'2003-01-23' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phùng Thế Anh', N'HE171717', CAST(N'2003-02-01' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Quách Tuấn Trung', N'HE171919', CAST(N'2003-06-06' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Gia Bảo', N'HE172555', CAST(N'2003-04-26' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Hoàng Anh', N'HE17333', CAST(N'2003-04-01' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Huy Long', N'HE174231', CAST(N'2003-03-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Bùi An Bình', N'HE174333', CAST(N'2003-08-04' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Mai Thị Thu Thủy', N'HE176003', CAST(N'2003-02-17' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Chu Đức Dương', N'HE176321', CAST(N'2004-01-18' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Tuấn Thạch', N'HE176666', CAST(N'2003-11-09' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Đào Duy Anh', N'HE176669', CAST(N'2003-07-28' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Đức Khương', N'HE176866', CAST(N'2003-08-14' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Hà Linh Chi', N'HE180008', CAST(N'2004-12-14' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trịnh Bảo Toàn', N'HE180009', CAST(N'2004-10-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Đoàn Quốc Minh', N'HE180034', CAST(N'2004-04-07' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phùng Khánh Hoàn', N'HE180309', CAST(N'2004-06-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Đức Cường', N'HE180909', CAST(N'2004-01-08' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Tiến Đạt', N'HE181569', CAST(N'2004-07-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Đức Thắng', N'HE183330', CAST(N'2004-09-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Thanh Nguyên', N'HE184545', CAST(N'2004-06-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Thái Thịnh', N'HE186552', CAST(N'2004-11-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Thu Hằng', N'HS150065', CAST(N'2001-07-03' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Âu Hải Oanh', N'HS156001', CAST(N'2001-04-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phạm Quốc Thái', N'HS156002', CAST(N'2001-10-06' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trương Mỹ Hoa', N'HS160002', CAST(N'2002-11-24' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Vũ Trang Anh', N'HS160681', CAST(N'2002-11-21' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Bùi Ngọc Linh', N'HS161817', CAST(N'2002-12-31' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lý Châu Anh', N'HS162201', CAST(N'2002-10-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Đỗ Minh Nguyệt', N'HS162301', CAST(N'2002-05-08' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Thị Hà Mi', N'HS162478', CAST(N'2002-11-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Khánh Duy', N'HS163333', CAST(N'2002-09-23' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Khúc Vân Chi', N'HS170010', CAST(N'2003-11-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Thanh Trà', N'HS170071', CAST(N'2003-12-08' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phạm Mai Anh', N'HS170098', CAST(N'2003-06-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Lê Thị Vân Anh', N'HS170301', CAST(N'2003-04-02' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Hà Anh Dũng', N'HS170401', CAST(N'2003-06-11' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Doãn Hải Nam', N'HS170701', CAST(N'2003-03-13' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Yến Nhi', N'HS174500', CAST(N'2003-08-11' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Phan Kiến Công', N'HS180001', CAST(N'2004-12-06' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Trần Minh Nghĩa', N'HS180029', CAST(N'2004-10-26' AS Date), 1, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Đặng Ngọc Diệp', N'HS180123', CAST(N'2004-03-27' AS Date), 0, N'123456', 0)
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Thái Anh', N'HS180222', CAST(N'2004-09-09' AS Date), 1, N'123456', 0)
GO
INSERT [dbo].[User] ([UserName], [UserId], [UserDob], [UserGender], [Password], [isAdmin]) VALUES (N'Nguyễn Thị Diệu Hằng', N'HS184378', CAST(N'2004-01-11' AS Date), 0, N'123456', 0)
GO
ALTER TABLE [dbo].[Bed]  WITH CHECK ADD FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([RoomId])
GO
ALTER TABLE [dbo].[ChangeRoomRequest]  WITH CHECK ADD FOREIGN KEY([UserId1])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ChangeRoomRequest]  WITH CHECK ADD FOREIGN KEY([UserId2])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ChangeRoomRequest]  WITH CHECK ADD FOREIGN KEY([BedId1], [RoomId1])
REFERENCES [dbo].[Bed] ([BedId], [RoomId])
GO
ALTER TABLE [dbo].[ChangeRoomRequest]  WITH CHECK ADD FOREIGN KEY([BedId2], [RoomId2])
REFERENCES [dbo].[Bed] ([BedId], [RoomId])
GO
ALTER TABLE [dbo].[Fee]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([BedId], [RoomId])
REFERENCES [dbo].[Bed] ([BedId], [RoomId])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[RequestBooking]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[RequestBooking]  WITH CHECK ADD FOREIGN KEY([BedId], [RoomId])
REFERENCES [dbo].[Bed] ([BedId], [RoomId])
GO
ALTER TABLE [dbo].[RequestContact]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[RoomCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([DomId])
REFERENCES [dbo].[Dormitory] ([DomId])
GO
USE [master]
GO
ALTER DATABASE [Assignment_PRJ301] SET  READ_WRITE 
GO
