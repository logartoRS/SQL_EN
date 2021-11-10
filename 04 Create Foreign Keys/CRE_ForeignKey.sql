ALTER TABLE ProfessorSpecialty
ADD FOREIGN KEY (idProfessor) REFERENCES Professor (idProfessor)

ALTER TABLE ProfessorSpecialty
ADD FOREIGN KEY (idSpecialty) REFERENCES Specialty (idSpecialty)

ALTER TABLE StudentCareer
ADD FOREIGN KEY (idStudent) REFERENCES Student (idStudent)

ALTER TABLE StudentCareer
ADD FOREIGN KEY (idCareer) REFERENCES Career (idCareer)

ALTER TABLE CourseProfessor
ADD FOREIGN KEY (idCourse) REFERENCES Course (idCourse)

ALTER TABLE CourseProfessor
ADD FOREIGN KEY (idProfessor) REFERENCES Professor (idProfessor)

ALTER TABLE StudentCourseState
ADD FOREIGN KEY (idStudent) REFERENCES Student (idStudent)

ALTER TABLE StudentCourseState
ADD FOREIGN KEY (idCourse) REFERENCES Course (idCourse)

ALTER TABLE StudentCourseState
ADD FOREIGN KEY (idState) REFERENCES State (idState)

ALTER TABLE ScoreStudentCourse
ADD FOREIGN KEY (idStudent) REFERENCES Student (idStudent)

ALTER TABLE ScoreStudentCourse
ADD FOREIGN KEY (idCourse) REFERENCES Course (idCourse)