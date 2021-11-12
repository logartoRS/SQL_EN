CREATE PROC INS_StudentCourseState (
	@idStudent INT,
	@idCourse INT,
	@idState INT
)
AS 

SET NOCOUNT ON

IF NOT EXISTS (SELECT idState FROM StudentCourseState WHERE (idStudent = @idStudent) AND (idCourse = @idCourse))
	INSERT INTO StudentCourseState (idStudent, idCourse, idState) VALUES (@idStudent, @idCourse, @idState)
ELSE
	PRINT 'The student already exists'