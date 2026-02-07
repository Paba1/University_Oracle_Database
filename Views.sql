

CREATE VIEW scenariusz_1 AS
SELECT s.id_s, UPPER(s.nazwisko) AS nazwisko, s.imie, k.nazwa AS kierunek, w.nazwa AS wydzial, l.data_waznosci,
CASE WHEN l.data_waznosci >= SYSDATE THEN 'WAZNA' ELSE 'NIEWAZNA'END AS status_legitymacji
FROM studenci s
JOIN kierunki k ON s.kierunki_id_k = k.id_k
JOIN wydzialy w ON k.wydzialy_id_w = w.id_w
LEFT JOIN legitymacje l ON s.id_s = l.studenci_id_s
ORDER BY s.nazwisko;


CREATE VIEW scenariusz_2 AS
SELECT
s.id_s,
UPPER(s.nazwisko) AS nazwisko,
INITCAP(s.imie) AS imie,
k.nazwa AS kierunek,
pr.nazwa AS przedmiot,
sa.nazwa AS sala,
b.nazwa AS budynek
FROM studenci s
JOIN kierunki k ON s.kierunki_id_k = k.id_k
JOIN kier_prze kp ON k.id_k = kp.kierunki_id_k
JOIN przedmioty pr ON kp.przedmioty_id_przed = pr.id_przed
JOIN prze_sal ps ON pr.id_przed = ps.przedmioty_id_przed
JOIN sale sa ON ps.sale_id_sali = sa.id_sali
JOIN budynki b ON sa.budynki_id_b = b.id_b
ORDER BY s.nazwisko;



CREATE VIEW scenariusz_3 AS
SELECT
s.id_s,
s.imie,
s.nazwisko,
FLOOR(MONTHS_BETWEEN(SYSDATE, s.data_urodz) / 12) AS wiek
FROM studenci s;

CREATE VIEW scenariusz_4 AS
SELECT
k.nazwa AS kierunek,
COUNT(s.id_s) AS liczba_studentow
FROM kierunki k
LEFT JOIN studenci s ON k.id_k = s.kierunki_id_k
GROUP BY k.nazwa
ORDER BY liczba_studentow DESC;



CREATE VIEW scenariusz_5 AS
SELECT
s.imie,
s.nazwisko,
NVL(st.kwota, 0) AS kwota_stypendium
FROM studenci s
LEFT JOIN stypendia st ON s.id_s = st.studenci_id_s;


-- 
-- Przypadek użycia  zapytania skorelowanego
CREATE VIEW scenariusz_6 AS
SELECT
s.imie,
s.nazwisko
FROM studenci s
WHERE (
SELECT COUNT(*)
FROM kier_prze kp
WHERE kp.kierunki_id_k = s.kierunki_id_k
) > 3;


CREATE VIEW scenariusz_7 AS
SELECT
sa.nazwa || ' (' || TO_CHAR(sa.pojemnosc) || ' miejsc)' AS opis_sali
FROM sale sa;

-- Przypadek użycia  zapytania nieskorelowanego
CREATE VIEW scenariusz_8 AS
SELECT
b.nazwa AS budynek,
SUM(sa.pojemnosc) AS laczna_pojemnosc
FROM budynki b
JOIN sale sa ON b.id_b = sa.budynki_id_b
GROUP BY b.nazwa
HAVING SUM(sa.pojemnosc) > 100;



CREATE VIEW scenariusz_9 AS
SELECT *
FROM studenci s
WHERE s.id_s in (SELECT studenci_id_s FROM stypendia WHERE rodzaj = 'Sportowe')
;
