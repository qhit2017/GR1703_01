USE [wangyinxing]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/26/2017 21:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Cno] [char](4) NOT NULL,
	[CName] [char](20) NULL,
	[Ccredit] [smallint] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'1   ', N'语文                ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'10  ', N'化学                ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'11  ', N'体育                ', 1)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'2   ', N'数学                ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'3   ', N'英语                ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'4   ', N'计算机              ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'5   ', N'政治                ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'6   ', N'历史                ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'7   ', N'生物                ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'8   ', N'地理                ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'9   ', N'物理                ', 2)
/****** Object:  Table [dbo].[Student]    Script Date: 12/26/2017 21:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Sno] [char](11) NOT NULL,
	[Sname] [char](20) NULL,
	[Ssex] [char](2) NULL,
	[Sage] [smallint] NULL,
	[Sdept] [char](20) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'100        ', N'赵一                ', N'男', 11, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'101        ', N'赵一                ', N'女', 12, N'计算机科学系        ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'102        ', N'赵一                ', N'男', 13, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'103        ', N'赵一                ', N'女', 14, N'建筑工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'104        ', N'赵一                ', N'男', 15, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'105        ', N'赵一                ', N'女', 16, N'建筑工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'106        ', N'赵一                ', N'男', 17, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'107        ', N'赵一                ', N'男', 18, N'建筑工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'108        ', N'赵一                ', N'男', 19, N'建筑工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'109        ', N'钱一                ', N'女', 20, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'110        ', N'钱一                ', N'男', 21, N'建筑工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'111        ', N'钱一                ', N'男', 22, N'土木工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'112        ', N'钱一                ', N'男', 23, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'113        ', N'钱一                ', N'女', 24, N'土木工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'114        ', N'钱一                ', N'男', 25, N'土木工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'115        ', N'钱一                ', N'女', 26, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'116        ', N'钱一                ', N'男', 27, N'土木工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'117        ', N'钱一                ', N'女', 28, N'建筑工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'118        ', N'孙一                ', N'男', 29, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'119        ', N'孙一                ', N'女', 30, N'土木工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'120        ', N'孙一                ', N'男', 31, N'建筑工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'121        ', N'孙一                ', N'女', 32, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'122        ', N'孙一                ', N'男', 33, N'土木工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'123        ', N'孙一                ', N'男', 34, N'信工系              ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'124        ', N'孙一                ', N'女', 35, N'土木工程系          ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'125        ', N'孙一                ', N'女', 36, N'建筑工程系          ')
/****** Object:  Table [dbo].[SC]    Script Date: 12/26/2017 21:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[Sno] [char](11) NOT NULL,
	[Cno] [char](4) NOT NULL,
	[Grade] [smallint] NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC,
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'100        ', N'1   ', 99)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'101        ', N'2   ', 98)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'102        ', N'3   ', 97)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'103        ', N'4   ', 96)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'104        ', N'2   ', 95)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'105        ', N'1   ', 94)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'106        ', N'4   ', 93)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'107        ', N'3   ', 92)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'108        ', N'1   ', 91)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'109        ', N'4   ', 90)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'110        ', N'1   ', 89)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'111        ', N'3   ', 88)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'112        ', N'7   ', 87)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'113        ', N'1   ', 86)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'114        ', N'6   ', 85)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'115        ', N'6   ', 84)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'116        ', N'2   ', 83)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'117        ', N'3   ', 82)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'118        ', N'1   ', 81)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'119        ', N'5   ', 80)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'120        ', N'3   ', 79)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'121        ', N'2   ', 78)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'122        ', N'5   ', 77)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'123        ', N'2   ', 76)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'124        ', N'5   ', 75)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'125        ', N'2   ', 74)
/****** Object:  Default [DF_Student_Ssex]    Script Date: 12/26/2017 21:01:59 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_Ssex]  DEFAULT ('男') FOR [Ssex]
GO
/****** Object:  Check [CK_Student]    Script Date: 12/26/2017 21:01:59 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student] CHECK  (([Ssex]='男' OR [Ssex]='女'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student]
GO
/****** Object:  ForeignKey [FK_SC_Course]    Script Date: 12/26/2017 21:01:59 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_Course] FOREIGN KEY([Cno])
REFERENCES [dbo].[Course] ([Cno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_Course]
GO
/****** Object:  ForeignKey [FK_SC_Student]    Script Date: 12/26/2017 21:01:59 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_Student] FOREIGN KEY([Sno])
REFERENCES [dbo].[Student] ([Sno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_Student]
GO
