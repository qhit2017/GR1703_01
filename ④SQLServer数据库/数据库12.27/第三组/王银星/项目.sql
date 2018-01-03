--创建学生表格
CREATE TABLE [dbo].[Teacher](
	[TId] [int] NOT NULL,
	[Tname] [nvarchar](10) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--插入
INSERT [dbo].[Teacher] ([TId], [Tname]) VALUES (61, N'李清照')
INSERT [dbo].[Teacher] ([TId], [Tname]) VALUES (62, N'苏轼')
INSERT [dbo].[Teacher] ([TId], [Tname]) VALUES (63, N'李白')
INSERT [dbo].[Teacher] ([TId], [Tname]) VALUES (64, N'马云')
--创建老师表格
CREATE TABLE [dbo].[Student](
	[sid] [int] NOT NULL,
	[sname] [nvarchar](10) NULL,
	[sage] [int] NULL,
	[ssex] [nchar](1) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--插入
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (11, N'王彬彬', 18, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (12, N'徐广慧', 17, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (13, N'王梦瑶', 18, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (14, N'刘泗鑫', 19, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (15, N'王文迪', 19, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (16, N'王定宇', 19, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (17, N'田淞丹', 18, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (18, N'廖伟良', 18, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (19, N'胡雯月', 19, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (20, N'邢文哲', 19, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (21, N'党刘涛', 17, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (22, N'张家豪', 18, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (23, N'申宇浩', 17, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (24, N'梁壮壮', 17, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (25, N'许方为', 16, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (26, N'陈起航', 18, N'女')
--创建成绩表格
CREATE TABLE [dbo].[SC](
	[sid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[score] [int] NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--插入
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 1, 80)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 2, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 3, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 4, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 5, 60)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 6, 61)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 7, 62)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 1, 63)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 2, 64)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 3, 65)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 4, 66)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 5, 67)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 6, 68)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 7, 69)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 1, 70)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 2, 71)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 3, 79)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 4, 80)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 5, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 6, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 7, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 1, 84)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 2, 85)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 3, 86)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 4, 87)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 5, 88)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 6, 89)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 7, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 1, 95)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 2, 96)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 3, 97)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 4, 98)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 5, 99)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 6, 100)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 1, 88)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 2, 89)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 3, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 4, 91)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 5, 92)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 6, 93)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 7, 94)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 1, 95)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 2, 96)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 3, 97)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 4, 98)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 5, 99)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 6, 76)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 7, 77)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 1, 78)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 2, 79)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 3, 80)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 4, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 5, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 6, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 7, 84)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 1, 85)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 2, 86)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 3, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 4, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 5, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 6, 84)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 7, 85)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 1, 86)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 2, 87)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 3, 88)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 4, 89)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 5, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 6, 91)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 7, 75)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 1, 76)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 2, 77)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 3, 78)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 4, 79)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 5, 80)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 6, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 7, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 1, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 2, 84)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 3, 66)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 4, 67)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 5, 68)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 6, 69)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 7, 70)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 1, 71)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 2, 72)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 3, 73)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 4, 74)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 5, 75)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 6, 76)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 7, 77)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 1, 89)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 2, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 3, 91)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 4, 92)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 5, 93)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 6, 94)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 7, 95)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 1, 96)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 2, 97)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 3, 98)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 4, 99)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 5, 87)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 6, 88)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 7, 89)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 1, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 2, 91)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 3, 92)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 4, 93)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 5, 94)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 6, 95)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 7, 96)
--创建课程表格
CREATE TABLE [dbo].[Course](
	[CId] [int] NOT NULL,
	[Cname] [nvarchar](10) NULL,
	[TId] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--插入
INSERT [dbo].[Course] ([CId], [Cname], [TId]) VALUES (1, N'计算机基础', 62)
INSERT [dbo].[Course] ([CId], [Cname], [TId]) VALUES (2, N'java基础', 62)
INSERT [dbo].[Course] ([CId], [Cname], [TId]) VALUES (3, N'数据库基础', 61)
INSERT [dbo].[Course] ([CId], [Cname], [TId]) VALUES (4, N'英语', 61)
INSERT [dbo].[Course] ([CId], [Cname], [TId]) VALUES (5, N'数学', 63)
INSERT [dbo].[Course] ([CId], [Cname], [TId]) VALUES (6, N'语文', 63)
INSERT [dbo].[Course] ([CId], [Cname], [TId]) VALUES (7, N'网络营销', 64)

ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])

ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_Student]

