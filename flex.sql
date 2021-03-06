USE [master]
GO
/****** Object:  Database [Digital_Artist_Helper]    Script Date: 22.03.2021 10:41:09 ******/
CREATE DATABASE [Digital_Artist_Helper]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Digital_Artist_Helper', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Digital_Artist_Helper.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Digital_Artist_Helper_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Digital_Artist_Helper_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Digital_Artist_Helper] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Digital_Artist_Helper].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Digital_Artist_Helper] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET ARITHABORT OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Digital_Artist_Helper] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Digital_Artist_Helper] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Digital_Artist_Helper] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Digital_Artist_Helper] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET RECOVERY FULL 
GO
ALTER DATABASE [Digital_Artist_Helper] SET  MULTI_USER 
GO
ALTER DATABASE [Digital_Artist_Helper] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Digital_Artist_Helper] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Digital_Artist_Helper] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Digital_Artist_Helper] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Digital_Artist_Helper] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Digital_Artist_Helper', N'ON'
GO
ALTER DATABASE [Digital_Artist_Helper] SET QUERY_STORE = OFF
GO
USE [Digital_Artist_Helper]
GO
/****** Object:  Table [dbo].[Lection]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lection](
	[Lection_ID] [int] IDENTITY(1,1) NOT NULL,
	[Numeric_ID] [int] NULL,
	[Lection_name] [nvarchar](50) NOT NULL,
	[Lection_text] [nvarchar](max) NOT NULL,
	[Status_ID] [int] NOT NULL,
	[Section_key] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Lection_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LectionStatus]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LectionStatus](
	[Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LectionUser]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LectionUser](
	[ID] [int] NOT NULL,
	[idLection] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[IdStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] NOT NULL,
	[Rolee] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Section_ID] [int] IDENTITY(1,1) NOT NULL,
	[Section_name] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Section_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Task_ID] [int] IDENTITY(1,1) NOT NULL,
	[Numeric_Task_ID] [int] NULL,
	[Task_name] [nvarchar](30) NULL,
	[Task_text] [nvarchar](max) NULL,
	[Task_status] [int] NOT NULL,
	[Lection_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Task_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskStatus]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatus](
	[Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskUser]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskUser](
	[ID] [int] NOT NULL,
	[idTask] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[IdStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22.03.2021 10:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID_User] [int] IDENTITY(1,1) NOT NULL,
	[Nickname] [nvarchar](40) NOT NULL,
	[User_mail] [nvarchar](40) NOT NULL,
	[User_Birth] [date] NOT NULL,
	[Profile_Pic] [varchar](50) NULL,
	[User_Password] [nvarchar](40) NULL,
	[Completed_lections] [int] NULL,
	[Completed_tasks] [int] NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lection] ON 

INSERT [dbo].[Lection] ([Lection_ID], [Numeric_ID], [Lection_name], [Lection_text], [Status_ID], [Section_key]) VALUES (2007, 1, N'Test Lection 1', N'<h2>This is a test text for a test lection</h2><ol><li>Cool item</li><li>another one</li></ol><p>And image</p><figure class="image image-style-side"><img src="https://localhost:44321/ckfinder/connector?command=Proxy&amp;type=Files&amp;currentFolder=%2f&amp;fileName=Untitled-1(5).png&amp;cache=31536000"></figure>', 2, 3)
SET IDENTITY_INSERT [dbo].[Lection] OFF
SET IDENTITY_INSERT [dbo].[LectionStatus] ON 

INSERT [dbo].[LectionStatus] ([Status_ID], [Status]) VALUES (1, N'Завершено')
INSERT [dbo].[LectionStatus] ([Status_ID], [Status]) VALUES (2, N'Не завершено')
SET IDENTITY_INSERT [dbo].[LectionStatus] OFF
INSERT [dbo].[Roles] ([ID], [Rolee]) VALUES (1, N'A')
INSERT [dbo].[Roles] ([ID], [Rolee]) VALUES (2, N'U')
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([Section_ID], [Section_name]) VALUES (1, N'Постановка руки')
INSERT [dbo].[Section] ([Section_ID], [Section_name]) VALUES (2, N'Простые формы')
INSERT [dbo].[Section] ([Section_ID], [Section_name]) VALUES (3, N'Светотень')
INSERT [dbo].[Section] ([Section_ID], [Section_name]) VALUES (4, N'Цвет')
INSERT [dbo].[Section] ([Section_ID], [Section_name]) VALUES (5, N'Анатомия')
SET IDENTITY_INSERT [dbo].[Section] OFF
SET IDENTITY_INSERT [dbo].[Task] ON 

INSERT [dbo].[Task] ([Task_ID], [Numeric_Task_ID], [Task_name], [Task_text], [Task_status], [Lection_ID]) VALUES (1004, 1, N'Test task 1', N'<h3>Test Task with random text<br>&nbsp;</h3><figure class="image"><img src="https://localhost:44321/ckfinder/connector?command=Proxy&amp;type=Files&amp;currentFolder=%2f&amp;fileName=111a8e8b4503ac5631fc5fe754c3c932.jpg&amp;cache=31536000"></figure><p>A cat</p>', 2, 2007)
SET IDENTITY_INSERT [dbo].[Task] OFF
SET IDENTITY_INSERT [dbo].[TaskStatus] ON 

INSERT [dbo].[TaskStatus] ([Status_ID], [Status]) VALUES (1, N'Выполнено')
INSERT [dbo].[TaskStatus] ([Status_ID], [Status]) VALUES (2, N'Не выполнено')
SET IDENTITY_INSERT [dbo].[TaskStatus] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID_User], [Nickname], [User_mail], [User_Birth], [Profile_Pic], [User_Password], [Completed_lections], [Completed_tasks], [RoleID]) VALUES (1, N'WhatEverNeverMind2', N't.balikoev@gmail.com', CAST(N'2021-03-17' AS Date), N'd2_BI56b7YQ.jpg', N'123456789', NULL, NULL, 2)
INSERT [dbo].[Users] ([ID_User], [Nickname], [User_mail], [User_Birth], [Profile_Pic], [User_Password], [Completed_lections], [Completed_tasks], [RoleID]) VALUES (3, N'AnyoneElse', N'IfuckingCarl@mail.ru', CAST(N'2021-03-03' AS Date), N'AnyoneElse.jpg', N'Afynjv132', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Lection]  WITH CHECK ADD  CONSTRAINT [FK_Lection_LectionStatus] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[LectionStatus] ([Status_ID])
GO
ALTER TABLE [dbo].[Lection] CHECK CONSTRAINT [FK_Lection_LectionStatus]
GO
ALTER TABLE [dbo].[Lection]  WITH CHECK ADD  CONSTRAINT [FK_Lection_Section] FOREIGN KEY([Section_key])
REFERENCES [dbo].[Section] ([Section_ID])
GO
ALTER TABLE [dbo].[Lection] CHECK CONSTRAINT [FK_Lection_Section]
GO
ALTER TABLE [dbo].[LectionUser]  WITH CHECK ADD  CONSTRAINT [FK_LectionUser_Lection] FOREIGN KEY([idLection])
REFERENCES [dbo].[Lection] ([Lection_ID])
GO
ALTER TABLE [dbo].[LectionUser] CHECK CONSTRAINT [FK_LectionUser_Lection]
GO
ALTER TABLE [dbo].[LectionUser]  WITH CHECK ADD  CONSTRAINT [FK_LectionUser_LectionStatus] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[LectionStatus] ([Status_ID])
GO
ALTER TABLE [dbo].[LectionUser] CHECK CONSTRAINT [FK_LectionUser_LectionStatus]
GO
ALTER TABLE [dbo].[LectionUser]  WITH CHECK ADD  CONSTRAINT [FK_LectionUser_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([ID_User])
GO
ALTER TABLE [dbo].[LectionUser] CHECK CONSTRAINT [FK_LectionUser_Users]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Lection] FOREIGN KEY([Lection_ID])
REFERENCES [dbo].[Lection] ([Lection_ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Lection]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_TaskStatus] FOREIGN KEY([Task_status])
REFERENCES [dbo].[TaskStatus] ([Status_ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_TaskStatus]
GO
ALTER TABLE [dbo].[TaskUser]  WITH CHECK ADD  CONSTRAINT [FK_TaskUser_Task] FOREIGN KEY([idTask])
REFERENCES [dbo].[Task] ([Task_ID])
GO
ALTER TABLE [dbo].[TaskUser] CHECK CONSTRAINT [FK_TaskUser_Task]
GO
ALTER TABLE [dbo].[TaskUser]  WITH CHECK ADD  CONSTRAINT [FK_TaskUser_TaskStatus] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[TaskStatus] ([Status_ID])
GO
ALTER TABLE [dbo].[TaskUser] CHECK CONSTRAINT [FK_TaskUser_TaskStatus]
GO
ALTER TABLE [dbo].[TaskUser]  WITH CHECK ADD  CONSTRAINT [FK_TaskUser_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([ID_User])
GO
ALTER TABLE [dbo].[TaskUser] CHECK CONSTRAINT [FK_TaskUser_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [Digital_Artist_Helper] SET  READ_WRITE 
GO
