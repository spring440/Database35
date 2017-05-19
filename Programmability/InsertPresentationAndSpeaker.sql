USE [s17guest35]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertPresentation]
	
	/*Parameters for stored procedure: Taking ina name and presentation title*/
	@speaker nvarchar(50),
	@presentation nvarchar(255)

AS
BEGIN
	BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	DECLARE 
	@firstName nvarchar(100),
	@lastName  nvarchar(100)
	
	SET @firstName =  SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
	SET @lastName =  REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1))
	
	
	IF NOT EXISTS(SELECT firstName FROM person WHERE firstName= @firstName) AND NOT EXISTS(SELECT lastName FROM person WHERE firstName= @lastName)
	BEGIN
		
		INSERT INTO person(firstName, lastName)
		VALUES (@firstName, @lastName)
		
		INSERT INTO presenters(personID) SELECT personID FROM person WHERE firstName = @firstName AND lastName = @lastName
		
		INSERT INTO Presentations(title, presenterID) VALUES (@presentation, (SELECT presenterID FROM presenters WHERE (personID = (SELECT personID FROM person WHERE firstName = @firstName AND lastName = @lastName))))
		
	END
	ELSE
	BEGIN
	
		INSERT INTO Presentations(title, presenterID) VALUES (@presentation, (SELECT presenterID FROM presenters WHERE (personID = (SELECT personID FROM person WHERE firstName = @firstName AND lastName = @lastName))))

	END
	END TRY
	BEGIN CATCH
		PRINT 'There was an ERROR'
	END CATCH
END
GO