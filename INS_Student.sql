CREATE PROC INS_Student (
	@nameStudent VARCHAR(50),
	@lastNameStudent VARCHAR(50),
	@studentCode CHAR(9),
	@idCareer INT
)
AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT studentCode FROM Student WHERE studentCode = @studentCode)
BEGIN
	INSERT INTO Student (nameStudent, lastNameStudent, studentCode)
	VALUES (@nameStudent, @lastNameStudent, @studentCode)

	DECLARE @auxIdStudent INT
	SET @auxIdStudent = @@IDENTITY

	INSERT INTO StudentCareer (idStudent, idCareer)
	VALUES (@auxIdStudent, @idCareer)
END
ELSE
	PRINT 'The student already exists'