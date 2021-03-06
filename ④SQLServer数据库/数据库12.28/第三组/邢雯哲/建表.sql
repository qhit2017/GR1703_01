--商品表
CREATE TABLE [dbo].[goodss](
	[gid] [int] NOT NULL,
	[gname] [nvarchar](10) NULL,
	[unit] [nvarchar](5) NULL,
	[spec] [nvarchar](10) NULL,
	[price] [decimal](10, 2) NULL,
 CONSTRAINT [PK_goods] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


--部门表
CREATE TABLE [dbo].[depts](
	[deptno] [int] NOT NULL,
	[dname] [nvarchar](10) NULL,
 CONSTRAINT [PK_dept] PRIMARY KEY CLUSTERED 
(
	[deptno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

--出库表

CREATE TABLE [dbo].[outdetails](
	[outid] [int] NOT NULL,
	[gid] [int] NULL,
	[outamt] [int] NULL,
	[month] [nvarchar](10) NULL,
	[deptno] [int] NULL,
 CONSTRAINT [PK_outdetail] PRIMARY KEY CLUSTERED 
(
	[outid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

--入库表

CREATE TABLE [dbo].[indetails](
	[inid] [int] NOT NULL,
	[gid] [int] NULL,
	[inamt] [int] NULL,
	[month] [nvarchar](10) NULL,
 CONSTRAINT [PK_indetail] PRIMARY KEY CLUSTERED 
(
	[inid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[indetail]  WITH CHECK ADD  CONSTRAINT [FK_indetail_goods] FOREIGN KEY([gid])
REFERENCES [dbo].[goods] ([gid])

ALTER TABLE [dbo].[indetail] CHECK CONSTRAINT [FK_indetail_goods]

ALTER TABLE [dbo].[outdetail]  WITH CHECK ADD  CONSTRAINT [FK_outdetail_dept] FOREIGN KEY([deptno])
REFERENCES [dbo].[dept] ([deptno])

ALTER TABLE [dbo].[outdetail] CHECK CONSTRAINT [FK_outdetail_dept]

ALTER TABLE [dbo].[outdetail]  WITH CHECK ADD  CONSTRAINT [FK_outdetail_goods] FOREIGN KEY([gid])
REFERENCES [dbo].[goods] ([gid])

ALTER TABLE [dbo].[outdetail] CHECK CONSTRAINT [FK_outdetail_goods]

