USE [DB4]
GO



CREATE TABLE [dbo].[person](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[balance] [varchar](100) NOT NULL,
	[create_date] [datetime] NOT NULL
) 
GO



INSERT INTO person(name, balance, create_date)
SELECT name AS name_u, balance AS balance_u, create_date AS create_date_u
FROM users


