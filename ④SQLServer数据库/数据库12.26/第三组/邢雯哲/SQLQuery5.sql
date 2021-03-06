USE [雯]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 12/26/2017 19:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Coursess](
	[Cno] [char](4) NOT NULL,
	[CName] [char](20) NULL,
	[Ccredit] [smallint] NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 12/26/2017 19:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[students](
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
/****** Object:  Table [dbo].[sc]    Script Date: 12/26/2017 19:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[scs](
	[sno] [char](11) NOT NULL,
	[cno] [char](4) NOT NULL,
	[Grade] [smallint] NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[sno] ASC,
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_student_ssex]    Script Date: 12/26/2017 19:56:12 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_ssex]  DEFAULT ('男') FOR [ssex]
GO
/****** Object:  Check [CK_student]    Script Date: 12/26/2017 19:56:12 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [CK_student] CHECK  (([ssex]='男' OR [ssex]='女
'))
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [CK_student]
GO
/****** Object:  ForeignKey [FK_sc_Courses]    Script Date: 12/26/2017 19:56:12 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_Courses] FOREIGN KEY([cno])
REFERENCES [dbo].[Courses] ([Cno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_Courses]
GO
/****** Object:  ForeignKey [FK_sc_student]    Script Date: 12/26/2017 19:56:12 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_student] FOREIGN KEY([sno])
REFERENCES [dbo].[student] ([sno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_student]
GO
