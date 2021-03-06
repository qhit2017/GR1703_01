USE [work]
GO
/****** Object:  Table [dbo].[course]    Script Date: 12/26/2017 21:25:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[cno] [char](4) NOT NULL,
	[cname] [nchar](20) NULL,
	[ccredit] [smallint] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'1   ', N'数据库                 ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'10  ', N'数据库                 ', 1)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'11  ', N'信息系统                ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'2   ', N'数学                  ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'3   ', N'信息系统                ', 2)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'4   ', N'数学                  ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'5   ', N'操作系统                ', 2)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'6   ', N'数据库                 ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'7   ', N'数学                  ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'8   ', N'操作系统                ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'9   ', N'信息系统                ', 2)
/****** Object:  Table [dbo].[student]    Script Date: 12/26/2017 21:25:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sno] [char](11) NOT NULL,
	[sname] [char](20) NULL,
	[ssex] [char](2) NOT NULL,
	[sage] [smallint] NOT NULL,
	[sdept] [char](20) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215121  ', N'狄云                ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215122  ', N'水笙                ', N'女', 18, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215123  ', N'万珪                ', N'男', 21, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215124  ', N'鲁智深              ', N'男', 22, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215125  ', N'花和尚              ', N'男', 19, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215126  ', N'吴用                ', N'男', 20, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215127  ', N'一丈青              ', N'女', 19, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215128  ', N'扈三娘              ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215129  ', N'菜园子              ', N'男', 21, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215130  ', N'张青                ', N'男', 18, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215131  ', N'母大虫              ', N'女', 22, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215132  ', N'孙二娘              ', N'女', 18, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215133  ', N'行者                ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215134  ', N'武松                ', N'男', 16, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215135  ', N'船火儿              ', N'男', 15, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215136  ', N'张横                ', N'男', 17, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215137  ', N'豹子头              ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215138  ', N'林冲                ', N'男', 18, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215139  ', N'玉麒麟              ', N'男', 15, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215140  ', N'卢俊义              ', N'男', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215141  ', N'浪子                ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215142  ', N'燕青                ', N'男', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215143  ', N'阎婆惜              ', N'女', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215144  ', N'大刀                ', N'男', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215145  ', N'关胜                ', N'男', 17, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215146  ', N'潘金莲              ', N'女', 18, N'MA                  ')
/****** Object:  Table [dbo].[sc]    Script Date: 12/26/2017 21:25:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sc](
	[sno] [char](11) NOT NULL,
	[cno] [char](4) NOT NULL,
	[grade] [smallint] NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[cno] ASC,
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215123  ', N'1   ', 75)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215136  ', N'1   ', 96)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215137  ', N'1   ', 99)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215140  ', N'10  ', 78)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215134  ', N'11  ', 58)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215125  ', N'2   ', 79)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215128  ', N'2   ', 86)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215134  ', N'2   ', 93)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215128  ', N'3   ', 52)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215129  ', N'3   ', 90)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215131  ', N'3   ', 89)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215124  ', N'4   ', 57)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215129  ', N'4   ', 67)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215136  ', N'4   ', 78)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215146  ', N'4   ', 93)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215134  ', N'5   ', 75)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215143  ', N'5   ', 86)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215126  ', N'6   ', 71)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215143  ', N'6   ', 67)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215140  ', N'7   ', 69)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215142  ', N'8   ', 78)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215146  ', N'8   ', 59)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215131  ', N'9   ', 56)
/****** Object:  Default [DF_student_ssex]    Script Date: 12/26/2017 21:25:47 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_ssex]  DEFAULT ('ssex=''男''') FOR [ssex]
GO
/****** Object:  Check [CK_student]    Script Date: 12/26/2017 21:25:47 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [CK_student] CHECK  (([ssex]='男' OR [ssex]='女'))
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [CK_student]
GO
/****** Object:  ForeignKey [FK_sc_course]    Script Date: 12/26/2017 21:25:47 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_course] FOREIGN KEY([cno])
REFERENCES [dbo].[course] ([cno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_course]
GO
/****** Object:  ForeignKey [FK_sc_student]    Script Date: 12/26/2017 21:25:47 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_student] FOREIGN KEY([sno])
REFERENCES [dbo].[student] ([sno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_student]
GO
