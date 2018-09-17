USE [DfLessonDb]
GO


CREATE TABLE [dbo].[BlogUser](
	/* можно просто сразу добавить вместо ADD UserId int IDENTITY(1,1) */
	/* UserId int IDENTITY(1,1) */
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
ADD UserId int IDENTITY(1,1) /* добавляем столбец UserId в таблицу */
                          /* тип int IDENTITY - пользователь ничего не вносит, все вычисляется само. начиная с 1 с шагом в 1 */
GO

ALTER TABLE BlogUser 
ADD CONSTRAINT PK_BlogUser_UserID PRIMARY KEY CLUSTERED (UserID) /* PRIMARY KEY - данное поле будет ключевым */
                                       /* CLUSTERED - по этому полю также будет построен кластеризованный индекс */
				       /* !первичный ключ является кластеризованным индексом */
GO
