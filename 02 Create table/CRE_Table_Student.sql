CREATE TABLE dbo.Student(
	idStudent INT IDENTITY(1,1) NOT NULL,
	nameStudent VARCHAR(50) NOT NULL,
	lastNameStudent VARCHAR(50) NOT NULL,
	studentCode CHAR(9) NOT NULL,
	PRIMARY KEY (idStudent)
)