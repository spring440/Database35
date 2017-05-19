USE [s17guest35]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[presentationsPerTrack]
	
	@trackID int
	
AS
BEGIN 
	BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT presentations.title, person.firstName, person.lastName, events.eventName, tracks.topic
	FROM presentations
	INNER JOIN tracks ON presentations.trackID = tracks.trackID
	INNER JOIN events ON presentations.eventID = events.eventID
	INNER JOIN presenters ON presentations.presenterID = presenters.presenterID
	INNER JOIN person ON person.attendantID = presenters.attendantID
	WHERE  tracks.trackID = @trackID AND events.eventName LIKE '%Budapest%' 
	
	END TRY
	BEGIN CATCH
		PRINT 'There was an error'
	END CATCH
END
GO
