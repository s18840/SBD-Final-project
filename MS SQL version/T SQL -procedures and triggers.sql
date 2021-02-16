/* 1. Utworz procedure sluzaca do przenoszenia czytelnika, z miasta 'A' do miasta 'B',
gdzie obie te wartosci beda podane w parametrze procedury. Wyswietl informacje o liczbie przeniesionych osob. */

CREATE PROCEDURE przeniesCzytelnika @Miasto_Z Varchar, @Miasto_Do Varchar
AS
DECLARE @Info Varchar;
BEGIN
	SET NOCOUNT ON;
	UPDATE Czytelnik SET Miasto_IdMiasto = (SELECT IdMiasto
											FROM Miasto
											WHERE Miasto = @Miasto_Do)
	WHERE idMiasto = (SELECT IdMiasto
					  FROM Miasto
					  WHERE Miasto = @Miasto_Z);
	SET @Info = 'Przeniesiono ' + Cast(@@ROWCOUNT AS Varchar) + ' osob z ' + @Miasto_Z + ' do ' + @Miasto_Do;
	PRINT @Info;
END;

/* 2. Utworz procedure sluzaca do dopisywania nowego gatunku literackiego do bazy. Procedura otrzyma w parametrze
nazwe gatunku. W procedurze nalezy sprawdzic, czy przedmiot o danej nazwie istnieje. Jezeli nie, nalezy go dopisac.
Na koniec nalezy wypisac informacje o wykonaniu/niewykonaniu operacji. */

CREATE PROCEDURE dodajGatunek @NazwaGatunku Varchar
AS
DECLARE @Info Varchar
BEGIN
	SET NOCOUNT ON;
	IF EXISTS (SELECT 1
		   FROM Gatunek
		   WHERE Nazwa = @NazwaGatunku)
	SET @Info = 'Gatunek o nazwie: ' + @NazwaGatunku + ' juz istnieje';
	ELSE
	BEGIN
		INSERT INTO Gatunek (Nazwa)
		VALUES (@NazwaGatunku)
		SET @Info = 'Dodano gatunek o nazwie: ' + @NazwaGatunku;
	END;
	PRINT @Info;
END;

/* 3. Utworz trigger, ktory uniemożliwi usunięcie pracownika, ktorego pensja przekracza 4000. */

CREATE TRIGGER NoDelPracownik
FOR DELETE
AS
BEGIN
	DECLARE @Info Varchar;
	IF EXISTS (SELECT 1
			   FROM Deleted
			   WHERE Pensja > 4000)
		SET @Info = 'Nie mozna usunac!';
		BEGIN
	PRINT @Info;
	ROLLBACK;
	END;
END;

-- sprawdzenie:
/*
DELETE FROM Pracownik WHERE Osoba_IdOsoba = 20;
*/

/* 4. Utworz trigger, ktory uniemozliwi dopisanie jezyka, jezeli takowy juz istnieje. */

CREATE TRIGGER czyJest ON Jezyk
FOR INSERT
AS
BEGIN
	DECLARE
		@Info Varchar,
		@Nazwa Varchar;
	SELECT @Nazwa = Nazwa FROM INSERTED;
	IF EXISTS (SELECT 1
			   FROM inserted
			   WHERE Nazwa = @Nazwa)
	BEGIN
	SET @Info = 'Nie mozna dopisac jezyka! Taki jezyk juz istnieje w bazie';
	PRINT Info;
	ROLLBACK;
	END;
END;

-- sprawdzenie:
/*
INSERT INTO Jezyk (IdJezyk, Nazwa) VALUES (3, 'angielski');
*/
