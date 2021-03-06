﻿USE [s17guest35]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[InsertPerson]    Script Date: 5/18/2017 7:49:03 PM ******/
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
/****** Addresses Table ******/
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
/****** Cities Table ******/
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
/****** difficulty table ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[difficulty](
	[difficultyID] [varchar](50) NOT NULL,
	[difficultyLevel] [varchar](50) NOT NULL,
 CONSTRAINT [PK_difficulty] PRIMARY KEY CLUSTERED 
(
	[difficultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** event table ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[event](
	[eventID] [varchar](50) NOT NULL,
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
/****** person table ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[person](
	[personID] [varchar](50) NOT NULL,
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
/****** person and role mapping ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[personRole](
	[personID] [varchar](50) NOT NULL,
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
SET ANSI_PADDING OFF
GO
/****** presentations table ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[presentations](
	[presentationID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NOT NULL,
	[presenter] [varchar](50) NOT NULL,
	[difficulty] [varchar](50) NOT NULL,
	[event] [varchar](50) NULL,
	[trackID] [int] NULL,
 CONSTRAINT [PK_presentations] PRIMARY KEY CLUSTERED 
(
	[presentationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** presenters table ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[presenters](
	[presenterID] [varchar](50) NOT NULL,
	[personID] [int] NOT NULL,
 CONSTRAINT [PK_presenters] PRIMARY KEY CLUSTERED 
(
	[presenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** rank table ******/
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
/****** region table ******/
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
/****** roles table ******/
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
/****** rooms table  ******/
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
/****** schedules table ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[schedules](
	[scheduleID] [int] NOT NULL,
	[presentationID] [int] NOT NULL,
	[eventID] [varchar](50) NOT NULL,
	[roomID] [int] NOT NULL,
 CONSTRAINT [PK_schedules] PRIMARY KEY CLUSTERED 
(
	[scheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** sponsors table ******/
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
/****** state table  ******/
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
/****** tracks table ******/
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
