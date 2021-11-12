PRINT dbo.FCN_DateText (CONVERT(DATETIME, GETDATE(), 112))

ALTER FUNCTION FCN_DateText (
	@fecha DATETIME
)
RETURNS VARCHAR(60)

AS
BEGIN
	DECLARE @day VARCHAR(20)
	DECLARE @month VARCHAR(20)
	DECLARE @dateText VARCHAR(50)

	SET @day = (CASE	WHEN DATEPART(DW, @fecha) = 1 THEN 'Sunday ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
						WHEN DATEPART(DW, @fecha) = 2 THEN 'Monday ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
						WHEN DATEPART(DW, @fecha) = 3 THEN 'Tuesday ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
						WHEN DATEPART(DW, @fecha) = 4 THEN 'Wednesday ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
						WHEN DATEPART(DW, @fecha) = 5 THEN 'Thursday ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
						WHEN DATEPART(DW, @fecha) = 6 THEN 'Friday ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
						WHEN DATEPART(DW, @fecha) = 7 THEN 'Saturday ' + CONVERT(CHAR(2), DATEPART(dd, @fecha))
						END)

	SET @month = (CASE	WHEN DATEPART(MM, @fecha) = 1 THEN ' January'
						WHEN DATEPART(MM, @fecha) = 2 THEN ' Febraury'
						WHEN DATEPART(MM, @fecha) = 3 THEN ' March'
						WHEN DATEPART(MM, @fecha) = 4 THEN ' April'
						WHEN DATEPART(MM, @fecha) = 5 THEN ' May'
						WHEN DATEPART(MM, @fecha) = 6 THEN ' June'
						WHEN DATEPART(MM, @fecha) = 7 THEN ' July'
						WHEN DATEPART(MM, @fecha) = 8 THEN ' August'
						WHEN DATEPART(MM, @fecha) = 9 THEN ' September'
						WHEN DATEPART(MM, @fecha) = 10 THEN ' October'
						WHEN DATEPART(MM, @fecha) = 11 THEN ' November'
						WHEN DATEPART(MM, @fecha) = 12 THEN ' December'
						END)

	SET @dateText = @day + ' ,' + @month
	RETURN @dateText

END