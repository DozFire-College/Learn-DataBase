USE Praktika
GO
CREATE schema Persons
CREATE TABLE [dbo].[persons](
	[id] [int] NULL,
	[name] [varchar](10) NOT NULL,
	[date] [datetime] NOT NULL,
	[email][nvarchar](30) NOT NULL,
	[age][tinyint] NOT NULL
	)
CREATE TABLE [dbo].[persons2](
	[id] [int] NULL,
	[name] [varchar](10) NOT NULL,
	[age][tinyint] NOT NULL
)