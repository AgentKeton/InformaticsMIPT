CREATE TABLE [Вылеты] (
	[ID вылета] integer NOT NULL UNIQUE,
	[ID самолета] integer NOT NULL,
	[ID рейса] integer NOT NULL,
	[Дата и время (фактические) вылета] datetime  NULL,
	[Дата и время (фактические) прибытия] datetime  NULL,
	[Кол-во проданных билетов] integer NULL,
	[ID расписания по дням недели] integer NOT NULL,
	[Дата вылета (по расписанию)] date NOT NULL,
	CONSTRAINT [PK_Вылеты] PRIMARY KEY CLUSTERED
	(
		[ID вылета] ASC
	) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Аэропорты] (
	[ID аэропорта] integer NOT NULL UNIQUE,
	[Код аэропорта] varchar(50) NOT NULL UNIQUE,
	[Название аэропорта] varchar(50) NOT NULL UNIQUE,
	[Город ID] integer NOT NULL,
	CONSTRAINT [PK_Аэропорты] PRIMARY KEY CLUSTERED
	(
		[ID аэропорта] ASC
	) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Маршрут] (
	[Номер маршрута] integer NOT NULL UNIQUE,
	[Расстояние, км] decimal(5, 2) NOT NULL,
	[Пункт вылета (код терминала)] integer NOT NULL,
	[Пункт назначения (код терминала)] integer NOT NULL,
	[Тип] integer NOT NULL,
	CONSTRAINT [PK_Маршрут] PRIMARY KEY CLUSTERED
	(
		[Номер маршрута] ASC
	) WITH (IGNORE_DUP_KEY = OFF)

)
GO
