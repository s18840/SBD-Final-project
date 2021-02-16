-- tables
-- Table: Autor
CREATE TABLE Autor (
    Osoba_IdOsoba int  NOT NULL,
    CONSTRAINT Autor_pk PRIMARY KEY  (Osoba_IdOsoba)
);

-- Table: Autorstwo
CREATE TABLE Autorstwo (
    Ksiazka_IdKsiazka int  NOT NULL,
    Autor_Osoba_IdOsoba int  NOT NULL,
    CONSTRAINT Autorstwo_pk PRIMARY KEY  (Ksiazka_IdKsiazka,Autor_Osoba_IdOsoba)
);

-- Table: Czytelnik
CREATE TABLE Czytelnik (
    Osoba_IdOsoba int  NOT NULL,
    NrTelefonu decimal(9,0)  NOT NULL,
    DataDodania date  NOT NULL,
    Miasto_IdMiasto int  NOT NULL,
    CONSTRAINT Czytelnik_pk PRIMARY KEY  (Osoba_IdOsoba)
);

-- Table: Egzemplarz
CREATE TABLE Egzemplarz (
    IdEgzemplarz int  NOT NULL,
    RokWydania date  NOT NULL,
    Ksiazka_IdKsiazka int  NOT NULL,
    Wydawnictwo_IdWyd int  NOT NULL,
    Jezyk_IdJezyk int  NOT NULL,
    CONSTRAINT Egzemplarz_pk PRIMARY KEY  (IdEgzemplarz)
);

-- Table: Gatunek
CREATE TABLE Gatunek (
    IdGatunek int  NOT NULL,
    Nazwa varchar(50)  NOT NULL,
    CONSTRAINT Gatunek_pk PRIMARY KEY  (IdGatunek)
);

-- Table: Jezyk
CREATE TABLE Jezyk (
    IdJezyk int  NOT NULL,
    Nazwa varchar(20)  NOT NULL,
    CONSTRAINT Jezyk_pk PRIMARY KEY  (IdJezyk)
);

-- Table: Ksiazka
CREATE TABLE Ksiazka (
    IdKsiazka int  NOT NULL,
    Tytul varchar(100)  NOT NULL,
    Gatunek_IdGatunek int  NOT NULL,
    CONSTRAINT Ksiazka_pk PRIMARY KEY  (IdKsiazka)
);

-- Table: Miasto
CREATE TABLE Miasto (
    IdMiasto int  NOT NULL,
    Nazwa varchar(100)  NOT NULL,
    CONSTRAINT Miasto_pk PRIMARY KEY  (IdMiasto)
);

-- Table: Osoba
CREATE TABLE Osoba (
    IdOsoba int  NOT NULL,
    Imie varchar(50)  NOT NULL,
    Nazwisko varchar(100)  NOT NULL,
    CONSTRAINT Osoba_pk PRIMARY KEY  (IdOsoba)
);

-- Table: Pracownik
CREATE TABLE Pracownik (
    Osoba_IdOsoba int  NOT NULL,
    Pensja int  NOT NULL,
    Miasto_IdMiasto int  NOT NULL,
    CONSTRAINT Pracownik_pk PRIMARY KEY  (Osoba_IdOsoba)
);

-- Table: Wydawnictwo
CREATE TABLE Wydawnictwo (
    IdWyd int  NOT NULL,
    Nazwa varchar(100)  NOT NULL,
    Miasto_IdMiasto int  NOT NULL,
    CONSTRAINT Wydawnictwo_pk PRIMARY KEY  (IdWyd)
);

-- Table: Wypozyczenie
CREATE TABLE Wypozyczenie (
    IdWypozyczenie int  NOT NULL,
    DataWypozyczenia date  NOT NULL,
    DataZwrotu date  NOT NULL,
    Egzemplarz_IdEgzemplarz int  NOT NULL,
    Czytelnik_Osoba_IdOsoba int  NOT NULL,
    CONSTRAINT Wypozyczenie_pk PRIMARY KEY  (IdWypozyczenie)
);

