CREATE PROC INS_Professor (
	@nameProfessor VARCHAR(50),
	@lastNameProfessor VARCHAR(50),
	@professorCode CHAR(9),
	@idSpecialty INT
)
AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT professorCode FROM Professor WHERE professorCode = @professorCode)
BEGIN
	INSERT INTO Professor (nameProfessor, lastNameProfessor, professorCode)
	VALUES (@nameProfessor, @lastNameProfessor, @professorCode)

	DECLARE @auxIdProfessor INT
	SET @auxIdProfessor = @@IDENTITY

	INSERT INTO ProfessorSpecialty (idProfessor, idSpecialty)
	VALUES (@@IDENTITY, @idSpecialty)
END
ELSE
	PRINT 'The professor already exists'