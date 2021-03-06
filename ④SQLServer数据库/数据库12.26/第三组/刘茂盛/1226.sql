USE [liumaosheng]
GO
/****** Object:  Table [dbo].[course]    Script Date: 12/26/2017 20:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[cno] [char](4) NOT NULL,
	[cname] [char](20) NOT NULL,
	[ccredit] [smallint] NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'1   ', N'数据库              ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'10  ', N'JAVAWEB             ', 7)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'2   ', N'数学                ', 2)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'3   ', N'信息系统            ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'4   ', N'操作系统            ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'5   ', N'数据处理            ', 1)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'6   ', N'PASCAL语言          ', 5)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'7   ', N'JAVA                ', 5)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'8   ', N'C++                 ', 6)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'9   ', N'RIA                 ', 2)
/****** Object:  Table [dbo].[student]    Script Date: 12/26/2017 20:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sno] [char](11) NOT NULL,
	[sname] [char](20) NOT NULL,
	[ssex] [char](2) NULL,
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
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215121  ', N'李勇                ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215122  ', N'刘晨                ', N'女', 19, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215123  ', N'王敏                ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215124  ', N'张三                ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215125  ', N'张立                ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215126  ', N'李四                ', N'女', 19, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215127  ', N'王五                ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215128  ', N'廖伟良              ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215129  ', N'王定宇              ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215130  ', N'胡雯月              ', N'女', 19, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215131  ', N'邢文哲              ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215132  ', N'刘泗鑫              ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215133  ', N'王彬彬              ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215134  ', N'王梦瑶              ', N'女', 19, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215135  ', N'李华                ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215136  ', N'王旗                ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215137  ', N'李志新              ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215138  ', N'王文迪              ', N'女', 19, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215139  ', N'田松丹              ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215140  ', N'杨留洋              ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215141  ', N'袁瑞超              ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215142  ', N'刘茂盛              ', N'男', 19, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215143  ', N'谢明阳              ', N'男', 18, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215144  ', N'王银星              ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215145  ', N'庞星辰              ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215146  ', N'徐广慧              ', N'女', 19, N'CS                  ')
/****** Object:  Table [dbo].[SC]    Script Date: 12/26/2017 20:51:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[sno] [char](11) NOT NULL,
	[cno] [char](4) NOT NULL,
	[grade] [smallint] NOT NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[sno] ASC,
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'1   ', 92)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'4   ', 78)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'9   ', 78)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'10  ', 89)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215123  ', N'8   ', 95)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215125  ', N'2   ', 82)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215129  ', N'2   ', 78)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215131  ', N'1   ', 92)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215132  ', N'2   ', 78)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215132  ', N'5   ', 46)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215133  ', N'2   ', 82)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215134  ', N'5   ', 46)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215135  ', N'2   ', 99)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215135  ', N'7   ', 45)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215136  ', N'9   ', 78)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215137  ', N'2   ', 99)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215139  ', N'4   ', 78)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215140  ', N'8   ', 95)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215144  ', N'7   ', 45)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215146  ', N'10  ', 89)
/****** Object:  Default [DF_student_ssex]    Script Date: 12/26/2017 20:51:10 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_ssex]  DEFAULT ('男') FOR [ssex]
GO
/****** Object:  Check [CK_student]    Script Date: 12/26/2017 20:51:10 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [CK_student] CHECK  (([ssex]='男' OR [ssex]='女'))
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [CK_student]
GO
/****** Object:  ForeignKey [FK_SC_course]    Script Date: 12/26/2017 20:51:10 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_course] FOREIGN KEY([cno])
REFERENCES [dbo].[course] ([cno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_course]
GO
/****** Object:  ForeignKey [FK_SC_student]    Script Date: 12/26/2017 20:51:10 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_student] FOREIGN KEY([sno])
REFERENCES [dbo].[student] ([sno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_student]
GO
