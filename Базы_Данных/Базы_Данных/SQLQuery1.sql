USE [DB4]
GO


CREATE TABLE [dbo].[users](
	[id] [int] PRIMARY KEY,
	[first_name] [nvarchar](100) NOT NULL,
	[email] [varchar](100) NULL,
	[age] [tinyint] NULL,
	)ON [PRIMARY]
GO


