
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

SET ANSI_PADDING OFF



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

CREATE TABLE [dbo].[Course](
	[cno] [char](4) NOT NULL,
	[cname] [char](20) NULL,
	[Ccredit] [smallint] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

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
