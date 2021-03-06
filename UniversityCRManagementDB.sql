USE [master]
GO
/****** Object:  Database [UniversityCRManagementDB]    Script Date: 1/30/2016 1:44:29 PM ******/
CREATE DATABASE [UniversityCRManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversityCRManagementDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\UniversityCRManagementDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UniversityCRManagementDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\UniversityCRManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UniversityCRManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityCRManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityCRManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityCRManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityCRManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityCRManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversityCRManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityCRManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversityCRManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityCRManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityCRManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityCRManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityCRManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [UniversityCRManagementDB]
GO
/****** Object:  Table [dbo].[AllocateClass]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AllocateClass](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NULL,
	[CourseId] [int] NULL,
	[RoomId] [int] NULL,
	[Day] [varchar](100) NULL,
	[TimeStart] [datetime] NULL,
	[TimeEnd] [datetime] NULL,
 CONSTRAINT [PK__Allocate__3213E83F8B6651B7] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](100) NULL,
	[Credit] [decimal](18, 0) NULL,
	[Description] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[SemesterId] [int] NULL,
	[TeacherId] [int] NULL,
 CONSTRAINT [PK__Course__3213E83FD364E218] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EnrollCourse]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnrollCourse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [varchar](50) NULL,
	[CourseId] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK__EnrollCo__3213E83FD780C5F0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semester](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[ContactNo] [varchar](50) NULL,
	[Date] [date] NULL,
	[Address] [varchar](500) NULL,
	[DepartmentId] [int] NULL,
	[DepartmentCode] [varchar](50) NULL,
	[RegNo]  AS (((CONVERT([varchar](5),[DepartmentCode])+'-')+right(CONVERT([varchar](5),[Date]),(5)))+right('0000'+CONVERT([varchar](5),[Id]),(5))),
 CONSTRAINT [PK__Student__3213E83F55515C42] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentResult]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentResult](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [varchar](50) NULL,
	[CourseId] [int] NULL,
	[Grade] [varchar](10) NULL,
 CONSTRAINT [PK__StudentR__3213E83F80E76F70] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbEmployee]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbEmployee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpCode]  AS ([EmployeeName]+right('0000'+CONVERT([varchar](5),[EmpId]),(5))) PERSISTED,
	[EmployeeName] [varchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](500) NULL,
	[Email] [varchar](100) NULL,
	[ContactNo] [varchar](100) NULL,
	[DesignationId] [int] NULL,
	[DepartmentId] [int] NULL,
	[Credit] [int] NULL,
	[RemainCredit] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[ClassSchedule11]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create View  [dbo].[ClassSchedule11] AS
SELECT        c.DepartmentId, d.Name AS DepartmentName, c.id AS CourseId, c.Code AS CourseCode, c.Name AS CourseName, r.id AS RoomId, r.RoomNo, a.Day, a.TimeStart, a.TimeEnd
FROM            dbo.Course AS c LEFT OUTER JOIN
                         dbo.Department AS d ON c.DepartmentId = d.id LEFT OUTER JOIN
                         dbo.AllocateClass AS a ON c.id = a.CourseId LEFT OUTER JOIN
                         dbo.Room AS r ON a.RoomId = r.id





GO
/****** Object:  View [dbo].[ClassSchedule12]    Script Date: 1/30/2016 1:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create VIEW [dbo].[ClassSchedule12] as
SELECT CourseCode,CourseName,DepartmentId,
ScheduleInfo=STUFF  
(  
     (  
       SELECT '   R. No: ' + CAST(RoomNo AS VARCHAR(MAX))+', '+ CAST(Day AS VARCHAR(MAX))+', '+ CAST(TimeStart AS VARCHAR(MAX))+' - '+ CAST(TimeEnd AS VARCHAR(MAX))    
       FROM ClassSchedule11 t2   
       WHERE t2.CourseCode = t1.CourseCode
       FOR XML PATH('')  
     ),1,1,''  
)

    
FROM ClassSchedule11 t1  
GROUP BY CourseCode, CourseName,DepartmentId

GO
SET IDENTITY_INSERT [dbo].[AllocateClass] ON 

INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (2, 2, 1, 1, N'SUN', CAST(0x0000A58000E6B680 AS DateTime), CAST(0x0000A580001CD6D0 AS DateTime))
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (3, 1, 1004, 3, N'MON', CAST(0x0000A58000317040 AS DateTime), CAST(0x0000A58000644010 AS DateTime))
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (4, 1, 2007, 1, N'SAT', CAST(0x0000A58000107AC0 AS DateTime), CAST(0x0000A58000317040 AS DateTime))
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (5, 1, 2007, 2, N'SUN', CAST(0x0000A58000107AC0 AS DateTime), CAST(0x0000A580001F95F0 AS DateTime))
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (6, 1, 2008, 2, N'SUN', CAST(0x0000A58001391C40 AS DateTime), CAST(0x0000A5800083D600 AS DateTime))
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (7, 1, 2009, 3, N'SUN', CAST(0x0000A58000F73140 AS DateTime), CAST(0x0000A580001B7740 AS DateTime))
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (8, 1, 2007, 5, N'MON', CAST(0x0000A58000107AC0 AS DateTime), CAST(0x0000A58000317040 AS DateTime))
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (9, 1, 2008, 5, N'MON', CAST(0x0000A58000E6B680 AS DateTime), CAST(0x0000A5800107AC00 AS DateTime))
INSERT [dbo].[AllocateClass] ([id], [DepartmentId], [CourseId], [RoomId], [Day], [TimeStart], [TimeEnd]) VALUES (10, 3, 2012, 5, N'MON', CAST(0x0000A58000B54640 AS DateTime), CAST(0x0000A58000D63BC0 AS DateTime))
SET IDENTITY_INSERT [dbo].[AllocateClass] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (1, N'CSE-1', N'Computer Fundamental', CAST(1 AS Decimal(18, 0)), N'/sl,fd/;s/f', 2, 1, 1)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2, N'CSE-2', N'Data Structure', CAST(2 AS Decimal(18, 0)), N'asdd', 2, 2, 2)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (1003, N'EEE-1', N'Circuit', CAST(3 AS Decimal(18, 0)), N'skfks', 3, 3, 3)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (1004, N'IT-1', N'Human Computer Interaction', CAST(1 AS Decimal(18, 0)), N'IT jsdf', 1, 1, 4)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (1005, N'ME-101', N'Mechanical Fundamental', CAST(2 AS Decimal(18, 0)), N'gggood', 1002, 1, 1)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (1006, N'ARCHI-1', N'ARCH fundamentla', CAST(5 AS Decimal(18, 0)), N'very good', 1003, 1, 2)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2005, N'CHE-101', N'Oranic Chemistry', CAST(3 AS Decimal(18, 0)), N'......', 2003, 1, -1)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2006, N'T-101', N'Basic textile', CAST(3 AS Decimal(18, 0)), N'Tetile....', 2004, 1, 1004)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2007, N'IIT-101', N'Computer Fundamentals', CAST(3 AS Decimal(18, 0)), N'Computer related basic', 1, 1, 3)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2008, N'IIT-102', N'Lab C', CAST(2 AS Decimal(18, 0)), N'POP', 1, 1, 1006)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2009, N'IIT-103', N'OOP', CAST(4 AS Decimal(18, 0)), N'OOP Basic', 1, 1, 1006)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2010, N'CSE-200', N'Assembly Language', CAST(3 AS Decimal(18, 0)), N'...........', 2, 1, -1)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2011, N'EEE-101', N'Electronic Device', CAST(4 AS Decimal(18, 0)), N'Device related', 3, 1, -1)
INSERT [dbo].[Course] ([id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [TeacherId]) VALUES (2012, N'EEE-105', N'DLD', CAST(3 AS Decimal(18, 0)), N'Digital logic Design', 3, 1, -1)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (1, N'IIT', N'Institute of Information Technology')
INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (2, N'CSE', N'Dept. of Computer Science & Engineering')
INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (3, N'EEE', N'Dept of Electronics & Electrical Engineering')
INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (1002, N'ME', N'Dept. of Mechanical Engineering')
INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (1003, N'ARCHI', N'Dept. of Architecture')
INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (2002, N'ICT', N'Information and Communication Technology')
INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (2003, N'CHE', N'Dept. of Chemistry')
INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (2004, N'TEX', N'Dept 0f Textile Engineering')
INSERT [dbo].[Department] ([id], [Code], [Name]) VALUES (2005, N'CE', N' Dept. of Civil Engineering')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([id], [Name]) VALUES (1, N'Professor')
INSERT [dbo].[Designation] ([id], [Name]) VALUES (2, N'Assistant Professor')
INSERT [dbo].[Designation] ([id], [Name]) VALUES (3, N'Associate Professor')
INSERT [dbo].[Designation] ([id], [Name]) VALUES (4, N'Lecturer')
INSERT [dbo].[Designation] ([id], [Name]) VALUES (5, N'VC')
INSERT [dbo].[Designation] ([id], [Name]) VALUES (6, N'Pro-VC')
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[EnrollCourse] ON 

INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (7, N'IT-2016-00024', 1004, CAST(0xF43A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (8, N'CSE-2016-01026', 1, CAST(0xF63A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (9, N'CSE-2016-01026', 2, CAST(0xF63A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (10, N'EEE-2016-01027', 1003, CAST(0xF63A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (1008, N'CSE-2016-01028', 1003, CAST(0xF73A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (2008, N'IT-2016-02028', 1004, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (2009, N'ARCHI-2016-02030', 1006, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (2010, N'CSE-2016-00017', 1, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (3008, N'CSE-2016-01021', 1, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (3009, N'CSE-2016-00019', 2, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (3010, N'CSE-2016-00017', 2, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (3011, N'IIT-2016-03029', 1004, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (3012, N'IIT-2016-03029', 2009, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[EnrollCourse] ([id], [RegNo], [CourseId], [Date]) VALUES (3013, N'ARCHI-2016-03028', 1006, CAST(0xF83A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[EnrollCourse] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (1, N'G-101')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (2, N'G-102')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (3, N'F-201')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (4, N'F-202')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (5, N'S-301')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (6, N'S-302')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (7, N'T-401')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (8, N'T-402')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (9, N'F-401')
INSERT [dbo].[Room] ([id], [RoomNo]) VALUES (10, N'F-402')
SET IDENTITY_INSERT [dbo].[Room] OFF
SET IDENTITY_INSERT [dbo].[Semester] ON 

INSERT [dbo].[Semester] ([id], [Name]) VALUES (1, N'1st Semester')
INSERT [dbo].[Semester] ([id], [Name]) VALUES (2, N'2nd Semester')
INSERT [dbo].[Semester] ([id], [Name]) VALUES (3, N'3rd Semester')
INSERT [dbo].[Semester] ([id], [Name]) VALUES (4, N'4th Semester')
INSERT [dbo].[Semester] ([id], [Name]) VALUES (5, N'5th Semester')
INSERT [dbo].[Semester] ([id], [Name]) VALUES (6, N'6th Semester')
INSERT [dbo].[Semester] ([id], [Name]) VALUES (7, N'7th Semester')
INSERT [dbo].[Semester] ([id], [Name]) VALUES (8, N'8th Semester')
SET IDENTITY_INSERT [dbo].[Semester] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (17, N'siam', N'siamakds@.coa', N'0987898768', CAST(0xF13A0B00 AS Date), N'asjdk', 2, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (18, N'rasel', N'rasdakl@.com', N'78678676676', CAST(0xF13A0B00 AS Date), N'asdas', 1, N'IT')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (19, N'siam', N'siamdjksjdk@sd.com', N'13123809809', CAST(0xF13A0B00 AS Date), N'askjdkasjd', 2, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (20, N'siam', N'sajdkaks@ym.com', N'989873948132', CAST(0xF13A0B00 AS Date), N'asjdajshd', 1, N'IT')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (21, N'siams', N'aksdjajks@yms,so', N'3274732487234', CAST(0xF13A0B00 AS Date), N'asjdas', 1, N'IT')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (22, N'lkdsls', N'qowieqowiioi@ym.co', N'98659869a', CAST(0xF13A0B00 AS Date), N'sdajsdh', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (23, N'asdad', N'qweqweljm@odfkd.co', N'34234683264', CAST(0xF13A0B00 AS Date), N'jdjf', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (24, N'sayed', N'sayed@msd.o', N'12324234', CAST(0xF13A0B00 AS Date), N'aksjdkas', 1, N'IT')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1019, N'Siam', N'aklsjdklasjd@lkdfj.com', N'12352545', CAST(0xF23A0B00 AS Date), N'amsdnma', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1020, N'ABd', N'abd2,dslakd@.co', N'2432432432', CAST(0xF23A0B00 AS Date), N'asdasd', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1021, N'moinul', N'moinul', N'12312123', CAST(0xF23A0B00 AS Date), N'aksjdakjsdkj', 2, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1022, N'kazi', N'kazi@ymail.com', N'018273891728', CAST(0xF23A0B00 AS Date), N'mirpur', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1023, N'lo', N'lo@jdsk,om', N'123341231', CAST(0xF23A0B00 AS Date), N'aslkdlaksd', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1024, N'gol', N'dol@asdlk.cos', N'12354352435', CAST(0xF23A0B00 AS Date), N'aslkdlaksd', 2, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1025, N'abdu', N'abdu@ymail.com', N'0923847982', CAST(0xF23A0B00 AS Date), N'askdjajsdlkj', 2, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1026, N'Abc', N'abc@ymail.com', N'017111957737', CAST(0xF33A0B00 AS Date), N'a,jasnd,an', 2, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1027, N'joje', N'joje@gmail.co', N'01711957737', CAST(0xF33A0B00 AS Date), N'amsdn,asdm', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1029, N'omi', N'omi@ymaill.c', N'0912301231', CAST(0xF73A0B00 AS Date), N'as,das,dn', 1, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1031, N'mur', N'mur@hgh.n', N'097896796', CAST(0xF73A0B00 AS Date), N'jhjjhkhj', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1032, N'syed', N'syed@jhsdj.com', N'091283913', CAST(0xF73A0B00 AS Date), N'alksjdalksdj', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (1033, N'sayed', N'jmbmnbh@dfdg.bo', N'09787674543', CAST(0xF73A0B00 AS Date), N',n,mn,mn,', 2, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (2028, N'Siam Abdullah', N'siam_abdullah@ymail.com', N'01711957737', CAST(0xF83A0B00 AS Date), N'146', 1, N'IT')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (2029, N'Abu', N'asdnaksn@r.com', N'1902830981', CAST(0xF83A0B00 AS Date), N'alskjdklasdmk', 2, N'CSE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (2030, N'sayed', N'abcd@ymail.com', N'08203948029', CAST(0xF83A0B00 AS Date), N'kasjdlkajsd', 1003, N'ARCHI')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (3028, N'Karim', N'jarim@gmail.com', N'01711957737', CAST(0xF83A0B00 AS Date), N'D', 1003, N'ARCHI')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (3029, N'Abu Sayed', N'sayediit@gmail.com', N'01553345623', CAST(0xF83A0B00 AS Date), N'Dhaka', 1, N'IIT')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (3030, N'Siam Abdullah', N'abdullah@gmail.com', N'01956467472', CAST(0xF83A0B00 AS Date), N'Dhaka', 3, N'EEE')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (3031, N'sagor', N'rsagor@gmai.com', N'0194566462', CAST(0xF83A0B00 AS Date), N'Khulna', 1, N'IIT')
INSERT [dbo].[Student] ([id], [Name], [Email], [ContactNo], [Date], [Address], [DepartmentId], [DepartmentCode]) VALUES (3032, N'moinul', N'mon@mail.om', N'01786886823', CAST(0xF83A0B00 AS Date), N'Gaziput', 2, N'CSE')
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[StudentResult] ON 

INSERT [dbo].[StudentResult] ([id], [RegNo], [CourseId], [Grade]) VALUES (1, N'IT-2016-00024', 1004, N'A')
INSERT [dbo].[StudentResult] ([id], [RegNo], [CourseId], [Grade]) VALUES (1002, N'CSE-2016-01026', 1, N'A-')
INSERT [dbo].[StudentResult] ([id], [RegNo], [CourseId], [Grade]) VALUES (1003, N'IT-2016-02028', 1004, N'A')
INSERT [dbo].[StudentResult] ([id], [RegNo], [CourseId], [Grade]) VALUES (1004, N'CSE-2016-00017', 1, N'A+')
INSERT [dbo].[StudentResult] ([id], [RegNo], [CourseId], [Grade]) VALUES (1005, N'CSE-2016-01021', 1, N'A+')
SET IDENTITY_INSERT [dbo].[StudentResult] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (1, N'Hashem', N'asdasd', N'asd@mm.com', N'1234524', 1, 1, 15, 15)
INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (2, N'kashem', N'ahsdghasg', N'qwe@mn.com', N'0987', 2, 2, 18, 17)
INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (3, N'Abu Sayed', N'alu bazar', N'blackhole@mail.com', N'01765762576', 2, 1, 20, 19)
INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (4, N'Mursalin Kabir', N'tikatoli', N'mk@askjd.co', N'012764896234', 2, 2, 18, 14)
INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (1003, N'Siam Abdullah', N'tikatoli', N'siam_abdullah@ymail.com', N'01711957737', 1, 2003, 3, 3)
INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (1004, N'Moniul', N'mirpur', N'mmm@mail.com', N'01923745398', 2, 2004, 3, 3)
INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (1005, N'Shohel', N'Nawabgonj', N'shohel@gmail.com', N'01923745398', 1, 2002, 20, 20)
INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (1006, N'Rana', N'Chakoria', N'rana@gmail.com', N'9078775', 2, 1, 15, 15)
INSERT [dbo].[Teacher] ([id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit], [RemainCredit]) VALUES (1007, N'Sajib', N'Alubazar', N'sajib@gmail.com', N'01726236535', 4, 1, 18, 18)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
USE [master]
GO
ALTER DATABASE [UniversityCRManagementDB] SET  READ_WRITE 
GO
