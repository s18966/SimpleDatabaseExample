CREATE PROCEDURE LEVELUP @BohaterId integer
AS
BEGIN
DECLARE @IdLvL integer;
SET @IDLvl = 4;
IF not EXISTS (SELECT B.idBohatera FROM Bohater_Gracza B INNER JOIN Rzeczy_u_Gracza G On B.idBohatera = G.Bohater_Gracza_idBohatera WHERE B.idBohatera = @BohaterId AND G.Rzeczy_idRzeczy = @IdLvL)
PRINT ('CANNOT LVL UP');
ELSE
UPDATE Bohater_Gracza SET Poziom_Bohater = Poziom_Bohater + 1 WHERE idBohatera = @BohaterId;
DELETE FROM Rzeczy_u_Gracza WHERE Rzeczy_idRzeczy = @IdLvL AND Bohater_Gracza_idBohatera = @BohaterId;
end;
