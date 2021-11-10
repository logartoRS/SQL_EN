CREATE PROC INS_Specialty (
	@specialty VARCHAR(50)
)
AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT specialty FROM Specialty WHERE specialty = @specialty)
	INSERT INTO Specialty (specialty) VALUES (@specialty)
ELSE
	PRINT 'The specialty already exists'