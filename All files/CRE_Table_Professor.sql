CREATE TABLE Professor(
	idProfessor INT IDENTITY(1,1) NOT NULL,
	nameProfessor VARCHAR(50) NOT NULL,
	lastNameProfessor VARCHAR(50) NOT NULL,
	professorCode CHAR(9) NOT NULL,
	PRIMARY KEY (idProfessor)
)