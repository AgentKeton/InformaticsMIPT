USE [DfLessonDb]
GO


CREATE TABLE [dbo].[BlogUser](
	[UserLogin] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[RagistrationDate] [datetime] NOT NULL
) 

GO

ALTER TABLE [dbo].[BlogUser] 
ADD  CONSTRAINT [DF_BlogUser_RagistrationDate]  DEFAULT (getdate()) FOR [RagistrationDate]
GO

ALTER TABLE BlogUser 
ADD  CONSTRAINT DF_BlogUser_UserLogin_Unique  UNIQUE (UserLogin)
GO

ALTER TABLE BlogUser 
ADD  CONSTRAINT DF_BlogUser_Email_Unique  UNIQUE (Email)
GO

ALTER TABLE BlogUser 
ADD UserId int IDENTITY(1,1)
GO

ALTER TABLE BlogUser 
ADD CONSTRAINT PK_BlogUser_UserID PRIMARY KEY CLUSTERED (UserID)
GO
