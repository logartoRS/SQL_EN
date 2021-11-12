CREATE PROC DEL_Professor (
	@idProfessor INT
)
AS

SET NOCOUNT ON

IF EXISTS (SELECT * FROM Professor WHERE idProfessor = @idProfessor)
BEGIN
	DELETE FROM Professor WHERE idProfessor = @idProfessor
	DELETE FROM CourseProfessor WHERE idProfessor = @idProfessor
	DELETE FROM ProfessorSpecialty WHERE idProfessor = @idProfessor
END
ELSE
	SELECT 0 AS Result