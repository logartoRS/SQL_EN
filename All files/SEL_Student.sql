CREATE PROC SEL_Student (
	@idStudent INT
)
AS

SET NOCOUNT ON

IF EXISTS (SELECT * FROM StudentCareer SC
			INNER JOIN Student S
			ON S.idStudent = SC.idStudent
			INNER JOIN Career C
			ON C.idCareer = SC.idCareer
			WHERE SC.idStudent = @idStudent)
	SELECT S.nameStudent , S.lastNameStudent, S.studentCode, C.career FROM StudentCareer SC
	INNER JOIN Student S
	ON S.idStudent = SC.idStudent
	INNER JOIN Career C
	ON C.idCareer = SC.idCareer
	WHERE SC.idStudent = @idStudent
ELSE
	SELECT 0 AS REsult