CREATE TABLE Hotel (
    IdHotel integer  NOT NULL,
    Hotel varchar2(20)  NOT NULL,
    Adres varchar2(30)  NOT NULL,
    CONSTRAINT Hotel_pk PRIMARY KEY (IdHotel)
) ;

CREATE TABLE Klient (
    IdKlient integer  NOT NULL,
    Imie varchar2(20)  NOT NULL,
    Nazwisko varchar2(50)  NOT NULL,
    NrTelefonu varchar2(12)  NOT NULL,
    Miasto_IdMiasto integer  NOT NULL,
    Adres varchar2(60)  NOT NULL,
    CONSTRAINT Klient_pk PRIMARY KEY (IdKlient)
) ;

CREATE TABLE Kraj (
    IdKraj integer  NOT NULL,
    Kraj varchar2(30)  NOT NULL,
    CONSTRAINT Kraj_pk PRIMARY KEY (IdKraj)
) ;

CREATE TABLE Miasto (
    IdMiasto integer  NOT NULL,
    Kraj_IdKraj integer  NOT NULL,
    Miasto varchar2(30)  NOT NULL,
    CONSTRAINT Miasto_pk PRIMARY KEY (IdMiasto)
) ;

CREATE TABLE Platnosc (
    IdPlatnosc integer  NOT NULL,
    Kwota number(7,2)  NOT NULL,
    TerminPlatnosci date  NOT NULL,
    DataPlatnosci date  NOT NULL,
    Klient_IdKlient integer  NOT NULL,
    Pracownik_IdPracownik integer  NOT NULL,
    CONSTRAINT Platnosc_pk PRIMARY KEY (IdPlatnosc)
) ;

CREATE TABLE Pobyt (
    Rezerwacja_IdRezerwacja integer  NOT NULL,
    Zameldowanie timestamp  NOT NULL,
    Wymeldowanie timestamp  NOT NULL,
    CONSTRAINT Pobyt_pk PRIMARY KEY (Rezerwacja_IdRezerwacja)
) ;

CREATE TABLE Pokoj (
    IdPokoj integer  NOT NULL,
    PokojTyp_IdPokojTyp integer  NOT NULL,
    NrPokoju integer  NOT NULL,
    Pietro integer  NOT NULL,
    Hotel_IdHotel integer  NOT NULL,
    CONSTRAINT Pokoj_pk PRIMARY KEY (IdPokoj)
) ;

CREATE TABLE PokojTyp (
    IdPokojTyp integer  NOT NULL,
    Typ varchar2(20)  NOT NULL,
    Cena number(6,2)  NOT NULL,
    CONSTRAINT PokojTyp_pk PRIMARY KEY (IdPokojTyp)
) ;

CREATE TABLE PokojTypWyposazenie (
    PokojTyp_IdPokojTyp integer  NOT NULL,
    Wyposazenie_IdWyposazenie integer  NOT NULL,
    Ilosc integer  NOT NULL,
    CONSTRAINT PokojTypWyposazenie_pk PRIMARY KEY (Wyposazenie_IdWyposazenie,PokojTyp_IdPokojTyp)
) ;

CREATE TABLE Pracownik (
    IdPracownik integer  NOT NULL,
    Imie varchar2(20)  NOT NULL,
    Nazwisko varchar2(50)  NOT NULL,
    Hotel_IdHotel integer  NOT NULL,
    CONSTRAINT Pracownik_pk PRIMARY KEY (IdPracownik)
) ;

CREATE TABLE Rezerwacja (
    IdRezerwacja integer  NOT NULL,
    Klient_IdKlient integer  NOT NULL,
    Pracownik_IdPracownik integer  NOT NULL,
    DataOd date  NOT NULL,
    DataDo date  NOT NULL,
    ZyczeniaSpecjalne varchar2(200)  NULL,
    LiczbaDoroslych integer  NOT NULL,
    LiczbaDzieci integer  NULL,
    PokojTyp_IdPokojTyp integer  NOT NULL,
    CONSTRAINT Rezerwacja_pk PRIMARY KEY (IdRezerwacja)
) ;

