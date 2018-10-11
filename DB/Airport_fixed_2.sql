USE [Airport]
GO

 ALTER TABLE [Вылеты] WITH CHECK ADD CONSTRAINT [Вылеты_fk1] FOREIGN KEY ([ID самолета]) REFERENCES [Самолет]([ID самолета])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Вылеты] CHECK CONSTRAINT [Вылеты_fk1] /* а ето че */
GO

ALTER TABLE [Вылеты] WITH CHECK ADD CONSTRAINT [Вылеты_fk2] FOREIGN KEY ([ID рейса]) REFERENCES [Рейсы ]([ID рейса])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Вылеты] CHECK CONSTRAINT [Вылеты_fk2]
GO

ALTER TABLE [Вылеты] WITH CHECK ADD CONSTRAINT [Вылеты_fk3] FOREIGN KEY ([ID расписания по дням недели]) REFERENCES [Расписание по дням недели]([ID расписания по дням недели])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Вылеты] CHECK CONSTRAINT [Вылеты_fk3]
GO

ALTER TABLE [Аэропорты] WITH CHECK ADD CONSTRAINT [Аэропорты_fk0] FOREIGN KEY ([Город ID]) REFERENCES [Города]([ID города])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Аэропорты] CHECK CONSTRAINT [Аэропорты_fk0]
GO

ALTER TABLE [Маршрут] WITH CHECK ADD CONSTRAINT [Маршрут_fk0] FOREIGN KEY ([Пункт вылета (код терминала)]) REFERENCES [Терминалы]([ID терминала])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Маршрут] CHECK CONSTRAINT [Маршрут_fk0]
GO

ALTER TABLE [Маршрут] WITH CHECK ADD CONSTRAINT [Маршрут_fk1] FOREIGN KEY ([Пункт назначения (код терминала)]) REFERENCES [Терминалы]([ID терминала])
ON UPDATE NO ACTION /*CASCADE*/
ON DELETE NO ACTION/*CASCADE*/
GO
/*
Сообщение 1785, уровень 16, состояние 0, строка 242
Введение ограничения внешнего ключа (FOREIGN KEY) "Маршрут_fk1" для таблицы "Маршрут" может привести к появлению
 циклов или множественных каскадных путей. Укажите ON DELETE NO ACTION или ON UPDATE NO ACTION либо измените
  другие ограничения внешнего ключа (FOREIGN KEY).
*/
ALTER TABLE [Маршрут] CHECK CONSTRAINT [Маршрут_fk1]
GO

ALTER TABLE [Маршрут] WITH CHECK ADD CONSTRAINT [Маршрут_fk2] FOREIGN KEY ([ID типа]) REFERENCES [Типы маршрутов]([ID типа])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Маршрут] CHECK CONSTRAINT [Маршрут_fk2]
GO

ALTER TABLE [Самолет] WITH CHECK ADD CONSTRAINT [Самолет_fk0] FOREIGN KEY ([Марка ID]) REFERENCES [Марки самолетов]([ID марки])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Самолет] CHECK CONSTRAINT [Самолет_fk0]
GO


ALTER TABLE [Города] WITH CHECK ADD CONSTRAINT [Города_fk0] FOREIGN KEY ([ID страны]) REFERENCES [Страны]([ID страны])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Города] CHECK CONSTRAINT [Города_fk0]
GO

ALTER TABLE [Экипаж] WITH CHECK ADD CONSTRAINT [Экипаж_fk0] FOREIGN KEY ([ID сотрудника]) REFERENCES [Сотрудники экипажа]([ID сотрудника])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Экипаж] CHECK CONSTRAINT [Экипаж_fk0]
GO

ALTER TABLE [Экипаж] WITH CHECK ADD CONSTRAINT [Экипаж_fk1] FOREIGN KEY ([ID вылета]) REFERENCES [Вылеты]([ID вылета])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Экипаж] CHECK CONSTRAINT [Экипаж_fk1]
GO


ALTER TABLE [Рейсы] WITH CHECK ADD CONSTRAINT [Рейсы_fk0] FOREIGN KEY ([ID маршрута]) REFERENCES [Маршрут]([ID маршрута])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Рейсы] CHECK CONSTRAINT [Рейсы_fk0]
GO

ALTER TABLE [Контракты] WITH CHECK ADD CONSTRAINT [Контракты_fk0] FOREIGN KEY ([ID сотрудника]) REFERENCES [Сотрудники экипажа]([ID сотрудника])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Контракты] CHECK CONSTRAINT [Контракты_fk0]
GO

ALTER TABLE [Контракты] WITH CHECK ADD CONSTRAINT [Контракты_fk1] FOREIGN KEY ([ID должности]) REFERENCES [Должности]([ID должности])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Контракты] CHECK CONSTRAINT [Контракты_fk1]
GO


ALTER TABLE [Терминалы] WITH CHECK ADD CONSTRAINT [Терминалы_fk0] FOREIGN KEY ([ID аэропорта]) REFERENCES [Аэропорты]([ID аэропорта])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Терминалы] CHECK CONSTRAINT [Терминалы_fk0]
GO


ALTER TABLE [Расписание рейсов] WITH CHECK ADD CONSTRAINT [Расписание рейсов_fk0] FOREIGN KEY ([ID рейса]) REFERENCES [Рейсы]([ID рейса])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Расписание рейсов] CHECK CONSTRAINT [Расписание рейсов_fk0]
GO

ALTER TABLE [Расписание по дням недели] WITH CHECK ADD CONSTRAINT [Расписание по дням недели_fk0] FOREIGN KEY ([ID расписания]) REFERENCES [Расписание рейсов]([ID расписания конкретного рейса])
ON UPDATE NO ACTION/*CASCADE*/
ON DELETE NO ACTION/*CASCADE*/
GO
/*
Сообщение 1785, уровень 16, состояние 0, строка 316
Введение ограничения внешнего ключа (FOREIGN KEY) "Расписание по дням недели_fk0" для таблицы "Расписание по дням
 недели" может привести к появлению циклов или множественных каскадных путей. Укажите ON DELETE NO ACTION или 
 ON UPDATE NO ACTION либо измените другие ограничения внешнего ключа (FOREIGN KEY).
*/
ALTER TABLE [Расписание по дням недели] CHECK CONSTRAINT [Расписание по дням недели_fk0]
GO

ALTER TABLE [Расписание по дням недели] WITH CHECK ADD CONSTRAINT [Расписание по дням недели_fk1] FOREIGN KEY ([ID дня недели]) REFERENCES [список дней недели]([ID дня недели])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Расписание по дням недели] CHECK CONSTRAINT [Расписание по дням недели_fk1]
GO 
