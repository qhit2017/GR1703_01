--ѧ����
CREATE TABLE [dbo].[student](
	[sno] [char](11) NOT NULL,
	[sname] [char](20) NULL,
	[ssex] [char](2) NULL,
	[sagea] [smallint] NULL,
	[sdept] [char](20) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

--�γ̱�
CREATE TABLE [dbo].[Course](
	[cno] [char](4) NOT NULL,
	[cname] [char](20) NULL,
	[ccredit] [smallint] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

--ѧ��ѡ�α�
CREATE TABLE [dbo].[SC](
	[sno] [char](11) NOT NULL,
	[cno] [char](4) NOT NULL,
	[Grade] [smallint] NULL,
 CONSTRAINT [PK_ѧ��ѡ�α�] PRIMARY KEY CLUSTERED 
(
	[sno] ASC,
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

--