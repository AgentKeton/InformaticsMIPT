CREATE TABLE [Рейс] (
	Дата и время вылета timestamp NOT NULL,
	Дата и время прибытия timestamp NOT NULL,
	Кол-во проданных билетов integer NOT NULL,
	Кол-во мест integer NOT NULL,
	Номер самолета varchar NOT NULL,
	Номер рейса varchar NOT NULL,
	Номер маршрута integer NOT NULL
)
GO
CREATE TABLE [Аэропорты] (
	Название аэропорта varchar NOT NULL,
	Код аэропорта varchar NOT NULL,
	Город varchar NOT NULL,
	Страна varchar NOT NULL,
  CONSTRAINT [PK_Аэропорты] PRIMARY KEY CLUSTERED
  (
  [Код аэропорта] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Маршрут] (
	Расстояние, км decimal NOT NULL,
	Пункт вылета varchar NOT NULL,
	Пункт назначения varchar NOT NULL,
	Тип varchar NOT NULL,
	Номер маршрута integer NOT NULL,
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



