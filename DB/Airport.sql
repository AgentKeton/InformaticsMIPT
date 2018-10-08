CREATE TABLE [Вылеты] (
	ID вылета integer NOT NULL UNIQUE,
	ID самолета integer NOT NULL,
	ID рейса integer NOT NULL,
	Дата и время (фактические) вылета datetime NOT NULL,
	Дата и время (фактические) прибытия datetime NOT NULL,
	Кол-во проданных билетов integer NOT NULL,
	ID расписания по дням недели integer NOT NULL,
	Дата вылета (по расписанию) date NOT NULL,
  CONSTRAINT [PK_Вылеты] PRIMARY KEY CLUSTERED
  (
  [ID вылета] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Аэропорты] (
	ID аэропорта integer NOT NULL,
	Код аэропорта varchar NOT NULL,
	Название аэропорта varchar NOT NULL UNIQUE,
	Город ID integer NOT NULL,
  CONSTRAINT [PK_Аэропорты] PRIMARY KEY CLUSTERED
  (
  [ID аэропорта] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Маршрут] (
	Номер маршрута integer NOT NULL,
	Расстояние, км decimal NOT NULL,
	Пункт вылета (код терминала) integer NOT NULL,
	Пункт назначения (код терминала) integer NOT NULL,
	Тип integer NOT NULL,
  CONSTRAINT [PK_Маршрут] PRIMARY KEY CLUSTERED
  (
  [Номер маршрута] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Самолет] (
	ID самолета integer NOT NULL,
	Регистрационный номер varchar NOT NULL,
	Марка ID integer NOT NULL,
	Дата выпуска date NOT NULL,
  CONSTRAINT [PK_Самолет] PRIMARY KEY CLUSTERED
  (
  [ID самолета] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Сотрудники экипажа] (
	ID сотрудника integer NOT NULL,
	Фамилия varchar NOT NULL,
	Имя varchar NOT NULL,
	Телефон varchar NOT NULL,
	Адрес varchar NOT NULL,
  CONSTRAINT [PK_Сотрудники экипажа] PRIMARY KEY CLUSTERED
  (
  [ID сотрудника] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Типы маршрутов] (
	Тип integer NOT NULL,
	Название varchar NOT NULL,
  CONSTRAINT [PK_Типы маршрутов] PRIMARY KEY CLUSTERED
  (
  [Тип] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Марки самолетов] (
	ID марки integer NOT NULL,
	Название varchar NOT NULL UNIQUE,
	Число мест integer NOT NULL,
	Скорость полета, км/ч decimal NOT NULL,
	Максимальная дальность, км decimal NOT NULL,
  CONSTRAINT [PK_Марки самолетов] PRIMARY KEY CLUSTERED
  (
  [ID марки] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Города] (
	ID города integer NOT NULL,
	Название города varchar NOT NULL,
	ID страны integer NOT NULL,
  CONSTRAINT [PK_Города] PRIMARY KEY CLUSTERED
  (
  [ID города] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Экипаж] (
	ID сотрудника integer NOT NULL,
	ID вылета integer NOT NULL,
  CONSTRAINT [PK_Экипаж] PRIMARY KEY CLUSTERED
  (
  [ID сотрудника] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Страны] (
	ID страны integer NOT NULL,
	Название varchar NOT NULL,
  CONSTRAINT [PK_Страны] PRIMARY KEY CLUSTERED
  (
  [ID страны] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Рейсы ] (
	ID рейса integer NOT NULL,
	Номер рейса varchar NOT NULL,
	Номер маршрута integer NOT NULL,
  CONSTRAINT [PK_Рейсы ] PRIMARY KEY CLUSTERED
  (
  [ID рейса] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Контракты] (
	ID сотрудника integer NOT NULL,
	Дата заключения date NOT NULL,
	Дата разрыва date,
	ID должности integer NOT NULL,
  CONSTRAINT [PK_Контракты] PRIMARY KEY CLUSTERED
  (
  [ID сотрудника] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Должности] (
	ID должности integer NOT NULL,
	Название varchar NOT NULL,
  CONSTRAINT [PK_Должности] PRIMARY KEY CLUSTERED
  (
  [ID должности] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Терминалы] (
	ID терминала integer NOT NULL,
	ID аэропорта integer NOT NULL,
	Название терминала varchar NOT NULL,
  CONSTRAINT [PK_Терминалы] PRIMARY KEY CLUSTERED
  (
  [ID терминала] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [список дней недели] (
	ID дня недели integer NOT NULL,
	название дня недели varchar NOT NULL,
  CONSTRAINT [PK_список дней недели] PRIMARY KEY CLUSTERED
  (
  [ID дня недели] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Расписание рейсов] (
	ID расписания конкретного рейса integer NOT NULL,
	ID рейса integer NOT NULL,
	дата начала действия расписания date NOT NULL,
	дата окончания действия расписания date NOT NULL,
  CONSTRAINT [PK_Расписание рейсов] PRIMARY KEY CLUSTERED
  (
  [ID расписания конкретного рейса] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Расписание по дням недели] (
	ID расписания по дням недели integer NOT NULL,
	ID расписания integer NOT NULL,
	ID дня недели integer NOT NULL,
	Время отправления time NOT NULL,
	Время прибытия time NOT NULL,
  CONSTRAINT [PK_Расписание по дням недели] PRIMARY KEY CLUSTERED
  (
  [ID расписания по дням недели] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Вылеты] WITH CHECK ADD CONSTRAINT [Вылеты_fk0] FOREIGN KEY ([ID вылета]) REFERENCES []([])
ON UPDATE CASCADE
GO
ALTER TABLE [Вылеты] CHECK CONSTRAINT [Вылеты_fk0]
GO
ALTER TABLE [Вылеты] WITH CHECK ADD CONSTRAINT [Вылеты_fk1] FOREIGN KEY ([ID самолета]) REFERENCES [Самолет]([ID самолета])
ON UPDATE CASCADE
GO
ALTER TABLE [Вылеты] CHECK CONSTRAINT [Вылеты_fk1]
GO
ALTER TABLE [Вылеты] WITH CHECK ADD CONSTRAINT [Вылеты_fk2] FOREIGN KEY ([ID рейса]) REFERENCES [Рейсы ]([ID рейса])
ON UPDATE CASCADE
GO
ALTER TABLE [Вылеты] CHECK CONSTRAINT [Вылеты_fk2]
GO
ALTER TABLE [Вылеты] WITH CHECK ADD CONSTRAINT [Вылеты_fk3] FOREIGN KEY ([ID расписания по дням недели]) REFERENCES [Расписание по дням недели]([ID расписания по дням недели])
ON UPDATE CASCADE
GO
ALTER TABLE [Вылеты] CHECK CONSTRAINT [Вылеты_fk3]
GO

ALTER TABLE [Аэропорты] WITH CHECK ADD CONSTRAINT [Аэропорты_fk0] FOREIGN KEY ([Город ID]) REFERENCES [Города]([ID города])
ON UPDATE CASCADE
GO
ALTER TABLE [Аэропорты] CHECK CONSTRAINT [Аэропорты_fk0]
GO

ALTER TABLE [Маршрут] WITH CHECK ADD CONSTRAINT [Маршрут_fk0] FOREIGN KEY ([Пункт вылета (код терминала)]) REFERENCES [Терминалы]([ID терминала])
ON UPDATE CASCADE
GO
ALTER TABLE [Маршрут] CHECK CONSTRAINT [Маршрут_fk0]
GO
ALTER TABLE [Маршрут] WITH CHECK ADD CONSTRAINT [Маршрут_fk1] FOREIGN KEY ([Пункт назначения (код терминала)]) REFERENCES [Терминалы]([ID терминала])
ON UPDATE CASCADE
GO
ALTER TABLE [Маршрут] CHECK CONSTRAINT [Маршрут_fk1]
GO
ALTER TABLE [Маршрут] WITH CHECK ADD CONSTRAINT [Маршрут_fk2] FOREIGN KEY ([Тип]) REFERENCES [Типы маршрутов]([Тип])
ON UPDATE CASCADE
GO
ALTER TABLE [Маршрут] CHECK CONSTRAINT [Маршрут_fk2]
GO

ALTER TABLE [Самолет] WITH CHECK ADD CONSTRAINT [Самолет_fk0] FOREIGN KEY ([Марка ID]) REFERENCES [Марки самолетов]([ID марки])
ON UPDATE CASCADE
GO
ALTER TABLE [Самолет] CHECK CONSTRAINT [Самолет_fk0]
GO




ALTER TABLE [Города] WITH CHECK ADD CONSTRAINT [Города_fk0] FOREIGN KEY ([ID страны]) REFERENCES [Страны]([ID страны])
ON UPDATE CASCADE
GO
ALTER TABLE [Города] CHECK CONSTRAINT [Города_fk0]
GO

ALTER TABLE [Экипаж] WITH CHECK ADD CONSTRAINT [Экипаж_fk0] FOREIGN KEY ([ID сотрудника]) REFERENCES [Сотрудники экипажа]([ID сотрудника])
ON UPDATE CASCADE
GO
ALTER TABLE [Экипаж] CHECK CONSTRAINT [Экипаж_fk0]
GO
ALTER TABLE [Экипаж] WITH CHECK ADD CONSTRAINT [Экипаж_fk1] FOREIGN KEY ([ID вылета]) REFERENCES [Вылеты]([ID вылета])
ON UPDATE CASCADE
GO
ALTER TABLE [Экипаж] CHECK CONSTRAINT [Экипаж_fk1]
GO


ALTER TABLE [Рейсы ] WITH CHECK ADD CONSTRAINT [Рейсы _fk0] FOREIGN KEY ([Номер маршрута]) REFERENCES [Маршрут]([Номер маршрута])
ON UPDATE CASCADE
GO
ALTER TABLE [Рейсы ] CHECK CONSTRAINT [Рейсы _fk0]
GO

ALTER TABLE [Контракты] WITH CHECK ADD CONSTRAINT [Контракты_fk0] FOREIGN KEY ([ID сотрудника]) REFERENCES [Сотрудники экипажа]([ID сотрудника])
ON UPDATE CASCADE
GO
ALTER TABLE [Контракты] CHECK CONSTRAINT [Контракты_fk0]
GO
ALTER TABLE [Контракты] WITH CHECK ADD CONSTRAINT [Контракты_fk1] FOREIGN KEY ([ID должности]) REFERENCES [Должности]([ID должности])
ON UPDATE CASCADE
GO
ALTER TABLE [Контракты] CHECK CONSTRAINT [Контракты_fk1]
GO


ALTER TABLE [Терминалы] WITH CHECK ADD CONSTRAINT [Терминалы_fk0] FOREIGN KEY ([ID аэропорта]) REFERENCES [Аэропорты]([ID аэропорта])
ON UPDATE CASCADE
GO
ALTER TABLE [Терминалы] CHECK CONSTRAINT [Терминалы_fk0]
GO

ALTER TABLE [список дней недели] WITH CHECK ADD CONSTRAINT [список дней недели_fk0] FOREIGN KEY ([ID дня недели]) REFERENCES []([])
ON UPDATE CASCADE
GO
ALTER TABLE [список дней недели] CHECK CONSTRAINT [список дней недели_fk0]
GO

ALTER TABLE [Расписание рейсов] WITH CHECK ADD CONSTRAINT [Расписание рейсов_fk0] FOREIGN KEY ([ID рейса]) REFERENCES [Рейсы ]([ID рейса])
ON UPDATE CASCADE
GO
ALTER TABLE [Расписание рейсов] CHECK CONSTRAINT [Расписание рейсов_fk0]
GO

ALTER TABLE [Расписание по дням недели] WITH CHECK ADD CONSTRAINT [Расписание по дням недели_fk0] FOREIGN KEY ([ID расписания]) REFERENCES [Расписание рейсов]([ID расписания конкретного рейса])
ON UPDATE CASCADE
GO
ALTER TABLE [Расписание по дням недели] CHECK CONSTRAINT [Расписание по дням недели_fk0]
GO
ALTER TABLE [Расписание по дням недели] WITH CHECK ADD CONSTRAINT [Расписание по дням недели_fk1] FOREIGN KEY ([ID дня недели]) REFERENCES [список дней недели]([ID дня недели])
ON UPDATE CASCADE
GO
ALTER TABLE [Расписание по дням недели] CHECK CONSTRAINT [Расписание по дням недели_fk1]
GO
