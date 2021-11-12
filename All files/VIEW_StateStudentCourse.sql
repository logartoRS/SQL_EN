

CREATE VIEW VIEW_StateStudentCourse AS

SELECT St.nameStudent , St.lastNameStudent, St.studentCode, C.nameCourse, S.nameState FROM StudentCourseState Scs
INNER JOIN Student St
ON St.idStudent = Scs.idStudent
INNER JOIN Course C
ON C.idCourse = Scs.idCourse
INNER JOIN State S
ON S.idState = Scs.idState