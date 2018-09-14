USE [DfLessonDb]
GO

/****** Object:  Table [dbo].[Blog]    Script Date: 14.09.2018 16:55:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blog](
	[BlogId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[CreatedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Blog] 
ADD  CONSTRAINT [DF_Blog_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE Blog 
ADD CONSTRAINT PK_Blog_BlogId PRIMARY KEY CLUSTERED (BlogId)
GO

ALTER TABLE Blog 
ALTER COLUMN UserId int NOT NULL
GO

ALTER TABLE Blog 
WITH CHECK ADD CONSTRAINT FK_Blog_BlogId FOREIGN KEY (UserId)/*ключ куда (т е в блог)*/
REFERENCES BlogUser (UserId)/*откуда берем ключ (т е из блогюзер)*/
ON UPDATE CASCADE
ON DELETE CASCADE
GO
