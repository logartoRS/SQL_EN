CREATE PROC SEL_ScoreStudentCourse (
	@idStudent INT
)
AS

SET NOCOUNT ON

IF EXISTS (SELECT * FROM ScoreStudentCourse Sc
			INNER JOIN Student St
			ON St.idStudent = Sc.idStudent
			INNER JOIN Course C
			ON C.idCourse = Sc.idCourse
			WHERE Sc.idStudent = @idStudent)
	SELECT St.nameStudent, St.lastNameStudent, St.studentCode, C.nameCourse, Sc.score1, Sc.score2, Sc.finalScore FROM ScoreStudentCourse Sc
	INNER JOIN Student St
	ON St.idStudent = Sc.idStudent
	INNER JOIN Course C
	ON C.idCourse = Sc.idCourse
	WHERE Sc.idStudent = @idStudent
ELSE
	SELECT 0 AS Result