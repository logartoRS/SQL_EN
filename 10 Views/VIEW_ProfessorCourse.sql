-- SELECT * FROM VIEW_ProfessorCourse

CREATE VIEW VIEW_ProfessorCourse AS

SELECT P.nameProfessor, P.lastNameProfessor, P.professorCode, C.nameCourse, CP.section FROM CourseProfessor CP
INNER JOIN Professor P
ON P.idProfessor = CP.idProfessor
INNER JOIN Course C
ON C.idCourse = CP.idCourse