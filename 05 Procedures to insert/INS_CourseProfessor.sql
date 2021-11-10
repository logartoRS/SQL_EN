CREATE PROC INS_CourseProfessor (
	@idCourse INT,
	@idProfessor INT,
	@section CHAR(1)
)
AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT section FROM CourseProfessor WHERE (idCourse = @idCourse) AND (idProfessor = @idProfessor))
	INSERT INTO CourseProfessor (idCourse, idProfessor, section) VALUES (@idCourse, @idProfessor, @section)
ELSE
	PRINT 'The CourseProfessor already exists'