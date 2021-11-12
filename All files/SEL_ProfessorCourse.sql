CREATE PROC SEL_ProfessorCourse (
	@idProfessor INT	 
)
AS

SET NOCOUNT ON

IF EXISTS (SELECT * FROM CourseProfessor CP
			INNER JOIN Professor P
			ON P.idProfessor = CP.idProfessor
			INNER JOIN Course C
			ON C.idCourse = CP.idCourse
			WHERE CP.idProfessor = @idProfessor)
	SELECT P.nameProfessor, P.lastNameProfessor, P.professorCode, C.nameCourse, CP.section FROM CourseProfessor CP
	INNER JOIN Professor P
	ON P.idProfessor = CP.idProfessor
	INNER JOIN Course C
	ON C.idCourse = CP.idCourse
	WHERE CP.idProfessor = @idProfessor
ELSE
	SELECT 0 AS Result