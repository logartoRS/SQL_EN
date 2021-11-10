CREATE PROC INS_ScoreStudentCourse (
	@idStudent INT,
	@idCourse INT,
	@score1 DECIMAL(5,2),
	@score2 DECIMAL(5,2)
)

AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT finalScore FROM ScoreStudentCourse WHERE (idStudent = @idStudent) AND (idCourse = @idCourse))
BEGIN
	DECLARE @finalScore DECIMAL(5,2)
	SET @finalScore = (@score1 + @score2) / 2

	INSERT INTO ScoreStudentCourse (idStudent, idCourse, score1, score2, finalScore)
	VALUES (
		@idStudent,
		@idCourse,
		@score1,
		@score2,
		@finalScore
	)
END
ELSE
	PRINT 'The student already exists'