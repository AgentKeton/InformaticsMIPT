CREATE TABLE [Рейс] (
	Номер рейса varchar NOT NULL,
	Номер самолета varchar NOT NULL,
	Номер маршрута integer NOT NULL,
	Дата и время вылета timestamp NOT NULL,
	Дата и время прибытия timestamp NOT NULL,
	Кол-во проданных билетов integer NOT NULL,
	Кол-во мест integer NOT NULL,
  CONSTRAINT [PK_Рейс] PRIMARY KEY CLUSTERED
  (
  [Номер рейса] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Аэропорты] (
	Код аэропорта varchar NOT NULL,
	Название аэропорта varchar NOT NULL UNIQUE,
	Город varchar NOT NULL,
	Страна varchar NOT NULL,
  CONSTRAINT [PK_Аэропорты] PRIMARY KEY CLUSTERED
  (
  [Код аэропорта] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Маршрут] (
	Номер маршрута integer NOT NULL,
	Расстояние, км decimal NOT NULL,
	Пункт вылета (код аэропорта) varchar NOT NULL,
	Пункт назначения (код аэропорта) varchar NOT NULL,
	Тип varchar NOT NULL,
  CONSTRAINT [PK_Маршрут] PRIMARY KEY CLUSTERED
  (
  [Номер маршрута] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Самолет] (
	Регистрационный номер varchar NOT NULL,
	Марка varchar NOT NULL,
	Число мест integer NOT NULL,
	Скорость полета, км/ч decimal NOT NULL,
	Максимальная дальность, км decimal NOT NULL,
	Дата выпуска date NOT NULL,
  CONSTRAINT [PK_Самолет] PRIMARY KEY CLUSTERED
  (
  [Регистрационный номер] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Маршрутная квитанция] (
	ID номер билета integer NOT NULL,
	Фамилия varchar NOT NULL,
	Имя varchar NOT NULL,
	Номер паспорта integer NOT NULL,
	Номер рейса varchar NOT NULL,
	Класс обслуживания varchar NOT NULL,
	Стоимость decimal NOT NULL,
	Терминал varchar NOT NULL,
  CONSTRAINT [PK_Маршрутная квитанция] PRIMARY KEY CLUSTERED
  (
  [ID номер билета] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Посадочный талон] (
	Номер талона integer NOT NULL,
	Номер места varchar NOT NULL,
	Багаж boolean NOT NULL,
	Номер билета integer NOT NULL,
	Выход на посадку varchar NOT NULL,
  CONSTRAINT [PK_Посадочный талон] PRIMARY KEY CLUSTERED
  (
  [Номер талона] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Представительства авиакомпаний] (
	Название varchar NOT NULL,
	Страна varchar NOT NULL,
	Аэропорт varchar NOT NULL
)
GO
ALTER TABLE [Рейс] WITH CHECK ADD CONSTRAINT [Рейс_fk0] FOREIGN KEY ([Номер самолета]) REFERENCES [Самолет]([Регистрационный номер])
ON UPDATE CASCADE
GO
ALTER TABLE [Рейс] CHECK CONSTRAINT [Рейс_fk0]
GO
ALTER TABLE [Рейс] WITH CHECK ADD CONSTRAINT [Рейс_fk1] FOREIGN KEY ([Номер маршрута]) REFERENCES [Маршрут]([Номер маршрута])
ON UPDATE CASCADE
GO
ALTER TABLE [Рейс] CHECK CONSTRAINT [Рейс_fk1]
GO


ALTER TABLE [Маршрут] WITH CHECK ADD CONSTRAINT [Маршрут_fk0] FOREIGN KEY ([Пункт вылета (код аэропорта)]) REFERENCES [Аэропорты]([Код аэропорта])
ON UPDATE CASCADE
GO
ALTER TABLE [Маршрут] CHECK CONSTRAINT [Маршрут_fk0]
GO
ALTER TABLE [Маршрут] WITH CHECK ADD CONSTRAINT [Маршрут_fk1] FOREIGN KEY ([Пункт назначения (код аэропорта)]) REFERENCES [Аэропорты]([Код аэропорта])
ON UPDATE CASCADE
GO
ALTER TABLE [Маршрут] CHECK CONSTRAINT [Маршрут_fk1]
GO


ALTER TABLE [Маршрутная квитанция] WITH CHECK ADD CONSTRAINT [Маршрутная квитанция_fk0] FOREIGN KEY ([Номер рейса]) REFERENCES [Рейс]([Номер рейса])
ON UPDATE CASCADE
GO
ALTER TABLE [Маршрутная квитанция] CHECK CONSTRAINT [Маршрутная квитанция_fk0]
GO

ALTER TABLE [Посадочный талон] WITH CHECK ADD CONSTRAINT [Посадочный талон_fk0] FOREIGN KEY ([Номер билета]) REFERENCES [Маршрутная квитанция]([ID номер билета])
ON UPDATE CASCADE
GO
ALTER TABLE [Посадочный талон] CHECK CONSTRAINT [Посадочный талон_fk0]
GO

ALTER TABLE [Представительства авиакомпаний] WITH CHECK ADD CONSTRAINT [Представительства авиакомпаний_fk0] FOREIGN KEY ([Аэропорт]) REFERENCES [Аэропорты]([Код аэропорта])
ON UPDATE CASCADE
GO
ALTER TABLE [Представительства авиакомпаний] CHECK CONSTRAINT [Представительства авиакомпаний_fk0]
GO
