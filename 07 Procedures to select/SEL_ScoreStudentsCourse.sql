CREATE PROC SEL_ScoreStudentCourse (
	@idStudent INT
)
AS

SET NOCOUNT ON

SELECT * FROM ScoreStudentCourse Sc
INNER JOIN Student St
ON St.idStudent = Sc.idStudent
INNER JOIN Course C
ON C.idCourse = Sc.idCourse
WHERE Sc.idStudent = @idStudent