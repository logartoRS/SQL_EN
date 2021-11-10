CREATE PROC INS_Course (
	@nameCourse VARCHAR(50)
)
AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT nameCourse FROM Course WHERE nameCourse = @nameCourse)
	INSERT INTO Course (nameCourse) VALUES (@nameCourse)
ELSE
	PRINT 'The course already exists'