
CREATE TABLE [dbo].[xsb](
	[sid] [int] NULL,
	[sname] [nvarchar](10) NULL,
	[sage] [int] NULL,
	[ssex] [nchar](1) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[kcb](
	[cid] [int] NULL,
	[cname] [nvarchar](10) NULL,
	[tid] [int] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[jsb](
	[tid] [int] NULL,
	[tname] [nvarchar](10) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[cjb](
	[sid] [int] NULL,
	[cid] [int] NULL,
	[score] [int] NULL
) ON [PRIMARY]

