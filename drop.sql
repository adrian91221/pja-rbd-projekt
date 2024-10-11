ALTER TABLE Klient
    DROP CONSTRAINT Klient_Miasto;

ALTER TABLE Miasto
    DROP CONSTRAINT Miasto_Kraj;

ALTER TABLE Platnosc
    DROP CONSTRAINT Platnosc_Klient;

ALTER TABLE Platnosc
    DROP CONSTRAINT Platnosc_Pobyt;

ALTER TABLE Platnosc
    DROP CONSTRAINT Platnosc_Pracownik;

ALTER TABLE Pobyt
    DROP CONSTRAINT Pobyt_Rezerwacja;

ALTER TABLE PokojTypWyposazenie
    DROP CONSTRAINT PokojWyposazenie_PokojTyp;

ALTER TABLE Pokoj
    DROP CONSTRAINT Pokoj_Hotel;

ALTER TABLE Pokoj
    DROP CONSTRAINT Pokoj_PokojTyp;

ALTER TABLE PokojTypWyposazenie
    DROP CONSTRAINT Pokoj_wyposazenie_Wyposazenie;

ALTER TABLE Pracownik
    DROP CONSTRAINT Pracownik_Hotel;

ALTER TABLE Rezerwacja
    DROP CONSTRAINT Rezerwacja_Klient;

ALTER TABLE Rezerwacja
    DROP CONSTRAINT Rezerwacja_PokojTyp;

ALTER TABLE Rezerwacja
    DROP CONSTRAINT Rezerwacja_Pracownik;

DROP TABLE Hotel;

DROP TABLE Klient;

DROP TABLE Kraj;

DROP TABLE Miasto;

DROP TABLE Platnosc;

DROP TABLE Pobyt;

DROP TABLE Pokoj;

DROP TABLE PokojTyp;

DROP TABLE PokojTypWyposazenie;

DROP TABLE Pracownik;

DROP TABLE Rezerwacja;

DROP TABLE Wyposazenie;
