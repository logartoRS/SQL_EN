CREATE PROC SEL_StateStudentCourse (
	@idStudent INT
)
AS

SET NOCOUNT ON

IF EXISTS (SELECT * FROM StudentCourseState Scs
			INNER JOIN Student St
			ON St.idStudent = Scs.idStudent
			INNER JOIN Course C
			ON C.idCourse = Scs.idCourse
			INNER JOIN State S
			ON S.idState = Scs.idState
			WHERE Scs.idStudent = @idStudent)
	SELECT St.nameStudent , St.lastNameStudent, St.studentCode, C.nameCourse, S.nameState FROM StudentCourseState Scs
	INNER JOIN Student St
	ON St.idStudent = Scs.idStudent
	INNER JOIN Course C
	ON C.idCourse = Scs.idCourse
	INNER JOIN State S
	ON S.idState = Scs.idState
	WHERE Scs.idStudent = @idStudent
ELSE
	SELECT 0 AS Result