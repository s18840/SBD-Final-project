SET Serveroutput ON;
/* 1. Utworz procedure zwracajaca dane czytelnikow (Imie, Nazwisko, Miasto, Numer telefonu),
ktorych rok dodania bedzie podany w parametrze procedury. */

CREATE OR REPLACE PROCEDURE wyswietlDaneCzytelnikow (v_rok Varchar2)
IS
CURSOR czytelnicy IS
	SELECT O.Imie, O.Nazwisko, C.NrTelefonu, M.Nazwa FROM Osoba O
	JOIN Czytelnik C
		ON O.IdOsoba = C.Osoba_IdOsoba
	LEFT JOIN Miasto M
		ON M.IdMiasto = C.Miasto_IdMiasto
	WHERE EXTRACT(YEAR FROM DataDodania) = v_rok;
	v_czytelnik czytelnicy%ROWTYPE;
	v_imie Osoba.Imie%TYPE;
	v_nazwisko Osoba.Nazwisko%TYPE;
	v_nrTelefonu Czytelnik.NrTelefonu%TYPE;
	v_miasto Miasto.Nazwa%TYPE;
	BEGIN
		dbms_output.put_line('Czytelnicy dodani do bazy w roku ' || v_rok || ' ');
		OPEN czytelnicy;
		LOOP
			FETCH czytelnicy INTO v_czytelnik;
			EXIT WHEN czytelnicy%NOTFOUND;
			dbms_output.put_line(v_czytelnik.Imie || ' ' || v_czytelnik.Nazwisko || ' ' || v_czytelnik.NrTelefonu || ' ' || v_miasto);
		END LOOP;
		CLOSE czytelnicy;
	END;

-- wywo³anie:
/*
CALL wyswietlDaneCzytelnikow ('2019');	
select * from czytelnik;
*/
/* 2. Utworz procedure sluzaca do dopisywania nowego gatunku literackiego do bazy. Procedura otrzyma w parametrze
nazwe gatunku. W procedurze nalezy sprawdzic, czy przedmiot o danej nazwie istnieje. Jezeli nie, nalezy go dopisac.
Na koniec nalezy wypisac informacje o wykonaniu/niewykonaniu operacji. */

CREATE OR REPLACE PROCEDURE dodajGatunek (v_nazwaGatunku Varchar2)
IS
v_IdGatunek NUMBER;
v_exist NUMBER := 0;
BEGIN
    SELECT CAST((MAX(IdGatunek) + 1) AS NUMBER) INTO v_IdGatunek FROM Gatunek;
    SELECT CASE
		WHEN EXISTS(SELECT IdGatunek 
                    FROM Gatunek 
                    WHERE nazwa = v_nazwaGatunku)
		THEN 1
		ELSE 0
        END INTO v_exist FROM dual;

    IF v_exist = 1 THEN
        dbms_output.put_line('Taki gatunek juz istnieje w bazie.');
    ELSE
        INSERT INTO Gatunek(IdGatunek, Nazwa) VALUES (v_IdGatunek, v_nazwaGatunku);
        COMMIT;
        dbms_output.put_Line('Gatunek zostal dodany');
    END IF;
END;

-- wywo³anie:
/*
CALL dodajGatunek ('Kryminal');	
CALL dodajGatunek ('Bajka');	
select * from gatunek;
*/

/* 3. Utworz trigger, ktory nie pozwoli usunac rekordu z tabeli 'Jezyk'. */
CREATE OR REPLACE TRIGGER NoDelJezyk
BEFORE DELETE
ON Jezyk
BEGIN
raise_application_error(-20325,'Nie wolno usuwaæ rekordow z tabeli jezyk');
END;

-- sprawdzenie czy dziala:
/*
DELETE FROM Jezyk;
*/

/* 4. Utworz trigger, ktory przy wstawianiu lub modyfikowaniu danych w tabeli 'Pracownik' sprawdzi, czy nowa pensja jest wieksza ni¿ 2000 i wypisz odpowiedni komunikat.
Jezeli nie jest wieksza, to trigger zmieni wartosc w modyfikowanym lub wstawianym rekordzie. */

CREATE OR REPLACE TRIGGER InsUpPensja
BEFORE INSERT OR UPDATE
ON Pracownik
FOR EACH ROW
BEGIN
		IF :new.pensja < 2000 OR :new.pensja IS NULL THEN
			:new.pensja := 2000;
		END IF;
END;

-- sprawdzenie czy dziala: 
/*
INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(21,'NOWY','PRACOWNIK');

INSERT INTO Pracownik (Osoba_IdOsoba, Pensja, Miasto_IdMiasto) -- id: 20, placa = 1500, Miasto: Pruszkow
VALUES (21,1500,1);
*/

select * from osoba;
select * from pracownik;
select * from miasto;
