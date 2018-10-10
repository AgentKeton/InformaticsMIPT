USE [Airport]
GO

DROP TABLE [Экипаж]
DROP TABLE [Контракты]
DROP TABLE [Сотрудники экипажа]
DROP TABLE [Должности]
DROP TABLE [Вылеты]
DROP TABLE [Самолет]
DROP TABLE [Марки самолетов]
DROP TABLE [Расписание по дням недели]
DROP TABLE [Расписание рейсов]
DROP TABLE [список дней недели]
DROP TABLE [Рейсы ]
DROP TABLE [Типы маршрутов]
DROP TABLE [Маршрут]
DROP TABLE [Терминалы]
DROP TABLE [Аэропорты]
DROP TABLE [Города]
DROP TABLE [Страны]


ALTER TABLE [Маршрут] 
DROP CONSTRAINT [Маршрут_fk2]
GO

ALTER TABLE [Типы маршрутов] 
DROP CONSTRAINT [PK_Типы маршрутов]
GO

ALTER TABLE [Типы маршрутов] 
DROP CONSTRAINT [UQ__Типы мар__29294EF2E72C090E]
GO

ALTER TABLE [Типы маршрутов] 
ALTER COLUMN [ID типа] int NOT NULL 
GO

ALTER TABLE [Типы маршрутов] 
ADD CONSTRAINT [АК_Типы маршрутов] UNIQUE ([ID типа])   
GO 
