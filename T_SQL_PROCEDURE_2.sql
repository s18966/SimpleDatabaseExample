
ALTER PROCEDURE BUFF_ALL_ITEMS @Buff integer
AS 
BEGIN
DECLARE @id integer, @Attack integer, @Defence integer
DECLARE cur CURSOR FOR 
SELECT idRzeczy, Attack_rzeczy, Defence_Rzeczy FROM Rzeczy
OPEN cur
FETCH NEXT FROM cur INTO @id, @Attack, @Defence
WHILE @@FETCH_STATUS =0
	BEGIN
		IF @id != 4
		BEGIN
		SET @Attack = @Attack + @Buff;
		SET @Defence = @Defence + @Buff;
		UPDATE Rzeczy SET Attack_Rzeczy = @Attack, Defence_Rzeczy = @Defence WHERE idRzeczy = @id;
		FETCH NEXT FROM cur INTO @id, @Attack, @Defence;
		END
		ELSE 
		BEGIN
		FETCH NEXT FROM cur INTO @id, @Attack, @Defence;
		END
	END
CLOSE cur;
DEALLOCATE cur;
END;