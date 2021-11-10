CREATE PROC INS_Career (
	@career VARCHAR(20)
)
AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT career FROM Career WHERE career = @career)
	INSERT INTO Career (career) VALUES (@career)
ELSE
	PRINT 'The career already exists'