USE [DB4]
GO


CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[balance] [varchar](100) NOT NULL,
	[create_date] [datetime] NOT NULL,
	)ON [PRIMARY]
GO


