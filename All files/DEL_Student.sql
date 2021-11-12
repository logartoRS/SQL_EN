CREATE PROC DEL_Student (
	@idStudent INT
)
AS

SET NOCOUNT ON

IF EXISTS (SELECT * FROM Student WHERE idStudent = @idStudent)
BEGIN
	DELETE FROM Student WHERE idStudent = @idStudent
	DELETE FROM StudentCareer WHERE idStudent = @idStudent
	DELETE FROM StudentCourseState WHERE idStudent = @idStudent
END
ELSE
	SELECT 0 AS REsult