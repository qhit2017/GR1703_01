USE [12.27课堂练习]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 12/27/2017 15:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[tid] [int] NOT NULL,
	[tname] [nvarchar](10) NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (1, N'李老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (2, N'王老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (3, N'明老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (4, N'秦老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (5, N'李老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (6, N'朱老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (7, N'马老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (8, N'胡老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (9, N'张老师')
INSERT [dbo].[teacher] ([tid], [tname]) VALUES (10, N'李老师')
/****** Object:  Table [dbo].[student]    Script Date: 12/27/2017 15:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[sid] [int] NOT NULL,
	[sname] [nvarchar](10) NULL,
	[sage] [int] NULL,
	[ssex] [nchar](1) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (1, N'甲', 15, N'男')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (2, N'乙', 16, N'男')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (3, N'丙', 17, N'男')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (4, N'丁', 18, N'男')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (5, N'戊', 19, N'女')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (6, N'己', 15, N'女')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (7, N'庚', 21, N'女')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (8, N'辛', 22, N'女')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (9, N'壬', 23, N'女')
INSERT [dbo].[student] ([sid], [sname], [sage], [ssex]) VALUES (10, N'癸', 24, N'女')
/****** Object:  Table [dbo].[sc]    Script Date: 12/27/2017 15:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sc](
	[sid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[score] [int] NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[sc] ([sid], [cid], [score]) VALUES (1, 2, 85)
INSERT [dbo].[sc] ([sid], [cid], [score]) VALUES (1, 3, 80)
INSERT [dbo].[sc] ([sid], [cid], [score]) VALUES (1, 4, 75)
INSERT [dbo].[sc] ([sid], [cid], [score]) VALUES (1, 5, 80)
INSERT [dbo].[sc] ([sid], [cid], [score]) VALUES (3, 2, 65)
INSERT [dbo].[sc] ([sid], [cid], [score]) VALUES (4, 2, 75)
INSERT [dbo].[sc] ([sid], [cid], [score]) VALUES (5, 2, 85)
INSERT [dbo].[sc] ([sid], [cid], [score]) VALUES (8, 2, 95)
/****** Object:  Table [dbo].[course]    Script Date: 12/27/2017 15:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](10) NULL,
	[tid] [int] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[course] ([cid], [cname], [tid]) VALUES (1, N'语文', 3)
INSERT [dbo].[course] ([cid], [cname], [tid]) VALUES (2, N'政治', 3)
INSERT [dbo].[course] ([cid], [cname], [tid]) VALUES (3, N'数学', 2)
INSERT [dbo].[course] ([cid], [cname], [tid]) VALUES (4, N'语文', 4)
INSERT [dbo].[course] ([cid], [cname], [tid]) VALUES (5, N'自然', 3)
INSERT [dbo].[course] ([cid], [cname], [tid]) VALUES (6, N'英语', 3)
INSERT [dbo].[course] ([cid], [cname], [tid]) VALUES (7, N'数据库', 1)
/****** Object:  ForeignKey [FK_course_teacher]    Script Date: 12/27/2017 15:32:41 ******/
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_teacher] FOREIGN KEY([tid])
REFERENCES [dbo].[teacher] ([tid])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_teacher]
GO
