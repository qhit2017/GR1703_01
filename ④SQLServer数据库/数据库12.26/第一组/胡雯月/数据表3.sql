USE [12.26 作业]
GO
/****** Object:  Table [dbo].[student]    Script Date: 12/27/2017 13:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sno] [char](11) NOT NULL,
	[sname] [char](20) NULL,
	[ssex] [nchar](2) NULL,
	[sage] [smallint] NULL,
	[sdept] [char](20) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215121  ', N'李勇                ', N'男 ', 21, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215122  ', N'小红                ', N'男 ', 20, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215123  ', N'小青                ', N'女 ', 22, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215124  ', N'小勇                ', N'男 ', 15, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215125  ', N'哈哈                ', N'男 ', 19, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215126  ', N'嘿嘿                ', N'男 ', 20, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215127  ', N'小黑                ', N'男 ', 16, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215128  ', N'小何                ', N'女 ', 20, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215129  ', N'小白                ', N'男 ', 21, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215130  ', N'大白                ', N'男 ', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215131  ', N'张三                ', N'女 ', 18, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215132  ', N'李四                ', N'男 ', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215133  ', N'王二                ', N'男 ', 19, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215134  ', N'小兰                ', N'女 ', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215135  ', N'小李                ', N'男 ', 16, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215136  ', N'小胡                ', N'男 ', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215137  ', N'白天                ', N'男 ', 20, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215138  ', N'皇皇                ', N'女 ', 15, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215139  ', N'小辉                ', N'男 ', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215140  ', N'小兽                ', N'男 ', 21, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215141  ', N'小胖                ', N'女 ', 20, N'cs                  ')
/****** Object:  Table [dbo].[sc]    Script Date: 12/27/2017 13:10:04 ******/
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
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'1   ', 87)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'2   ', 90)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215123  ', N'1   ', 89)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215124  ', N'3   ', 100)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215125  ', N'1   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215126  ', N'4   ', 88)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215127  ', N'1   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215128  ', N'2   ', 78)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215129  ', N'2   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215130  ', N'1   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215131  ', N'1   ', 68)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215132  ', N'5   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215133  ', N'1   ', 65)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215134  ', N'6   ', 50)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215135  ', N'1   ', 81)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215136  ', N'4   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215137  ', N'1   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215138  ', N'3   ', 66)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215139  ', N'3   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215140  ', N'1   ', 77)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215141  ', N'4   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215142  ', N'5   ', 99)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215143  ', N'1   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215144  ', N'3   ', 75)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215145  ', N'2   ', 80)
/****** Object:  Table [dbo].[coures]    Script Date: 12/27/2017 13:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[coures](
	[cno] [char](4) NOT NULL,
	[cname] [nchar](20) NULL,
	[ccredit] [smallint] NOT NULL,
 CONSTRAINT [PK_coures] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'1   ', N'数学                  ', 4)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'10  ', N'java                ', 9)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'2   ', N'语文                  ', 3)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'3   ', N'数据库                 ', 6)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'4   ', N'信息系统                ', 5)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'5   ', N'电子计算机               ', 7)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'6   ', N'英语                  ', 4)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'7   ', N'操作系统                ', 3)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'8   ', N'思修                  ', 2)
INSERT [dbo].[coures] ([cno], [cname], [ccredit]) VALUES (N'9   ', N'历史                  ', 8)
/****** Object:  Default [DF_coures_ccredit]    Script Date: 12/27/2017 13:10:04 ******/
ALTER TABLE [dbo].[coures] ADD  CONSTRAINT [DF_coures_ccredit]  DEFAULT ((10)) FOR [ccredit]
GO
/****** Object:  Default [DF_student_ssex]    Script Date: 12/27/2017 13:10:04 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_ssex]  DEFAULT (N'男') FOR [ssex]
GO
/****** Object:  Check [CK_student]    Script Date: 12/27/2017 13:10:04 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [CK_student] CHECK  (([ssex]='男' OR [ssex]='女'))
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [CK_student]
GO
