USE [DfLessonDb]
GO

/****** Object:  Table [dbo].[Blog]    Script Date: 14.09.2018 16:55:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blog](
	[BlogId] [int] NOT NULL,
	/* [BlogId] [int] NOT NULL, */
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

ALTER TABLE Blog /* меняем таблицу Blog */
ALTER COLUMN UserId int NOT NULL  /* изменение существующего столбца */
GO

ALTER TABLE Blog 
WITH CHECK ADD CONSTRAINT FK_Blog_BlogId FOREIGN KEY (UserId)   /* WITH CHECK - ограничение на внешний клюс FOREIGN KEY(UserId) */ 
                                                /*ключ куда (т е в блог)*/
REFERENCES BlogUser (UserId)     /* REFERENCES - на что ссылается наш внешний ключ */   
                                 /*откуда берем ключ - из блогюзер*/
				 /* BlogUser.UserId - первичный ключ*/
				 /* Blog.UserId - внешний ключ*/
ON UPDATE CASCADE  /* аналогично, но в случае изменения ключевого поля, изменится его ключ и во всех дочерних полях*/
ON DELETE CASCADE  /*в случае удаления пользователя удалятся и его блоги*/
GO
/*3 вида ссылок:
1) нет ограничения внешнего ключа
2) есть ограничение внешнего ключа, внешний ключ мб NULL
3) есть ограничение внешнего ключа, внешний ключ не мб NULL*/

/*3 отношений внешнего ключа:
1) один к одному
2) один ко многим
3) много ко многим*/