-- foreign keys
-- Reference: Autor_Osoba (table: Autor)
ALTER TABLE Autor ADD CONSTRAINT Autor_Osoba
    FOREIGN KEY (Osoba_IdOsoba)
    REFERENCES Osoba (IdOsoba);

-- Reference: Autorstwo_Autor (table: Autorstwo)
ALTER TABLE Autorstwo ADD CONSTRAINT Autorstwo_Autor
    FOREIGN KEY (Autor_Osoba_IdOsoba)
    REFERENCES Autor (Osoba_IdOsoba);

-- Reference: Autorstwo_Ksiazka (table: Autorstwo)
ALTER TABLE Autorstwo ADD CONSTRAINT Autorstwo_Ksiazka
    FOREIGN KEY (Ksiazka_IdKsiazka)
    REFERENCES Ksiazka (IdKsiazka);

-- Reference: Czytelnik_Miasto (table: Czytelnik)
ALTER TABLE Czytelnik ADD CONSTRAINT Czytelnik_Miasto
    FOREIGN KEY (Miasto_IdMiasto)
    REFERENCES Miasto (IdMiasto);

-- Reference: Czytelnik_Osoba (table: Czytelnik)
ALTER TABLE Czytelnik ADD CONSTRAINT Czytelnik_Osoba
    FOREIGN KEY (Osoba_IdOsoba)
    REFERENCES Osoba (IdOsoba);

-- Reference: Egzemplarz_Jezyk (table: Egzemplarz)
ALTER TABLE Egzemplarz ADD CONSTRAINT Egzemplarz_Jezyk
    FOREIGN KEY (Jezyk_IdJezyk)
    REFERENCES Jezyk (IdJezyk);

-- Reference: Egzemplarz_Ksiazka (table: Egzemplarz)
ALTER TABLE Egzemplarz ADD CONSTRAINT Egzemplarz_Ksiazka
    FOREIGN KEY (Ksiazka_IdKsiazka)
    REFERENCES Ksiazka (IdKsiazka);

-- Reference: Egzemplarz_Wydawnictwo (table: Egzemplarz)
ALTER TABLE Egzemplarz ADD CONSTRAINT Egzemplarz_Wydawnictwo
    FOREIGN KEY (Wydawnictwo_IdWyd)
    REFERENCES Wydawnictwo (IdWyd);

-- Reference: Ksiazka_Gatunek (table: Ksiazka)
ALTER TABLE Ksiazka ADD CONSTRAINT Ksiazka_Gatunek
    FOREIGN KEY (Gatunek_IdGatunek)
    REFERENCES Gatunek (IdGatunek);

-- Reference: Pracownik_Miasto (table: Pracownik)
ALTER TABLE Pracownik ADD CONSTRAINT Pracownik_Miasto
    FOREIGN KEY (Miasto_IdMiasto)
    REFERENCES Miasto (IdMiasto);

-- Reference: Pracownik_Osoba (table: Pracownik)
ALTER TABLE Pracownik ADD CONSTRAINT Pracownik_Osoba
    FOREIGN KEY (Osoba_IdOsoba)
    REFERENCES Osoba (IdOsoba);

-- Reference: Wydawnictwo_Miasto (table: Wydawnictwo)
ALTER TABLE Wydawnictwo ADD CONSTRAINT Wydawnictwo_Miasto
    FOREIGN KEY (Miasto_IdMiasto)
    REFERENCES Miasto (IdMiasto);

-- Reference: Wypozyczenie_Czytelnik (table: Wypozyczenie)
ALTER TABLE Wypozyczenie ADD CONSTRAINT Wypozyczenie_Czytelnik
    FOREIGN KEY (Czytelnik_Osoba_IdOsoba)
    REFERENCES Czytelnik (Osoba_IdOsoba);

-- Reference: Wypozyczenie_Egzemplarz (table: Wypozyczenie)
ALTER TABLE Wypozyczenie ADD CONSTRAINT Wypozyczenie_Egzemplarz
    FOREIGN KEY (Egzemplarz_IdEgzemplarz)
    REFERENCES Egzemplarz (IdEgzemplarz);



