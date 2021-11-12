CREATE PROC INS_State (
	@nameState VARCHAR(20)
)
AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT nameState FROM State WHERE nameState = @nameState)
	INSERT INTO State (nameState) VALUES (@nameState)
ELSE
	PRINT 'The state already exists'