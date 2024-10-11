INSERT INTO Kraj (IdKraj, Kraj) VALUES (1, 'POLSKA');
INSERT INTO Kraj (IdKraj, Kraj) VALUES (2, 'NIEMCY');
INSERT INTO Kraj (IdKraj, Kraj) VALUES (3, 'CZECHY');


INSERT INTO Miasto (IdMiasto, Kraj_IdKraj, Miasto) VALUES (1, 1, 'WARSZAWA');
INSERT INTO Miasto (IdMiasto, Kraj_IdKraj, Miasto) VALUES (2, 1, 'WROCŁAW');
INSERT INTO Miasto (IdMiasto, Kraj_IdKraj, Miasto) VALUES (3, 1, 'SZCZECIN');
INSERT INTO Miasto (IdMiasto, Kraj_IdKraj, Miasto) VALUES (4, 1, 'KRAKÓW');
INSERT INTO Miasto (IdMiasto, Kraj_IdKraj, Miasto) VALUES (5, 2, 'BERLIN');
INSERT INTO Miasto (IdMiasto, Kraj_IdKraj, Miasto) VALUES (6, 1, 'RZESZÓW');
INSERT INTO Miasto (IdMiasto, Kraj_IdKraj, Miasto) VALUES (7, 3, 'PRAGA');


INSERT INTO Hotel (IdHotel, Hotel, Adres)
	VALUES (1, 'GRAND HOTEL', 'PUCK, UL. POLNA 1, 84-100');


INSERT INTO Pracownik (IdPracownik, Imie, Nazwisko, Hotel_IdHotel)
	VALUES (1, 'DAWID', 'TOMASZEWSKI', 1);
INSERT INTO Pracownik (IdPracownik, Imie, Nazwisko, Hotel_IdHotel)
	VALUES (2, 'MAKSYM', 'CHMIELEWSKI', 1);
INSERT INTO Pracownik (IdPracownik, Imie, Nazwisko, Hotel_IdHotel)
	VALUES (3, 'DAGMARA', 'JAKUBOWSKA', 1);
INSERT INTO Pracownik (IdPracownik, Imie, Nazwisko, Hotel_IdHotel)
	VALUES (4, 'HONORATA', 'BOROWSKA', 1);


INSERT INTO Wyposazenie (IdWyposazenie, Wyposazenie) VALUES (1, 'TELEWIZOR');
INSERT INTO Wyposazenie (IdWyposazenie, Wyposazenie) VALUES (2, 'SUSZARKA DO WŁOSÓW');
INSERT INTO Wyposazenie (IdWyposazenie, Wyposazenie) VALUES (3, 'CZAJNIK');
INSERT INTO Wyposazenie (IdWyposazenie, Wyposazenie) VALUES (4, 'RĘCZNIKI');
INSERT INTO Wyposazenie (IdWyposazenie, Wyposazenie) VALUES (5, 'ŁÓŻKO POJEDYNCZE');
INSERT INTO Wyposazenie (IdWyposazenie, Wyposazenie) VALUES (6, 'ŁÓŻKO PODWÓJNE');


INSERT INTO PokojTyp (IdPokojTyp, Typ, Cena) VALUES (1, 'SINGLE', 250.00);
INSERT INTO PokojTyp (IdPokojTyp, Typ, Cena) VALUES (2, 'SINGLE DELUXE', 300.00);
INSERT INTO PokojTyp (IdPokojTyp, Typ, Cena) VALUES (3, 'TWIN', 350.00);
INSERT INTO PokojTyp (IdPokojTyp, Typ, Cena) VALUES (4, 'DOUBLE', 400.00);


INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (1, 1, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (1, 4, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (1, 5, 1);

INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (2, 1, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (2, 2, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (2, 3, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (2, 4, 2);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (2, 5, 1);

INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (3, 1, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (3, 4, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (3, 5, 2);

INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (4, 1, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (4, 4, 1);
INSERT INTO PokojTypWyposazenie (PokojTyp_IdPokojTyp, Wyposazenie_IdWyposazenie, Ilosc)
	VALUES (4, 6, 1);


INSERT INTO Pokoj (IdPokoj, PokojTyp_IdPokojTyp, NrPokoju, Pietro, Hotel_IdHotel)
	VALUES (1, 1, 11, 1, 1);
INSERT INTO Pokoj (IdPokoj, PokojTyp_IdPokojTyp, NrPokoju, Pietro, Hotel_IdHotel)
	VALUES (2, 2, 12, 1, 1);
INSERT INTO Pokoj (IdPokoj, PokojTyp_IdPokojTyp, NrPokoju, Pietro, Hotel_IdHotel)
	VALUES (3, 2, 13, 1, 1);
INSERT INTO Pokoj (IdPokoj, PokojTyp_IdPokojTyp, NrPokoju, Pietro, Hotel_IdHotel)
	VALUES (4, 1, 21, 2, 1);
INSERT INTO Pokoj (IdPokoj, PokojTyp_IdPokojTyp, NrPokoju, Pietro, Hotel_IdHotel)
	VALUES (5, 3, 22, 2, 1);
INSERT INTO Pokoj (IdPokoj, PokojTyp_IdPokojTyp, NrPokoju, Pietro, Hotel_IdHotel)
	VALUES (6, 3, 23, 2, 1);
INSERT INTO Pokoj (IdPokoj, PokojTyp_IdPokojTyp, NrPokoju, Pietro, Hotel_IdHotel)
	VALUES (7, 4, 31, 3, 1);
INSERT INTO Pokoj (IdPokoj, PokojTyp_IdPokojTyp, NrPokoju, Pietro, Hotel_IdHotel)
	VALUES (8, 4, 32, 3, 1);


INSERT INTO Klient (IdKlient, Imie, Nazwisko, NrTelefonu, Miasto_IdMiasto, Adres)
	VALUES (1, 'Jakub', 'Leśniak', '600210322', 1, 'Młynarska 17');
INSERT INTO Klient (IdKlient, Imie, Nazwisko, NrTelefonu, Miasto_IdMiasto, Adres)
	VALUES (2, 'Ryszard', 'Kalinowski', '507170965', 2, 'Akacjowa 6/4');
INSERT INTO Klient (IdKlient, Imie, Nazwisko, NrTelefonu, Miasto_IdMiasto, Adres)
	VALUES (3, 'Michalina', 'Marcinkowska', '600210322', 3, 'Lipowa 66');
INSERT INTO Klient (IdKlient, Imie, Nazwisko, NrTelefonu, Miasto_IdMiasto, Adres)
	VALUES (4, 'Witold', 'Michalik', '530244593', 4, 'Łąkowa 77/26');
INSERT INTO Klient (IdKlient, Imie, Nazwisko, NrTelefonu, Miasto_IdMiasto, Adres)
	VALUES (5, 'Marzena', 'Włodarczyk', '880511938', 5, 'Blaschkoallee 48');
INSERT INTO Klient (IdKlient, Imie, Nazwisko, NrTelefonu, Miasto_IdMiasto, Adres)
	VALUES (6, 'Oskar', 'Mazur', '551006751', 6, 'Sienkiewicza 1');
INSERT INTO Klient (IdKlient, Imie, Nazwisko, NrTelefonu, Miasto_IdMiasto, Adres)
	VALUES (7, 'Piotr', 'Olejniczak', '670313741', 7, 'Kazašská 142');


INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (1, 1, 1, DATE '2023-07-01', DATE '2023-07-12', 'xxx', 1, 0, 1);
INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (2, 2, 1, DATE '2023-07-08', DATE '2023-07-11', '', 2, 0, 2);
INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (3, 3, 2, DATE '2023-07-21', DATE '2023-07-27', '', 1, 0, 3);
INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (4, 4, 3, DATE '2023-07-05', DATE '2023-07-07', '', 1, 0, 3);
INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (5, 5, 2, DATE '2023-07-15', DATE '2023-07-18', '', 2, 0, 4);
INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (6, 6, 1, DATE '2023-07-21', DATE '2023-07-30', '', 1, 1, 4);
INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (7, 7, 3, DATE '2023-07-25', DATE '2023-08-12', '', 1, 0, 1);
INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (8, 1, 3, DATE '2023-07-13', DATE '2023-07-20', '', 1, 1, 2);
INSERT INTO Rezerwacja (IdRezerwacja, Klient_IdKlient, Pracownik_IdPracownik, DataOd, DAtaDo, ZyczeniaSpecjalne, LiczbaDoroslych, LiczbaDzieci, PokojTyp_IdPokojTyp)
	VALUES (9, 1, 2, DATE '2023-07-27', DATE '2023-07-28', '', 1, 1, 2);

INSERT INTO Pobyt (Rezerwacja_IdRezerwacja, Zameldowanie, Wymeldowanie)
	VALUES (1, TIMESTAMP '2023-07-01 16:20:00.000', TIMESTAMP '2023-07-12 09:00:00.000');
INSERT INTO Pobyt (Rezerwacja_IdRezerwacja, Zameldowanie, Wymeldowanie)
	VALUES (2, TIMESTAMP '2023-07-08 14:30:00.000', TIMESTAMP '2023-07-11 06:15:00.000');
INSERT INTO Pobyt (Rezerwacja_IdRezerwacja, Zameldowanie, Wymeldowanie)
	VALUES (4, TIMESTAMP '2023-07-05 17:10:00.000', TIMESTAMP '2023-07-7 08:30:00.000');
INSERT INTO Pobyt (Rezerwacja_IdRezerwacja, Zameldowanie, Wymeldowanie)
	VALUES (7, TIMESTAMP '2023-07-25 20:45:00.000', TIMESTAMP '2023-08-12 09:00:00.000');



INSERT INTO Platnosc (IdPlatnosc, Kwota, TerminPlatnosci, DataPlatnosci, Klient_IdKlient, Pracownik_IdPracownik)
	VALUES (1, 2750.00, DATE '2023-07-08', DATE '2023-07-04', 1, 4);
INSERT INTO Platnosc (IdPlatnosc, Kwota, TerminPlatnosci, DataPlatnosci, Klient_IdKlient, Pracownik_IdPracownik)
	VALUES (2, 900., DATE '2023-07-15', DATE '2023-07-10', 2, 2);
INSERT INTO Platnosc (IdPlatnosc, Kwota, TerminPlatnosci, DataPlatnosci, Klient_IdKlient, Pracownik_IdPracownik)
	VALUES (4, 700.00, DATE '2023-07-12', DATE '2023-07-10', 4, 3);
INSERT INTO Platnosc (IdPlatnosc, Kwota, TerminPlatnosci, DataPlatnosci, Klient_IdKlient, Pracownik_IdPracownik)
	VALUES (7, 4500.00, DATE '2023-08-01', DATE '2023-08-01', 7, 4);
