USE [t09]
GO
/****** Object:  Table [dbo].[student]    Script Date: 12/26/2017 19:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sno] [char](11) NOT NULL,
	[sname] [char](20) NULL,
	[ssex] [char](2) NULL,
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
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215121  ', N'李勇                ', N'男', 18, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215122  ', N'刘晨                ', N'男', 19, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215123  ', N'王敏                ', N'女', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215124  ', N'张立                ', N'男', 21, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215125  ', N'甲                  ', N'男', 22, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215126  ', N'乙                  ', N'女', 23, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215127  ', N'丙                  ', N'男', 24, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215128  ', N'丁                  ', N'男', 25, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215129  ', N'戊                  ', N'女', 26, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215130  ', N'己                  ', N'女', 18, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215131  ', N'庚                  ', N'男', 19, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215132  ', N'辛                  ', N'女', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215133  ', N'壬                  ', N'女', 21, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215134  ', N'癸                  ', N'女', 22, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215135  ', N'张三                ', N'女', 23, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215136  ', N'李四                ', N'男', 24, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215137  ', N'王五                ', N'男', 25, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215138  ', N'老李                ', N'女', 15, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215139  ', N'老王                ', N'男', 16, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215140  ', N'喜洋洋              ', N'男', 17, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215141  ', N'美羊羊              ', N'女', 18, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215142  ', N'灰太狼              ', N'男', 19, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215143  ', N'小灰灰              ', N'男', 20, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215144  ', N'懒洋洋              ', N'男', 21, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215145  ', N'沸羊羊              ', N'男', 22, N'cs                  ')
/****** Object:  Table [dbo].[SC]    Script Date: 12/26/2017 19:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[sno] [char](11) NOT NULL,
	[cno] [char](4) NOT NULL,
	[grade] [smallint] NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[sno] ASC,
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'1   ', 60)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'2   ', 70)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215123  ', N'3   ', 80)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215124  ', N'4   ', 90)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215125  ', N'5   ', 100)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215126  ', N'6   ', 101)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215127  ', N'7   ', 50)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215128  ', N'8   ', 45)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215129  ', N'9   ', 66)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215130  ', N'10  ', 98)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215131  ', N'1   ', 89)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215132  ', N'2   ', 75)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215133  ', N'3   ', 65)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215134  ', N'4   ', 84)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215135  ', N'5   ', 93)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215136  ', N'6   ', 52)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215137  ', N'7   ', 49)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215138  ', N'8   ', 99)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215139  ', N'9   ', 90)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215140  ', N'10  ', 66)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215141  ', N'1   ', 70)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215142  ', N'2   ', 80)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215143  ', N'3   ', 90)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215144  ', N'4   ', 45)
INSERT [dbo].[SC] ([sno], [cno], [grade]) VALUES (N'200215145  ', N'5   ', 50)
/****** Object:  Table [dbo].[Course]    Script Date: 12/26/2017 19:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[cno] [char](4) NOT NULL,
	[cname] [char](20) NULL,
	[Ccredit] [smallint] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'1   ', N'数据库              ', 6)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'10  ', N'土木工程            ', 8)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'2   ', N'数学                ', 4)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'3   ', N'信息系统            ', 5)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'4   ', N'操作系统            ', 3)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'5   ', N'数据结构            ', 9)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'6   ', N'数据类型            ', 4)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'7   ', N'PASCAL语音          ', 7)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'8   ', N'思修                ', 6)
INSERT [dbo].[Course] ([cno], [cname], [Ccredit]) VALUES (N'9   ', N'英语                ', 5)
