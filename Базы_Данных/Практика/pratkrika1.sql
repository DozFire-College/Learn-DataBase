USE [Praktika]
GO


CREATE TABLE [dbo].[persons3](
	[id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[name] [varchar](10) NOT NULL,
	[age] [tinyint] NOT NULL
) ON [PRIMARY]
GO

INSERT INTO persons3(id, name, age)
SELECT id, name, age
FROM persons2 

DROP TABLE persons2;
EXEC sp_rename 'persons3', 'persons2';

