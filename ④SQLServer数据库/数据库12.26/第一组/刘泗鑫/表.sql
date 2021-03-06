USE [homework12.26]
GO
/****** Object:  Table [dbo].[course]    Script Date: 12/26/2017 19:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[cno] [char](4) NOT NULL,
	[cname] [char](20) NULL,
	[ccredit] [smallint] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'1   ', N'数据库              ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'10  ', N'思修                ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'11  ', N'体育                ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'2   ', N'数学                ', 2)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'3   ', N'信息系统            ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'4   ', N'操作系统            ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'5   ', N'数据结构            ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'6   ', N'数据处理            ', 2)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'7   ', N'PASCAL语言          ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'8   ', N'语文                ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'9   ', N'英语                ', 4)
/****** Object:  Table [dbo].[student]    Script Date: 12/26/2017 19:14:32 ******/
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
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215121  ', N'甲                  ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215122  ', N'乙                  ', N'女', 21, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215123  ', N'丙                  ', N'男', 22, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215124  ', N'丁                  ', N'女', 23, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215125  ', N'戊                  ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215126  ', N'己                  ', N'女', 21, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215127  ', N'庚                  ', N'男', 22, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215128  ', N'辛                  ', N'女', 23, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215129  ', N'壬                  ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215130  ', N'癸                  ', N'女', 21, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215131  ', N'甲                  ', N'男', 22, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215132  ', N'乙                  ', N'女', 23, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215133  ', N'丙                  ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215134  ', N'丁                  ', N'女', 21, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215135  ', N'戊                  ', N'男', 22, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215136  ', N'己                  ', N'女', 23, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215137  ', N'庚                  ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215138  ', N'辛                  ', N'女', 21, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215139  ', N'壬                  ', N'男', 22, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215140  ', N'癸                  ', N'女', 23, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215141  ', N'甲                  ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215142  ', N'乙                  ', N'女', 21, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215143  ', N'丙                  ', N'男', 22, N'MA                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215144  ', N'丁                  ', N'女', 23, N'IS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215145  ', N'戊                  ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215146  ', N'己                  ', N'女', 22, N'CS                  ')
/****** Object:  Table [dbo].[sc]    Script Date: 12/26/2017 19:14:32 ******/
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
	[sno] ASC,
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'1   ', 92)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'2   ', 93)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'3   ', 94)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'4   ', 95)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'5   ', 96)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'6   ', 97)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'7   ', 98)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'8   ', 99)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'9   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215123  ', N'10  ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215124  ', N'11  ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215125  ', N'1   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215126  ', N'2   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215127  ', N'3   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215128  ', N'4   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215129  ', N'5   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215130  ', N'6   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215131  ', N'7   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215132  ', N'8   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215133  ', N'9   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215134  ', N'10  ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215135  ', N'11  ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215136  ', N'2   ', 70)
/****** Object:  Default [DF_student_ssex]    Script Date: 12/26/2017 19:14:32 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_ssex]  DEFAULT ('男') FOR [ssex]
GO
/****** Object:  Check [CK_student]    Script Date: 12/26/2017 19:14:32 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [CK_student] CHECK  (([ssex]='男' OR [ssex]='女'))
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [CK_student]
GO
/****** Object:  ForeignKey [FK_sc_course]    Script Date: 12/26/2017 19:14:32 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_course] FOREIGN KEY([cno])
REFERENCES [dbo].[course] ([cno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_course]
GO
/****** Object:  ForeignKey [FK_sc_student]    Script Date: 12/26/2017 19:14:32 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_student] FOREIGN KEY([sno])
REFERENCES [dbo].[student] ([sno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_student]
GO
