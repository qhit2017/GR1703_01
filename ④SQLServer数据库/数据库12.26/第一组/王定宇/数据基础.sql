USE [12.26]
GO
/****** Object:  Table [dbo].[course]    Script Date: 12/26/2017 20:52:07 ******/
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
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'2   ', N'数学                ', 2)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'3   ', N'信息系统            ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'4   ', N'操作系统            ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'5   ', N'数据结构            ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'6   ', N'数据处理            ', 2)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'7   ', N'PASCAL语言          ', 4)
/****** Object:  Table [dbo].[student]    Script Date: 12/26/2017 20:52:07 ******/
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
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215121  ', N'李勇                ', N'男', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215122  ', N'刘晨                ', N'女', 19, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215123  ', N'王敏                ', N'女', 18, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200515125  ', N'张立                ', N'男', 19, N'is                  ')
/****** Object:  Table [dbo].[sc]    Script Date: 12/26/2017 20:52:07 ******/
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
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'2   ', 85)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'3   ', 88)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'2   ', 90)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'3   ', 80)
/****** Object:  Default [DF_student_ssex]    Script Date: 12/26/2017 20:52:07 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_ssex]  DEFAULT ('男') FOR [ssex]
GO
/****** Object:  Check [CK_student]    Script Date: 12/26/2017 20:52:07 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [CK_student] CHECK  (([ssex]='男' OR [ssex]='女'))
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [CK_student]
GO
/****** Object:  ForeignKey [FK_sc_course]    Script Date: 12/26/2017 20:52:07 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_course] FOREIGN KEY([cno])
REFERENCES [dbo].[course] ([cno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_course]
GO
/****** Object:  ForeignKey [FK_sc_student]    Script Date: 12/26/2017 20:52:07 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_student] FOREIGN KEY([sno])
REFERENCES [dbo].[student] ([sno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_student]
GO
