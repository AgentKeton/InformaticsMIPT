USE [Airport]
GO

ALTER TABLE [Расписание по дням недели]  
ADD CONSTRAINT [АК_Расписание по дням недели] UNIQUE ([ID расписания], [ID дня недели])   
GO 