CREATE TABLE Wyposazenie (
    IdWyposazenie integer  NOT NULL,
    Wyposazenie varchar2(20)  NOT NULL,
    CONSTRAINT Wyposazenie_pk PRIMARY KEY (IdWyposazenie)
) ;

-- Reference: Klient_Miasto (table: Klient)
ALTER TABLE Klient ADD CONSTRAINT Klient_Miasto
    FOREIGN KEY (Miasto_IdMiasto)
    REFERENCES Miasto (IdMiasto);

-- Reference: Miasto_Kraj (table: Miasto)
ALTER TABLE Miasto ADD CONSTRAINT Miasto_Kraj
    FOREIGN KEY (Kraj_IdKraj)
    REFERENCES Kraj (IdKraj);

-- Reference: Platnosc_Klient (table: Platnosc)
ALTER TABLE Platnosc ADD CONSTRAINT Platnosc_Klient
    FOREIGN KEY (Klient_IdKlient)
    REFERENCES Klient (IdKlient);

-- Reference: Platnosc_Pobyt (table: Platnosc)
ALTER TABLE Platnosc ADD CONSTRAINT Platnosc_Pobyt
    FOREIGN KEY (IdPlatnosc)
    REFERENCES Pobyt (Rezerwacja_IdRezerwacja);

-- Reference: Platnosc_Pracownik (table: Platnosc)
ALTER TABLE Platnosc ADD CONSTRAINT Platnosc_Pracownik
    FOREIGN KEY (Pracownik_IdPracownik)
    REFERENCES Pracownik (IdPracownik);

-- Reference: Pobyt_Rezerwacja (table: Pobyt)
ALTER TABLE Pobyt ADD CONSTRAINT Pobyt_Rezerwacja
    FOREIGN KEY (Rezerwacja_IdRezerwacja)
    REFERENCES Rezerwacja (IdRezerwacja);

-- Reference: PokojWyposazenie_PokojTyp (table: PokojTypWyposazenie)
ALTER TABLE PokojTypWyposazenie ADD CONSTRAINT PokojWyposazenie_PokojTyp
    FOREIGN KEY (PokojTyp_IdPokojTyp)
    REFERENCES PokojTyp (IdPokojTyp);

-- Reference: Pokoj_Hotel (table: Pokoj)
ALTER TABLE Pokoj ADD CONSTRAINT Pokoj_Hotel
    FOREIGN KEY (Hotel_IdHotel)
    REFERENCES Hotel (IdHotel);

-- Reference: Pokoj_PokojTyp (table: Pokoj)
ALTER TABLE Pokoj ADD CONSTRAINT Pokoj_PokojTyp
    FOREIGN KEY (PokojTyp_IdPokojTyp)
    REFERENCES PokojTyp (IdPokojTyp);

-- Reference: Pokoj_wyposazenie_Wyposazenie (table: PokojTypWyposazenie)
ALTER TABLE PokojTypWyposazenie ADD CONSTRAINT Pokoj_wyposazenie_Wyposazenie
    FOREIGN KEY (Wyposazenie_IdWyposazenie)
    REFERENCES Wyposazenie (IdWyposazenie);

-- Reference: Pracownik_Hotel (table: Pracownik)
ALTER TABLE Pracownik ADD CONSTRAINT Pracownik_Hotel
    FOREIGN KEY (Hotel_IdHotel)
    REFERENCES Hotel (IdHotel);

-- Reference: Rezerwacja_Klient (table: Rezerwacja)
ALTER TABLE Rezerwacja ADD CONSTRAINT Rezerwacja_Klient
    FOREIGN KEY (Klient_IdKlient)
    REFERENCES Klient (IdKlient);

-- Reference: Rezerwacja_PokojTyp (table: Rezerwacja)
ALTER TABLE Rezerwacja ADD CONSTRAINT Rezerwacja_PokojTyp
    FOREIGN KEY (PokojTyp_IdPokojTyp)
    REFERENCES PokojTyp (IdPokojTyp);

-- Reference: Rezerwacja_Pracownik (table: Rezerwacja)
ALTER TABLE Rezerwacja ADD CONSTRAINT Rezerwacja_Pracownik
    FOREIGN KEY (Pracownik_IdPracownik)
    REFERENCES Pracownik (IdPracownik);
