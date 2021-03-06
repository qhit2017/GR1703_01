--教师表
CREATE TABLE [dbo].[teachers](
	[tid] [int] NOT NULL,
	[tname] [nvarchar](10) NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 

SET QUOTED_IDENTIFIER ON
GO
--学生表
CREATE TABLE [dbo].[students](
	[sid] [int] NOT NULL,
	[sname] [nvarchar](10) NULL,
	[sage] [int] NULL,
	[ssex] [nchar](1) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(

SET QUOTED_IDENTIFIER ON
GO
--课程表
CREATE TABLE [dbo].[couress](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](10) NULL,
	[tid] [int] NULL,
 CONSTRAINT [PK_coures] PRIMARY KEY CLUSTERED 

SET QUOTED_IDENTIFIER ON
GO
--成绩表
CREATE TABLE [dbo].[scs](
	[sid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[score] [int] NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]


