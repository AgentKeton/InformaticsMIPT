USE [Airport]
GO

CREATE TABLE [Вылеты] (
	[ID вылета] int IDENTITY(1,1) NOT NULL UNIQUE,
	[ID самолета] integer NOT NULL,
	[ID рейса] integer NOT NULL,
	[Дата и время (фактические) вылета] datetime  NULL,
	[Дата и время (фактические) прибытия] datetime  NULL,
	[Кол-во проданных билетов] integer NULL,
	[ID расписания по дням недели] integer NOT NULL,
	[Дата вылета (по расписанию)] date NOT NULL,
	CONSTRAINT [PK_Вылеты] PRIMARY KEY CLUSTERED ([ID вылета])

)
GO
CREATE TABLE [Аэропорты] (
	[ID аэропорта] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Код аэропорта] nvarchar(50) NOT NULL UNIQUE,
	[Название аэропорта] nvarchar(50) NOT NULL UNIQUE,
	[Город ID] integer NOT NULL,
	CONSTRAINT [PK_Аэропорты] PRIMARY KEY CLUSTERED ([ID аэропорта])

)
GO
CREATE TABLE [Маршрут] (
	[ID маршрута] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Расстояние, км] decimal(8, 2) NOT NULL,
	[Пункт вылета (код терминала)] integer NOT NULL,
	[Пункт назначения (код терминала)] integer NOT NULL,
	[ID типа] integer NOT NULL,
	CONSTRAINT [PK_Маршрут] PRIMARY KEY CLUSTERED ([ID маршрута])

)
GO
ALTER TABLE [Маршрут]  
ADD CONSTRAINT [UQ_Маршрут] UNIQUE ([Пункт вылета (код терминала)], [Пункт назначения (код терминала)])   
GO 

CREATE TABLE [Самолет] (
	[ID самолета] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Регистрационный номер] nvarchar(50) NOT NULL UNIQUE,
	[Марка ID] integer NOT NULL,
	[Дата выпуска] date NOT NULL,
	CONSTRAINT [PK_Самолет] PRIMARY KEY CLUSTERED ([ID самолета])
)
GO

CREATE TABLE [Сотрудники экипажа] (
	[ID сотрудника] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Фамилия] nvarchar(50) NOT NULL,
	[Имя] nvarchar(50) NOT NULL,
	[Телефон] nvarchar(50) NOT NULL,
	[Адрес] nvarchar(100) NOT NULL,
	CONSTRAINT [PK_Сотрудники экипажа] PRIMARY KEY CLUSTERED ([ID сотрудника])
)
GO

CREATE TABLE [Типы маршрутов] (
	[ID типа] int NOT NULL UNIQUE,
	[Название типа] nvarchar(50) NOT NULL UNIQUE,
	CONSTRAINT [PK_Типы маршрутов] PRIMARY KEY CLUSTERED ([ID типа])
)
GO

CREATE TABLE [Марки самолетов] (
	[ID марки] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Название] nvarchar(50) NOT NULL UNIQUE,
	[Число мест] integer NOT NULL,
	[Скорость полета, км/ч] NOT NULL,
	[Максимальная дальность, км] NOT NULL,
	CONSTRAINT [PK_Марки самолетов] PRIMARY KEY CLUSTERED ([ID марки])
)
GO

CREATE TABLE [Города] (
	[ID города] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Название города] nvarchar(50) NOT NULL,
	[ID страны] integer NOT NULL,
	CONSTRAINT [PK_Города] PRIMARY KEY CLUSTERED ([ID города])
)
GO

CREATE TABLE [Экипаж] (
	[ID сотрудника] integer NOT NULL,
	[ID вылета] integer NOT NULL,
	CONSTRAINT [PK_Экипаж] PRIMARY KEY CLUSTERED ([ID сотрудника], [ID вылета])
)
GO
ALTER TABLE [Экипаж]  
ADD CONSTRAINT [AK_Экипаж] UNIQUE ([ID сотрудника], [ID вылета])   
GO 

CREATE TABLE [Страны] (
	[ID страны] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Название] nvarchar(50) NOT NULL UNIQUE,
	CONSTRAINT [PK_Страны] PRIMARY KEY CLUSTERED ([ID страны])
)
GO

CREATE TABLE [Рейсы] (
	[ID рейса] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Номер рейса] nvarchar(50) NOT NULL UNIQUE,
	[ID маршрута] integer NOT NULL,
	CONSTRAINT [PK_Рейсы] PRIMARY KEY CLUSTERED ([ID рейса])
)
GO

CREATE TABLE [Контракты] (
	[ID сотрудника] integer NOT NULL,
	[Дата заключения] date NOT NULL,
	[Дата разрыва] date NULL,
	[ID должности] integer NOT NULL,
	CONSTRAINT [PK_Контракты] PRIMARY KEY CLUSTERED ([ID сотрудника], [Дата заключения])
)
GO
ALTER TABLE [Контракты]  
ADD CONSTRAINT [АК_Контракты] UNIQUE ([ID сотрудника], [Дата заключения])   
GO 

CREATE TABLE [Должности] (
	[ID должности] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Название] nvarchar(50) NOT NULL UNIQUE,
	CONSTRAINT [PK_Должности] PRIMARY KEY CLUSTERED ([ID должности])
)
GO

CREATE TABLE [Терминалы] (
	[ID терминала] int IDENTITY(1,1) NOT NULL UNIQUE,
	[ID аэропорта] integer NOT NULL,
	[Название терминала] nvarchar(50) NOT NULL,
	CONSTRAINT [PK_Терминалы] PRIMARY KEY CLUSTERED ([ID терминала])
)
GO

CREATE TABLE [список дней недели] (
	[ID дня недели] int NOT NULL UNIQUE,
	[название дня недели] nvarchar(50) NOT NULL UNIQUE,
	CONSTRAINT [PK_список дней недели] PRIMARY KEY CLUSTERED ([ID дня недели])
)
GO

CREATE TABLE [Расписание рейсов] (
	[ID расписания конкретного рейса] int IDENTITY(1,1) NOT NULL UNIQUE,
	[ID рейса] integer NOT NULL,
	[дата начала действия расписания] date NOT NULL,
	[дата окончания действия расписания] date NOT NULL,
	CONSTRAINT [PK_Расписание рейсов] PRIMARY KEY CLUSTERED ([ID расписания конкретного рейса])
)
GO

CREATE TABLE [Расписание по дням недели] (
	[ID расписания по дням недели] int IDENTITY(1,1) NOT NULL UNIQUE,
	[ID расписания] integer NOT NULL,
	[ID дня недели] integer NOT NULL,
	[Время отправления] time NOT NULL,
	[Время прибытия] time NOT NULL,
	CONSTRAINT [PK_Расписание по дням недели] PRIMARY KEY CLUSTERED ([ID расписания по дням недели])
)
GO
ALTER TABLE [Расписание по дням недели]  
ADD CONSTRAINT [UQ_Расписание по дням недели] UNIQUE ([ID расписания], [ID дня недели])   
GO 
