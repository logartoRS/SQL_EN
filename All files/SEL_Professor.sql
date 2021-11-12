CREATE PROC SEL_Professor (
	@idProfessor INT
)
AS

SET NOCOUNT ON


IF EXISTS (SELECT * FROM ProfessorSpecialty PS
			INNER JOIN Professor P
			ON P.idProfessor = PS.idProfessor
			INNER JOIN Specialty S
			ON S.idSpecialty = PS.idSpecialty
			WHERE PS.idProfessor = @idProfessor)
	SELECT P.nameProfessor, P.lastNameProfessor, P.professorCode, S.specialty FROM ProfessorSpecialty PS
	INNER JOIN Professor P
	ON P.idProfessor = PS.idProfessor
	INNER JOIN Specialty S
	ON S.idSpecialty = PS.idSpecialty
	WHERE PS.idProfessor = @idProfessor
ELSE
	SELECT 0 AS Result