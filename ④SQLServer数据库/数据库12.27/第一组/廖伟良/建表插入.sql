--建表 Teacher
CREATE TABLE [dbo].[Teacher](
	[TID] [int] NOT NULL,
	[Tname] [nchar](10) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--插入数据
INSERT [dbo].[Teacher] ([TID], [Tname]) VALUES (61, '李清照       ')
INSERT [dbo].[Teacher] ([TID], [Tname]) VALUES (62, '苏轼        ')
INSERT [dbo].[Teacher] ([TID], [Tname]) VALUES (63, '李白        ')
INSERT [dbo].[Teacher] ([TID], [Tname]) VALUES (64, '马云        ')

--建表 Student
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

--插入数据
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (11, '王彬彬', 18, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (12, '徐广慧', 17, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (13, '王梦瑶', 18, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (14, '刘泗鑫', 19, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (15, '王文迪', 19, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (16, '王定宇', 19, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (17, '田淞丹', 18, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (18, '廖伟良', 18, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (19, '胡雯月', 19, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (20, '邢文哲', 19, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (21, '党刘涛', 17, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (22, '张家豪', 18, N'女')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (23, '申宇浩', 17, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (24, '梁壮壮', 17, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (25, '许方为', 16, N'男')
INSERT [dbo].[Student] ([sid], [sname], [sage], [ssex]) VALUES (26, '陈起航', 18, N'女')

--建表 Course
CREATE TABLE [dbo].[Course](
	[CID] [int] NOT NULL,
	[Cname] [nvarchar](10) NULL,
	[TID] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

--插入数据
INSERT [dbo].[Course] ([CID], [Cname], [TID]) VALUES (1, '计算机基础', 62)
INSERT [dbo].[Course] ([CID], [Cname], [TID]) VALUES (2, 'java基础', 62)
INSERT [dbo].[Course] ([CID], [Cname], [TID]) VALUES (3, '数据库基础', 61)
INSERT [dbo].[Course] ([CID], [Cname], [TID]) VALUES (4, '英语', 61)
INSERT [dbo].[Course] ([CID], [Cname], [TID]) VALUES (5, '数学', 63)
INSERT [dbo].[Course] ([CID], [Cname], [TID]) VALUES (6, '语文', 63)
INSERT [dbo].[Course] ([CID], [Cname], [TID]) VALUES (7, '网络营销', 64)

--建表 SC
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

--插入数据
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 1, 75)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 2, 76)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 5, 60)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 6, 61)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (11, 7, 62)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 1, 58)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 2, 59)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 5, 67)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 6, 68)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (12, 7, 69)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 1, 65)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 2, 66)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 5, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 6, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (13, 7, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 1, 79)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 2, 80)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 5, 88)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 6, 89)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (14, 7, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 1, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 2, 91)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 5, 99)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (15, 6, 100)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 1, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 2, 84)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 5, 92)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 6, 93)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (16, 7, 94)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 1, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 2, 91)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 5, 99)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 6, 76)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (17, 7, 77)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 1, 73)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 2, 74)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 5, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 6, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (18, 7, 84)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 1, 80)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 2, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 5, 83)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 6, 84)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (19, 7, 85)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 1, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 2, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 5, 90)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 6, 91)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (20, 7, 75)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 1, 71)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 2, 72)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 5, 80)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 6, 81)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (21, 7, 82)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 1, 78)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 2, 79)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 5, 68)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 6, 69)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (22, 7, 70)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 1, 66)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 2, 67)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 5, 75)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 6, 76)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (23, 7, 77)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 1, 84)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 2, 85)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 5, 93)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 6, 94)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (24, 7, 95)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 1, 91)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 2, 92)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 5, 87)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 6, 88)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (25, 7, 89)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 1, 85)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 2, 86)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 5, 94)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 6, 95)
INSERT [dbo].[SC] ([sid], [cid], [score]) VALUES (26, 7, 96)
