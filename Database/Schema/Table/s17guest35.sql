USE [master]
GO
/****** Object:  Database [s17guest35]    Script Date: 5/18/2017 6:36:42 PM ******/
CREATE DATABASE [s17guest35]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N's17guest35', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\DATA\s17guest35.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N's17guest35_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSDB440\MSSQL\DATA\s17guest35_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [s17guest35] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [s17guest35].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [s17guest35] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [s17guest35] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [s17guest35] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [s17guest35] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [s17guest35] SET ARITHABORT OFF 
GO
ALTER DATABASE [s17guest35] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [s17guest35] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [s17guest35] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [s17guest35] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [s17guest35] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [s17guest35] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [s17guest35] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [s17guest35] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [s17guest35] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [s17guest35] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [s17guest35] SET  ENABLE_BROKER 
GO
ALTER DATABASE [s17guest35] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [s17guest35] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [s17guest35] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [s17guest35] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [s17guest35] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [s17guest35] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [s17guest35] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [s17guest35] SET RECOVERY FULL 
GO
ALTER DATABASE [s17guest35] SET  MULTI_USER 
GO
ALTER DATABASE [s17guest35] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [s17guest35] SET DB_CHAINING OFF 
GO
ALTER DATABASE [s17guest35] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [s17guest35] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N's17guest35', N'ON'
GO
USE [s17guest35]
GO
/****** Object:  User [s17guest35]    Script Date: 5/18/2017 6:36:43 PM ******/
CREATE USER [s17guest35] FOR LOGIN [s17guest35] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s17guest35]
GO
/****** Object:  StoredProcedure [dbo].[InsertPerson]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertPerson]
	@name nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE 
	@firstName nvarchar(100),
	@lastName  nvarchar(100)
	
	SET @firstName =  SUBSTRING(@name, 1, CHARINDEX(' ', @name) - 1)
	SET @lastName =  REVERSE(SUBSTRING(REVERSE(@name), 1, CHARINDEX(' ', REVERSE(@name)) - 1))

	IF NOT EXISTS(SELECT * FROM person WHERE firstName= @firstName AND lastName = @lastName) 
	BEGIN
		INSERT INTO person(firstName, lastName)
		VALUES (@firstName, @lastName)
		
		INSERT INTO presenters(personID) SELECT personID FROM person WHERE firstName = @firstName AND lastName = @lastName
	END
END

GO
/****** Object:  Table [dbo].[addresses]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addresses](
	[addressID] [int] IDENTITY(1,1) NOT NULL,
	[streetAddress] [varchar](50) NOT NULL,
	[cityID] [int] NOT NULL,
	[zipcode] [varchar](50) NOT NULL,
	[stateID] [int] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cities]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cities](
	[cityID] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cities_1] PRIMARY KEY CLUSTERED 
(
	[cityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[difficulty]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[difficulty](
	[difficultyID] [int] IDENTITY(1,1) NOT NULL,
	[difficultyLevel] [varchar](50) NOT NULL,
 CONSTRAINT [PK_difficulty] PRIMARY KEY CLUSTERED 
(
	[difficultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[event]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[event](
	[eventID] [int] NOT NULL,
	[eventDate] [varchar](50) NOT NULL,
	[eventName] [varchar](50) NOT NULL,
	[regionID] [int] NOT NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[person]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[person](
	[personID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[emailAddress] [varchar](50) NULL,
	[addressID] [int] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[personID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[personRole]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personRole](
	[personID] [int] NOT NULL,
	[roleID] [int] NOT NULL,
 CONSTRAINT [PK_personRole] PRIMARY KEY NONCLUSTERED 
(
	[personID] ASC,
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_personRole_1] UNIQUE CLUSTERED 
(
	[personID] ASC,
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[presentations]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[presentations](
	[presentationID] [int] NOT NULL,
	[title] [varchar](200) NOT NULL,
	[presenterID] [int] NOT NULL,
	[difficultyID] [int] NOT NULL,
	[eventID] [int] NOT NULL,
	[trackID] [int] NOT NULL,
 CONSTRAINT [PK_presentations] PRIMARY KEY CLUSTERED 
(
	[presentationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[presenters]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presenters](
	[presenterID] [int] IDENTITY(1,1) NOT NULL,
	[personID] [int] NOT NULL,
 CONSTRAINT [PK_presenters] PRIMARY KEY CLUSTERED 
(
	[presenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rank]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rank](
	[rankID] [int] IDENTITY(1,1) NOT NULL,
	[rankName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rank] PRIMARY KEY CLUSTERED 
(
	[rankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[region]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[regionID] [int] IDENTITY(1,1) NOT NULL,
	[regionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[regionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roles]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roles](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rooms](
	[roomID] [int] IDENTITY(1,1) NOT NULL,
	[roomName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[roomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[schedules]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedules](
	[scheduleID] [int] NOT NULL,
	[presentationID] [int] NOT NULL,
	[eventID] [int] NOT NULL,
	[roomID] [int] NOT NULL,
 CONSTRAINT [PK_schedules] PRIMARY KEY CLUSTERED 
(
	[scheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sponsorRanks]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sponsorRanks](
	[sponsorID] [int] NOT NULL,
	[rankID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sponsors]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sponsors](
	[sponsorID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[rankID] [int] NOT NULL,
 CONSTRAINT [PK_sponsors] PRIMARY KEY CLUSTERED 
(
	[sponsorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[state]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state](
	[stateID] [int] IDENTITY(1,1) NOT NULL,
	[stateName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tracks]    Script Date: 5/18/2017 6:36:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tracks](
	[trackID] [int] IDENTITY(1,1) NOT NULL,
	[topic] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tracks] PRIMARY KEY CLUSTERED 
(
	[trackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[addresses]  WITH CHECK ADD  CONSTRAINT [FK_addresses_cities] FOREIGN KEY([cityID])
REFERENCES [dbo].[cities] ([cityID])
GO
ALTER TABLE [dbo].[addresses] CHECK CONSTRAINT [FK_addresses_cities]
GO
ALTER TABLE [dbo].[addresses]  WITH CHECK ADD  CONSTRAINT [FK_addresses_state] FOREIGN KEY([stateID])
REFERENCES [dbo].[state] ([stateID])
GO
ALTER TABLE [dbo].[addresses] CHECK CONSTRAINT [FK_addresses_state]
GO
ALTER TABLE [dbo].[event]  WITH CHECK ADD  CONSTRAINT [FK_event_region] FOREIGN KEY([regionID])
REFERENCES [dbo].[region] ([regionID])
GO
ALTER TABLE [dbo].[event] CHECK CONSTRAINT [FK_event_region]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Addresses] FOREIGN KEY([addressID])
REFERENCES [dbo].[addresses] ([addressID])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_Person_Addresses]
GO
ALTER TABLE [dbo].[personRole]  WITH CHECK ADD  CONSTRAINT [FK_personRole_person] FOREIGN KEY([personID])
REFERENCES [dbo].[person] ([personID])
GO
ALTER TABLE [dbo].[personRole] CHECK CONSTRAINT [FK_personRole_person]
GO
ALTER TABLE [dbo].[personRole]  WITH CHECK ADD  CONSTRAINT [FK_personRole_roles] FOREIGN KEY([roleID])
REFERENCES [dbo].[roles] ([roleID])
GO
ALTER TABLE [dbo].[personRole] CHECK CONSTRAINT [FK_personRole_roles]
GO
ALTER TABLE [dbo].[presentations]  WITH CHECK ADD  CONSTRAINT [FK_presentations_difficulty] FOREIGN KEY([difficultyID])
REFERENCES [dbo].[difficulty] ([difficultyID])
GO
ALTER TABLE [dbo].[presentations] CHECK CONSTRAINT [FK_presentations_difficulty]
GO
ALTER TABLE [dbo].[presentations]  WITH CHECK ADD  CONSTRAINT [FK_presentations_event] FOREIGN KEY([eventID])
REFERENCES [dbo].[event] ([eventID])
GO
ALTER TABLE [dbo].[presentations] CHECK CONSTRAINT [FK_presentations_event]
GO
ALTER TABLE [dbo].[presentations]  WITH CHECK ADD  CONSTRAINT [FK_presentations_presenters] FOREIGN KEY([presenterID])
REFERENCES [dbo].[presenters] ([presenterID])
GO
ALTER TABLE [dbo].[presentations] CHECK CONSTRAINT [FK_presentations_presenters]
GO
ALTER TABLE [dbo].[presentations]  WITH CHECK ADD  CONSTRAINT [FK_presentations_tracks] FOREIGN KEY([trackID])
REFERENCES [dbo].[tracks] ([trackID])
GO
ALTER TABLE [dbo].[presentations] CHECK CONSTRAINT [FK_presentations_tracks]
GO
ALTER TABLE [dbo].[presenters]  WITH CHECK ADD  CONSTRAINT [FK_presenters_person] FOREIGN KEY([presenterID])
REFERENCES [dbo].[person] ([personID])
GO
ALTER TABLE [dbo].[presenters] CHECK CONSTRAINT [FK_presenters_person]
GO
ALTER TABLE [dbo].[schedules]  WITH CHECK ADD  CONSTRAINT [FK_schedules_event] FOREIGN KEY([eventID])
REFERENCES [dbo].[event] ([eventID])
GO
ALTER TABLE [dbo].[schedules] CHECK CONSTRAINT [FK_schedules_event]
GO
ALTER TABLE [dbo].[schedules]  WITH CHECK ADD  CONSTRAINT [FK_schedules_presentations] FOREIGN KEY([presentationID])
REFERENCES [dbo].[presentations] ([presentationID])
GO
ALTER TABLE [dbo].[schedules] CHECK CONSTRAINT [FK_schedules_presentations]
GO
ALTER TABLE [dbo].[schedules]  WITH CHECK ADD  CONSTRAINT [FK_schedules_rooms] FOREIGN KEY([roomID])
REFERENCES [dbo].[rooms] ([roomID])
GO
ALTER TABLE [dbo].[schedules] CHECK CONSTRAINT [FK_schedules_rooms]
GO
ALTER TABLE [dbo].[sponsors]  WITH CHECK ADD  CONSTRAINT [FK_sponsors_rank] FOREIGN KEY([rankID])
REFERENCES [dbo].[rank] ([rankID])
GO
ALTER TABLE [dbo].[sponsors] CHECK CONSTRAINT [FK_sponsors_rank]
GO
USE [master]
GO
ALTER DATABASE [s17guest35] SET  READ_WRITE 
GO
