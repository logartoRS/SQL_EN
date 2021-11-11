SELECT * FROM Career
SELECT * FROM Specialty
SELECT * FROM State
SELECT * FROM Course
SELECT * FROM Student
SELECT * FROM StudentCareer
SELECT * FROM Professor
SELECT * FROM ProfessorSpecialty
SELECT * FROM CourseProfessor
SELECT * FROM StudentCourseState
SELECT * FROM ScoreStudentCourse

EXEC INS_Career 'Mechanical Engineering'
EXEC INS_Career 'Mechatronics Engineering'
EXEC INS_Career 'Electric Engineering'	
EXEC INS_Career 'Mathematics'
EXEC INS_Career 'Civil Engineering'
EXEC INS_Career 'Economic Engineering'
EXEC INS_Career 'Electronic Engineering'
EXEC INS_Career 'Systems Engineering'

EXEC INS_Specialty 'Math'
EXEC INS_Specialty 'Physics'
EXEC INS_Specialty 'Electrical Engineer'
EXEC INS_Specialty 'Chemistry'
EXEC INS_Specialty 'Electronic Engineer'
EXEC INS_Specialty 'Informatic Engineer'

EXEC INS_State 'Approved'
EXEC INS_State 'In progress'
EXEC INS_State 'Retired'
EXEC INS_State 'Disapproved'

EXEC INS_Course 'Math 1'
EXEC INS_Course 'Math 2'
EXEC INS_Course 'Math 3'
EXEC INS_Course 'Physics 1'
EXEC INS_Course 'Physics 2'
EXEC INS_Course 'Physics 3'
EXEC INS_Course 'Chemistry 1'
EXEC INS_Course 'Chemistry 2'
EXEC INS_Course 'Chemistry 3'
EXEC INS_Course 'Statics'
EXEC INS_Course 'Dynamics'

EXEC INS_Student 'Brayan', 'Retamozo', '20140545A', 2
EXEC INS_Student 'Alejandro', 'Perez', '20158465A', 8
EXEC INS_Student 'Alexa', 'Mendoza', '20161498G', 7
EXEC INS_Student 'Diego', 'Hilf', '20158465A', 6
EXEC INS_Student 'Tatiana', 'Perez', '20188565A', 4
EXEC INS_Student 'Piero', 'Das', '20167665A', 2
EXEC INS_Student 'Fausto', 'Fiunti', '20178765A', 1
EXEC INS_Student 'Melissa', 'Cuba', '20191465A', 3
EXEC INS_Student 'Elizabeth', 'Paucar', '20218458A', 5
EXEC INS_Student 'Sol', 'Storm', '20158154A', 4

EXEC INS_Professor 'Eugine', 'Gotsh', 'S20154789', 1
EXEC INS_Professor 'Fausto', 'Gomez', 'A20215783', 2
EXEC INS_Professor 'Rosa', 'Martinez', 'V20194898', 3
EXEC INS_Professor 'Maria', 'Hernandez', 'G20144786', 4
EXEC INS_Professor 'Ana', 'Merino', 'J19984789', 5
EXEC INS_Professor 'Alberto', 'Salazar', 'K20044787', 6

EXEC INS_CourseProfessor 1, 1, 'A'
EXEC INS_CourseProfessor 2, 3, 'B'
EXEC INS_CourseProfessor 11, 6, 'C'
EXEC INS_CourseProfessor 4, 6, 'A'
EXEC INS_CourseProfessor 5, 2, 'A'
EXEC INS_CourseProfessor 3, 5, 'B'
EXEC INS_CourseProfessor 7, 3, 'C'
EXEC INS_CourseProfessor 9, 4, 'B'
EXEC INS_CourseProfessor 8, 1, 'A'

EXEC INS_StudentCourseState 1, 2, 4
EXEC INS_StudentCourseState 1, 1, 2
EXEC INS_StudentCourseState 9, 3, 1
EXEC INS_StudentCourseState 2, 11, 4
EXEC INS_StudentCourseState 2, 9, 4
EXEC INS_StudentCourseState 3, 7, 4
EXEC INS_StudentCourseState 8, 8, 4
EXEC INS_StudentCourseState 4, 11, 4
EXEC INS_StudentCourseState 4, 3, 4
EXEC INS_StudentCourseState 5, 4, 4
EXEC INS_StudentCourseState 6, 5, 4
EXEC INS_StudentCourseState 7, 6, 4

EXEC INS_ScoreStudentCourse 1, 2, 10.5, 15
EXEC INS_ScoreStudentCourse 2, 6, 15.6, 13.25
EXEC INS_ScoreStudentCourse 3, 7, 11.5, 11.25
EXEC INS_ScoreStudentCourse 4, 8, 9.5, 15.75
EXEC INS_ScoreStudentCourse 5, 9, 16.75, 8.3
EXEC INS_ScoreStudentCourse 6, 10, 20, 19.5

EXEC UPD_StudentCourseState 4, 3, 1