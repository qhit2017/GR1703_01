--教师表
CREATE TABLE [dbo].[teacher](
	[tid] [int] NOT NULL,
	[tname] [nvarchar](10) NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--学生表
CREATE TABLE [dbo].[student](
	[sid] [int] NOT NULL,
	[sname] [nvarchar](10) NULL,
	[sage] [int] NULL,
	[ssex] [nchar](1) NULL,
 CONSTRAINT [PK_student_1] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--课程表
CREATE TABLE [dbo].[course](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](10) NULL,
	[tid] [int] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--成绩表
CREATE TABLE [dbo].[sc](
	[sid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[score] [int] NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
