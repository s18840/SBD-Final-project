-- GATUNEK
INSERT INTO Gatunek (IdGatunek, Nazwa)
VALUES(1,'Przygodowa');

INSERT INTO Gatunek (IdGatunek, Nazwa)
VALUES (2,'Podrecznik');

INSERT INTO Gatunek (IdGatunek, Nazwa)
VALUES (3,'Klasyka');

INSERT INTO Gatunek (IdGatunek, Nazwa)
VALUES (4,'Bajka');

-- KSIAZKA
INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(1,'Przypadki Robinsona Crusoe',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(2,'Harry Potter: The Philosophers Stone',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(3,'Harry Potter: The Chamber of Secrets',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(4,'Harry Potter: The Prisoner of Azkaban',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(5,'Harry Potter: The Goblet of Fire',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(6,'Harry Potter: The Order of the Phoenix',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(7,'Harry Potter: The Half-Blood Prince',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(8,'Harry Potter: The Deathly Hallows',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(9,'Egipcjanin Sinuhe',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(10,'Opowiesci z Narni: Lew, czarownica i stara szafa',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(11,'Opowiesci z Narni: Ksiaze Kaspian',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(12,'Opowiesci z Narni: Podroz Wedrowca do Switu',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(13,'Opowiesci z Narni: Srebrne krzeslo',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(14,'Opowiesci z Narni: Kon i jego chlopiec',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(15,'Opowiesci z Narni: Siostrzeniec czarodzieja',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(16,'Opowiesci z Narni: ostatnia bitwa',1);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(17,'Kubus Puchatek',4);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(18,'Pinokio',4);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(19,'Krol Macius Pierwszy',4);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(20,'Dziady czesc II',3);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(21,'Dziady czesc IV',3);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(22,'Dziady czesc III',3);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(23,'Dziady czesc I',3);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(24,'Krzyzacy',3);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(25,'Thinking in Java',2);

INSERT INTO Ksiazka (IdKsiazka, Tytul, Gatunek_IdGatunek)
VALUES(26,'Romeo and Juliet',3);

-- OSOBA
INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(1,'Daniel','Defoe');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(2,'J.K.','Rowling');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(3,'Mika','Waltari');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(4,'C.S.','Lewis');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(5,'Adam','Mickiewicz');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(6,'Henryk','Sienkiewicz');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(7,'Juliusz','Slowacki');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(8,'William','Shakespeare');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(9,'A.A.','Milne');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(10,'Carlo','Collodi');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(11,'Janusz','Korczak');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(12,'Bruce','Eckel');

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(13,'Patryk','Kaminski')

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(14,'Adam','Kabalski')

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(15,'Daniel','Kakitus')

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(16,'Krzysztof','Nowacki')

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(17,'Alfred','Pietrzykowski')

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(18,'Apoloniusz','Farel')

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(19,'Stefan','Loczek')

INSERT INTO Osoba (IdOsoba, Imie, Nazwisko)
VALUES(20,'Eugeniusz','Kuchta')

-- MIASTO
INSERT INTO Miasto (IdMiasto, Nazwa)
VALUES (1, 'Pruszkow');

INSERT INTO Miasto (IdMiasto, Nazwa)
VALUES (2, 'Warszawa');

INSERT INTO Miasto (IdMiasto, Nazwa)
VALUES (3, 'Krakow');

INSERT INTO Miasto (IdMiasto, Nazwa)
VALUES (4, 'Poznan');

-- CZYTELNIK
INSERT INTO Czytelnik (Osoba_IdOsoba, NrTelefonu, DataDodania, Miasto_IdMiasto)
VALUES (13,'123456789',TO_DATE('2019-01-01','YYYY-MM-DD'),1);

INSERT INTO Czytelnik (Osoba_IdOsoba, NrTelefonu, DataDodania, Miasto_IdMiasto)
VALUES(14,'749897562',TO_DATE('2019-02-02','YYYY-MM-DD'),2);

INSERT INTO Czytelnik (Osoba_IdOsoba, NrTelefonu, DataDodania, Miasto_IdMiasto)
VALUES(15,'908754286',TO_DATE('2019-03-03','YYYY-MM-DD'),2);

INSERT INTO Czytelnik (Osoba_IdOsoba, NrTelefonu, DataDodania, Miasto_IdMiasto)
VALUES(16,'905376604',TO_DATE('2019-04-04','YYYY-MM-DD'),3);

INSERT INTO Czytelnik (Osoba_IdOsoba, NrTelefonu, DataDodania, Miasto_IdMiasto)
VALUES(17,'563078612',TO_DATE('2019-05-05','YYYY-MM-DD'),4);

-- PRACOWNIK
INSERT INTO Pracownik (Osoba_IdOsoba, Pensja, Miasto_IdMiasto)
VALUES(18,2500,2)

INSERT INTO Pracownik (Osoba_IdOsoba, Pensja, Miasto_IdMiasto)
VALUES(19,2000,2)

INSERT INTO Pracownik (Osoba_IdOsoba, Pensja, Miasto_IdMiasto)
VALUES(20,5000,3)

-- AUTOR
INSERT INTO Autor (Osoba_IdOsoba)
VALUES (1);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (2);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (3);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (4);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (5);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (6);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (7);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (8);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (9);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (10);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (11);

INSERT INTO Autor (Osoba_IdOsoba)
VALUES (12);

-- AUTORSTWO
INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (1,1);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (2,2);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (3,2);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (4,2);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (5,2);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (6,2);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (7,2);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (8,2);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (9,3);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (10,4);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (11,4);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (12,1);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (13,4);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (14,4);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (15,4);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (16,4);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (17,9);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (18,10);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (19,11);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (20,7);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (21,7);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (22,7);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (23,9);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (24,6);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (25,12);

INSERT INTO Autorstwo (Ksiazka_IdKsiazka, Autor_Osoba_IdOsoba)
VALUES (26,8);

-- JEZYK
INSERT INTO Jezyk (IdJezyk, Nazwa)
VALUES(1,'polski');

INSERT INTO Jezyk (IdJezyk, Nazwa)
VALUES(2,'angielski');

-- WYDAWNICTWO
INSERT INTO Wydawnictwo (IdWyd, Nazwa, Miasto_IdMiasto)
VALUES(1,'Papierowy Ksiezyc',3);

INSERT INTO Wydawnictwo (IdWyd, Nazwa, Miasto_IdMiasto)
VALUES(2,'MAG','Warszawa',3);

INSERT INTO Wydawnictwo (IdWyd, Nazwa, Miasto_IdMiasto)
VALUES(3,'Egmont Polska',2);

INSERT INTO Wydawnictwo (IdWyd, Nazwa, Miasto_IdMiasto)
VALUES(4,'Jaguar','Warszawa',4);

INSERT INTO Wydawnictwo (IdWyd, Nazwa, Miasto_IdMiasto)
VALUES(5,'Helion','Gliwice',4);

-- EGZEMPLARZ
INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(1,TO_DATE('2000-01-01','YYYY-MM-DD'),1,1,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(2,TO_DATE('2001-04-01','YYYY-MM-DD'),2,1,2);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(3,TO_DATE('2002-12-01','YYYY-MM-DD'),3,1,2);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(4,TO_DATE('2004-06-07','YYYY-MM-DD'),4,1,2);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(5,TO_DATE('2004-01-01','YYYY-MM-DD'),5,1,2);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(6,TO_DATE('2004-11-01','YYYY-MM-DD'),6,1,2);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(7,TO_DATE('2004-07-01','YYYY-MM-DD'),7,1,2);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(8,TO_DATE('2004-01-08','YYYY-MM-DD'),8,1,2);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(9,TO_DATE('2003-01-01','YYYY-MM-DD'),9,2,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(10,TO_DATE('2012-01-01','YYYY-MM-DD'),10,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(11,TO_DATE('2015-01-01','YYYY-MM-DD'),11,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(12,TO_DATE('2014-01-01','YYYY-MM-DD'),12,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(13,TO_DATE('2018-01-01','YYYY-MM-DD'),13,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(14,TO_DATE('2001-01-01','YYYY-MM-DD'),14,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(15,TO_DATE('2004-01-01','YYYY-MM-DD'),15,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(16,TO_DATE('2004-01-01','YYYY-MM-DD'),16,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(17,TO_DATE('2004-01-01','YYYY-MM-DD'),17,2,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(18,TO_DATE('2004-01-01','YYYY-MM-DD'),18,2,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(19,TO_DATE('2004-01-01','YYYY-MM-DD'),19,2,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(20,TO_DATE('2004-04-01','YYYY-MM-DD'),20,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(21,TO_DATE('2004-10-01','YYYY-MM-DD'),21,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(22,TO_DATE('2000-01-06','YYYY-MM-DD'),22,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(23,TO_DATE('2004-01-01','YYYY-MM-DD'),23,3,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(24,TO_DATE('2009-02-01','YYYY-MM-DD'),24,4,1);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(25,TO_DATE('2012-08-04','YYYY-MM-DD'),25,5,2);

INSERT INTO Egzemplarz (IdEgzemplarz, RokWydania, Ksiazka_IdKsiazka, Wydawnictwo_IdWyd, Jezyk_IdJezyk)
VALUES(26,TO_DATE('2004-02-03','YYYY-MM-DD'),26,5,2);

-- WYPOZYCZENIE
INSERT INTO Wypozyczenie (IdWypozyczenie, DataWypozyczenia, DataZwrotu, Egzemplarz_IdEgzemplarz, Czytelnik_Osoba_IdOsoba)
VALUES(1,TO_DATE('2019-01-01','YYYY-MM-DD'),TO_DATE('2019-02-02','YYYY-MM-DD'),1,13)

INSERT INTO Wypozyczenie (IdWypozyczenie, DataWypozyczenia, DataZwrotu, Egzemplarz_IdEgzemplarz, Czytelnik_Osoba_IdOsoba)
VALUES(2,TO_DATE('2019-03-03','YYYY-MM-DD'),TO_DATE('2019-04-04','YYYY-MM-DD'),2,14)

INSERT INTO Wypozyczenie (IdWypozyczenie, DataWypozyczenia, DataZwrotu, Egzemplarz_IdEgzemplarz, Czytelnik_Osoba_IdOsoba)
VALUES(3,TO_DATE('2019-05-05','YYYY-MM-DD'),TO_DATE('2019-06-06','YYYY-MM-DD'),3,15)

INSERT INTO Wypozyczenie (IdWypozyczenie, DataWypozyczenia, DataZwrotu, Egzemplarz_IdEgzemplarz, Czytelnik_Osoba_IdOsoba)
VALUES(4,TO_DATE('2019-07-07','YYYY-MM-DD'),TO_DATE('2019-08-08','YYYY-MM-DD'),4,16)

INSERT INTO Wypozyczenie (IdWypozyczenie, DataWypozyczenia, DataZwrotu, Egzemplarz_IdEgzemplarz, Czytelnik_Osoba_IdOsoba)
VALUES(5,TO_DATE('2019-09-09','YYYY-MM-DD'),TO_DATE('2019-10-10','YYYY-MM-DD'),5,17)

