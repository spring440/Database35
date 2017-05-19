
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectPresentation] 

	@speaker nvarchar(70)
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
	
	SELECT title FROM presentations WHERE presenterID = (SELECT presenterID FROM Presenters WHERE (personID = (SELECT personID FROM person WHERE firstName = @firstName AND lastName = @lastName)))
	END TRY
	BEGIN CATCH
	
		PRINT 'There was an ERROR'
	END CATCH
END
GO
