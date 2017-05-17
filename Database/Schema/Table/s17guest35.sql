USE [s17guest35]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[addresses](
	[addressID] [int] NOT NULL,
	[streetAddress] [varchar](50) NOT NULL,
	[cityID] [int] NOT NULL,
	[stateID] [int] NOT NULL,
	[zipcode] [varchar](5) NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cities]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cities](
	[cityID] [int] NOT NULL,
	[cityName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cities_1] PRIMARY KEY CLUSTERED 
(
	[cityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[difficulty]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[difficulty](
	[difficultyID] [int] NOT NULL,
	[difficultyLevel] [varchar](50) NOT NULL,
	[presentationID] [int] NOT NULL,
 CONSTRAINT [PK_difficulty] PRIMARY KEY CLUSTERED 
(
	[difficultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[event]    Script Date: 5/17/2017 2:08:10 PM ******/
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
/****** Object:  Table [dbo].[person]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[person](
	[personID] [int] NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[emailAddress] [varchar](50) NULL,
	[addressID] [int] NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[personID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[personRole]    Script Date: 5/17/2017 2:08:10 PM ******/
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
/****** Object:  Table [dbo].[presentations]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[presentations](
	[presentationID] [int] NOT NULL,
	[title] [varchar](50) NULL,
	[difficultyID] [int] NOT NULL,
 CONSTRAINT [PK_presentations] PRIMARY KEY CLUSTERED 
(
	[presentationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[presentationsEvent]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presentationsEvent](
	[eventID] [int] NOT NULL,
	[presentationID] [int] NOT NULL,
 CONSTRAINT [PK_presentationsEvent] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC,
	[presentationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rank]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rank](
	[rankID] [int] NOT NULL,
	[rankName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rank] PRIMARY KEY CLUSTERED 
(
	[rankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[region]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[regionID] [int] NOT NULL,
	[regionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[regionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roles]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roles](
	[roleID] [int] NOT NULL,
	[roleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[scheduleID] [int] NOT NULL,
	[presentationID] [int] NOT NULL,
	[eventID] [int] NOT NULL,
 CONSTRAINT [PK_schedule] PRIMARY KEY CLUSTERED 
(
	[scheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[speakersInPresentations]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[speakersInPresentations](
	[personID] [int] NOT NULL,
	[presentationID] [int] NOT NULL,
 CONSTRAINT [PK_speakersInPresentations] PRIMARY KEY CLUSTERED 
(
	[personID] ASC,
	[presentationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sponsors]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sponsors](
	[sponsorID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[state]    Script Date: 5/17/2017 2:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state](
	[stateID] [int] NOT NULL,
	[stateName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
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
ALTER TABLE [dbo].[difficulty]  WITH CHECK ADD  CONSTRAINT [FK_difficulty_presentations] FOREIGN KEY([presentationID])
REFERENCES [dbo].[presentations] ([presentationID])
GO
ALTER TABLE [dbo].[difficulty] CHECK CONSTRAINT [FK_difficulty_presentations]
GO
ALTER TABLE [dbo].[event]  WITH CHECK ADD  CONSTRAINT [FK_event_event] FOREIGN KEY([eventID])
REFERENCES [dbo].[event] ([eventID])
GO
ALTER TABLE [dbo].[event] CHECK CONSTRAINT [FK_event_event]
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
ALTER TABLE [dbo].[presentationsEvent]  WITH CHECK ADD  CONSTRAINT [FK_presentationEvent_event] FOREIGN KEY([eventID])
REFERENCES [dbo].[event] ([eventID])
GO
ALTER TABLE [dbo].[presentationsEvent] CHECK CONSTRAINT [FK_presentationEvent_event]
GO
ALTER TABLE [dbo].[presentationsEvent]  WITH CHECK ADD  CONSTRAINT [FK_presentationsEvent_presentations] FOREIGN KEY([presentationID])
REFERENCES [dbo].[presentations] ([presentationID])
GO
ALTER TABLE [dbo].[presentationsEvent] CHECK CONSTRAINT [FK_presentationsEvent_presentations]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_event] FOREIGN KEY([eventID])
REFERENCES [dbo].[event] ([eventID])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_event]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_presentations] FOREIGN KEY([presentationID])
REFERENCES [dbo].[presentations] ([presentationID])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_presentations]
GO
ALTER TABLE [dbo].[speakersInPresentations]  WITH CHECK ADD  CONSTRAINT [FK_speakersInPresentations_person] FOREIGN KEY([personID])
REFERENCES [dbo].[person] ([personID])
GO
ALTER TABLE [dbo].[speakersInPresentations] CHECK CONSTRAINT [FK_speakersInPresentations_person]
GO
ALTER TABLE [dbo].[speakersInPresentations]  WITH CHECK ADD  CONSTRAINT [FK_speakersInPresentations_presentations] FOREIGN KEY([presentationID])
REFERENCES [dbo].[presentations] ([presentationID])
GO
ALTER TABLE [dbo].[speakersInPresentations] CHECK CONSTRAINT [FK_speakersInPresentations_presentations]
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
