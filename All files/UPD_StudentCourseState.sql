CREATE PROC UPD_StudentCourseState (
	@idStudent INT,
	@idCourse INT,
	@idState INT
)
AS

SET NOCOUNT ON

IF EXISTS (SELECT * FROM StudentCourseState WHERE idStudent = @idStudent AND idCourse = @idCourse)
	UPDATE StudentCourseState SET idState = @idState
	WHERE idStudent = @idStudent AND idCourse = @idCourse
ELSE
	SELECT 0 AS Result