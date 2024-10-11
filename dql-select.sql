SELECT * FROM Hotel;
SELECT * FROM Klient;
SELECT * FROM Kraj;
SELECT * FROM Miasto;
SELECT * FROM Platnosc;
SELECT * FROM Pobyt;
SELECT * FROM Pokoj;
SELECT * FROM PokojTyp;
SELECT * FROM PokojTypWyposazenie;
SELECT * FROM PokojTypWyposazenie p JOIN Wyposazenie w ON p.Wyposazenie_IdWyposazenie=w.IdWyposazenie;
SELECT * FROM Pracownik;
SELECT * FROM Rezerwacja;
SELECT * FROM Wyposazenie;





-- 5 poleceń z klauzulą WHERE

-- 1. Znajdź wsystkie pokoje na drugim piętrze
SELECT * FROM Pokoj WHERE Pietro = 2;

-- 2. Znajdź wszystkie rezerwacje obsługiwane przez pracownika z Id 1
SELECT * FROM Rezerwacja WHERE Pracownik_IdPracownik = 1;

-- 3. Znajdź wszystkie rezerwacja z życzeniami specjalnymi
SELECT * FROM Rezerwacja WHERE ZyczeniaSpecjalne IS NOT NULL;

-- 4. Znajdź wszystkie płatności na kwotę większą niż 1500
SELECT * FROM Platnosc WHERE Kwota > 1500;

-- 5. Znajdź wszystkie rezerwacje zaczynające się dnia 2023.07.01
SELECT * FROM Rezerwacja WHERE DataOd = TO_DATE('2023.07.01');



-- 5 poleceń ze złączeniami tabel

-- 1. Znajdź wszystkich klientów z kraju POLSKA
SELECT *
FROM Klient
  JOIN Miasto
    ON Klient.Miasto_IdMiasto=Miasto.IdMiasto
    JOIN Kraj
      ON Kraj_IdKraj=IdKraj
WHERE Kraj = 'POLSKA';

-- 2. Znajdź wyposażenie pokoju typu SINGLE DELUXE
SELECT Wyposazenie
FROM Wyposazenie
  JOIN PokojTypWyposazenie
    ON IdWyposazenie = Wyposazenie_IdWyposazenie
    JOIN PokojTyp
      ON PokojTyp_IdPokojTyp = IdPokojTyp
WHERE Typ = 'SINGLE DELUXE';

-- 3. Znajdź wszystkie rezerwacje klienta o nazwisku LEŚNIAK
SELECT *
FROM Rezerwacja
  JOIN Klient
    ON Klient_IdKlient = IdKlient
WHERE Nazwisko = 'Leśniak';

-- 4. Znajdź wszystkie pobyty klienta Michalik
SELECT *
FROM Pobyt
  JOIN Rezerwacja
    ON Rezerwacja_IdRezerwacja = IdRezerwacja
      JOIN Klient
        ON Klient_IdKlient = IdKlient
WHERE Klient.Nazwisko = 'Michalik';

-- 5. Znajdź wszystkie pokoje typu SINGLE i SINGLE DELUXE
SELECT *
FROM Pokoj
  JOIN PokojTyp
    ON PokojTyp_IdPokojTyp = IdPokojTyp
WHERE PokojTyp.Typ IN ('SINGLE', 'SINGLE DELUXE');



-- 5 poleceń z klauzulą GROUP BY w tym co najmniej 2 z klauzulą HAVING

-- 1. Policz ile płatności obsłużył każdy z pracowników.
SELECT IdPracownik, Imie, Nazwisko, COUNT(IdPlatnosc) AS "LICZBA PLATNOSCI"
FROM Pracownik
  JOIN Platnosc
    ON IdPracownik = Pracownik_IdPracownik
GROUP BY IdPracownik, Imie, Nazwisko;

-- 2. Policz na jaką kwotę łącznie przyjął płatnoś każdy z pracowników.
SELECT IdPracownik, Imie, Nazwisko, SUM(Kwota)
FROM Pracownik
  JOIN Platnosc
    ON IdPracownik = Pracownik_IdPracownik
GROUP BY IdPracownik, Imie, Nazwisko;

-- 3. Policz ile rezerwacji obsłużył każdy z pracowników.
SELECT IdPracownik, Imie, Nazwisko, COUNT(*) AS "LICZBA REZERWACJI"
FROM Pracownik
  JOIN Rezerwacja
    ON IdPracownik = Pracownik_IdPracownik
GROUP BY IdPracownik, Imie, Nazwisko;

-- 4. Znajdź wszystkie typy pokojów mających co najmniej 3 rezerwacje (having)
SELECT Typ, COUNT(*) AS "LICZBA REZERWACJI"
FROM Rezerwacja
  JOIN PokojTyp
    ON PokojTyp_IdPokojTyp = IdPokojTyp
GROUP BY Typ
HAVING COUNT(*)>=3;

-- 5. Znajdź wszystkich klientów z conajmniej dwoma rezerwacjami (having)
SELECT Imie, Nazwisko, COUNT(*) AS "LICZBA REZERWACJI"
FROM Klient
  JOIN Rezerwacja
    ON IdKlient = Klient_IdKlient
GROUP BY Imie, Nazwisko
HAVING COUNT(*)>=2;



-- 5 poleceń z podzapytaniami, w tym co najmniej 2 z podzapytaniem skorelowanym

-- 1. Znajdź wszystkie płatności, których kwota przekracza średnią.
SELECT *
FROM Platnosc
WHERE Kwota > ( SELECT AVG(Kwota)
                FROM Platnosc );

-- 2. Znajdź wszystkich pracowników, którzy nie obsłużyli żadnej rezerwacji (skorelowane)
SELECT Imie, Nazwisko
FROM Pracownik p
WHERE NOT EXISTS (	SELECT IdRezerwacja
					FROM Rezerwacja r
					WHERE r.Pracownik_IdPracownik = p.IdPracownik );

-- 3. Znajdź wszystkich klientów, którzy nie mają żadnej płatności (skorelowane)
SELECT Imie, Nazwisko
FROM Klient k
WHERE NOT EXISTS (	SELECT *
					FROM Platnosc p
					WHERE p.Klient_IdKlient = k.IdKlient );

-- 4. Znajdź wszystkie rezerwacja obsługiwane przez pracownika Dawid Tomaszewski
SELECT *
FROM Rezerwacja
WHERE Pracownik_IdPracownik = (	SELECT IdPracownik
								FROM Pracownik
								WHERE Imie = 'DAWID' AND Nazwisko = 'TOMASZEWSKI' );
-- 5. Znajdź wszystkich klientów z miasta Warszawa
SELECT *
FROM Klient
WHERE Miasto_IdMiasto = (	SELECT IdMiasto
							FROM Miasto
							WHERE Miasto = 'WARSZAWA' );
