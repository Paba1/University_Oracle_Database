CREATE SEQUENCE bud_seq_id
INCREMENT BY 10
START WITH 100
MAXVALUE 180  
NOCYCLE
NOCACHE;


CREATE SEQUENCE student_seq_id
INCREMENT BY 1
START WITH 1
MAXVALUE 15 
NOCYCLE
NOCACHE;


INSERT INTO budynki (id_b, nazwa, adres) VALUES (bud_seq_id.NEXTVAL, 'Gmach Główny', 'Warszawska 24');
INSERT INTO budynki (id_b, nazwa, adres) VALUES (bud_seq_id.NEXTVAL, 'Centrum Informatyki', 'Akademicka 5');
INSERT INTO budynki (id_b, nazwa, adres) VALUES (bud_seq_id.NEXTVAL, 'Wydział Mechaniczny', 'Techniczna 1');
INSERT INTO budynki (id_b, nazwa, adres) VALUES (bud_seq_id.NEXTVAL, 'Biblioteka', 'Papierowa 10');
INSERT INTO budynki (id_b, nazwa, adres) VALUES (bud_seq_id.NEXTVAL, 'Hala Sportowa', 'Olimpijska 3');

INSERT INTO wydzialy (id_w, nazwa, dyrektor_stud) VALUES (1, 'Informatyka', 'Jan Kowalski');
INSERT INTO wydzialy (id_w, nazwa, dyrektor_stud) VALUES (2, 'Ekonometria', 'Maria Nowak');
INSERT INTO wydzialy (id_w, nazwa, dyrektor_stud) VALUES (3, 'Mechanika', 'Adam Zieliński');
INSERT INTO wydzialy (id_w, nazwa, dyrektor_stud) VALUES (4, 'Architektura', 'Ewa Wiśniewska');
INSERT INTO wydzialy (id_w, nazwa, dyrektor_stud) VALUES (5, 'Zarządzanie', 'Piotr Mazur');

INSERT INTO katedry (id_kat, wydzialy_id_w, nazwa, kierownik) VALUES (10, 1, 'Informatyki', 'Krzysztof Fląłtyński');
INSERT INTO katedry (id_kat, wydzialy_id_w, nazwa, kierownik) VALUES (20, 2, 'Ekonometrii', 'Barbara Chmiel');
INSERT INTO katedry (id_kat, wydzialy_id_w, nazwa, kierownik) VALUES (30, 3, 'Mechanizacji', 'Janek Psikuta' );
INSERT INTO katedry (id_kat, wydzialy_id_w, nazwa, kierownik) VALUES (40, 4, 'Budownicta', 'Radeg Ceglany');
INSERT INTO katedry (id_kat, wydzialy_id_w, nazwa, kierownik) VALUES (50, 5, 'Zarządzania', 'Ahmud Ishkalev');

INSERT INTO kierunki (id_k, nazwa, wydzialy_id_w, stopien) VALUES (101, 'Informatyka Stosowana', 1, 'Inżynierskie');
INSERT INTO kierunki (id_k, nazwa, wydzialy_id_w, stopien) VALUES (102, 'Analiza Danych', 2, 'Magisterskie');
INSERT INTO kierunki (id_k, nazwa, wydzialy_id_w, stopien) VALUES (103, 'Budowa Maszyn', 3, 'Inżynierskie');
INSERT INTO kierunki (id_k, nazwa, wydzialy_id_w, stopien) VALUES (104, 'Projektowanie Wnętrz', 4, 'Licencjackie');
INSERT INTO kierunki (id_k, nazwa, wydzialy_id_w, stopien) VALUES (105, 'Logistyka', 5, 'Inżynierskie');

INSERT INTO przedmioty (id_przed, nazwa, ects) VALUES (501, 'Bazy Danych', 5);
INSERT INTO przedmioty (id_przed, nazwa, ects) VALUES (502, 'Statystyka Opisowa', 4);
INSERT INTO przedmioty (id_przed, nazwa, ects) VALUES (503, 'Wytrzymałość Materiałów', 6);
INSERT INTO przedmioty (id_przed, nazwa, ects) VALUES (504, 'Historia Sztuki', 2);
INSERT INTO przedmioty (id_przed, nazwa, ects) VALUES (505, 'Podstawy Zarządzania', 3);

INSERT INTO pracownicy (id_prac, imie, nazwisko, data_zatrud, stanowisko, pensja) 
VALUES (1001, 'Andrzej', 'Komorowski', TO_DATE('2010-09-01', 'YYYY-MM-DD'), 'Profesor', 8500.00);
INSERT INTO pracownicy (id_prac, imie, nazwisko, data_zatrud, stanowisko, pensja) 
VALUES (1002, 'Beata', 'Duda', TO_DATE('2015-02-15', 'YYYY-MM-DD'), 'Adiunkt', 6200.00);
INSERT INTO pracownicy (id_prac, imie, nazwisko, data_zatrud, stanowisko, pensja) 
VALUES (1003, 'Donald', 'Batyra', TO_DATE('2008-11-20', 'YYYY-MM-DD'), 'Asystent', 5000.00);
INSERT INTO pracownicy (id_prac, imie, nazwisko, data_zatrud, stanowisko, pensja) 
VALUES (1004, 'Krzystof', 'Stonoga', TO_DATE('2020-08-15', 'YYYY-MM-DD'), 'Adiunkt', 6000.00);
INSERT INTO pracownicy (id_prac, imie, nazwisko, data_zatrud, stanowisko, pensja) 
VALUES (1005, 'Anna', 'Biedronka', TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'Asystent', 5000.00);
INSERT INTO pracownicy (id_prac, imie, nazwisko, data_zatrud, stanowisko, pensja) 
VALUES (1006, 'Zbigniew', 'Klawiatur', TO_DATE('2016-01-11', 'YYYY-MM-DD'), 'Woźny', 4500.00);
INSERT INTO pracownicy (id_prac, imie, nazwisko, data_zatrud, stanowisko, pensja) 
VALUES (1007, 'Helena', 'Bogucka', TO_DATE('2008-12-13', 'YYYY-MM-DD'), 'Portier', 4500.00);

INSERT INTO wykładowcy (id_prac, stopien, specjalizacja, katedry_id_kat) VALUES (1001, 'Prof. dr hab.', 'Sztuczna Inteligencja', 10);
INSERT INTO wykładowcy (id_prac, stopien, specjalizacja, katedry_id_kat) VALUES (1002, 'Dr', 'Ekonometria Przestrzenna', 20);
INSERT INTO wykładowcy (id_prac, stopien, specjalizacja, katedry_id_kat) VALUES (1003, 'Mgr inż.', 'Mechanika Płynów', 30);
INSERT INTO wykładowcy (id_prac, stopien, specjalizacja, katedry_id_kat) VALUES (1004, 'Dr inż.', 'Architektura Krajobrazu', 40);
INSERT INTO wykładowcy (id_prac, stopien, specjalizacja, katedry_id_kat) VALUES (1005, 'Mgr', 'Zarządzanie Strategiczne', 50);

INSERT INTO studenci (id_s, imie, nazwisko, data_urodz, mail, kierunki_id_k) 
VALUES (student_seq_id.NEXTVAL, 'Patryk', 'Lewandowski', TO_DATE('2005-05-12', 'YYYY-MM-DD'), 'patlew@student.pl', 101);
INSERT INTO studenci (id_s, imie, nazwisko, data_urodz, mail, kierunki_id_k) 
VALUES (student_seq_id.NEXTVAL, 'Iga', 'Grzeszna', TO_DATE('2001-03-22', 'YYYY-MM-DD'), 'igagrz@student.pl', 102);
INSERT INTO studenci (id_s, imie, nazwisko, data_urodz, mail, kierunki_id_k) 
VALUES (student_seq_id.NEXTVAL, 'Jędrzej', 'Stoch', TO_DATE('2000-11-05', 'YYYY-MM-DD'), 'jedsto@student.pl', 103);
INSERT INTO studenci (id_s, imie, nazwisko, data_urodz, mail, kierunki_id_k) 
VALUES (student_seq_id.NEXTVAL, 'Krzysztof', 'Kajak', TO_DATE('2004-12-09', 'YYYY-MM-DD'), 'krzkaj@student.pl', 104);
INSERT INTO studenci (id_s, imie, nazwisko, data_urodz, mail, kierunki_id_k) 
VALUES (student_seq_id.NEXTVAL, 'Remigiusz', 'Stelmach', TO_DATE('2003-07-05', 'YYYY-MM-DD'), 'remste@student.pl', 105);

INSERT INTO sale (id_sali, nazwa, pojemnosc, czy_projektor, budynki_id_b) VALUES (1, 'Aula A', 150, 1, 100);
INSERT INTO sale (id_sali, nazwa, pojemnosc, czy_projektor, budynki_id_b) VALUES (2, 'Audytorium B', 120, 1, 110);
INSERT INTO sale (id_sali, nazwa, pojemnosc, czy_projektor, budynki_id_b) VALUES (3, 'Sala 15', 30, 0, 120);
INSERT INTO sale (id_sali, nazwa, pojemnosc, czy_projektor, budynki_id_b) VALUES (4, 'Czytelnia', 100, 1, 130);
INSERT INTO sale (id_sali, nazwa, pojemnosc, czy_projektor, budynki_id_b) VALUES (5, 'Hala A', 30, 0, 140);


INSERT INTO legitymacje (id_l, data_wydania, data_waznosci, studenci_id_s) 
VALUES (7001, SYSDATE, SYSDATE + 365, 1);
INSERT INTO legitymacje (id_l, data_wydania, data_waznosci, studenci_id_s) 
VALUES (7002, SYSDATE, SYSDATE + 365, 2);
INSERT INTO legitymacje (id_l, data_wydania, data_waznosci, studenci_id_s) 
VALUES (7003, SYSDATE, SYSDATE + 365, 3);
INSERT INTO legitymacje (id_l, data_wydania, data_waznosci, studenci_id_s) 
VALUES (7004, SYSDATE, SYSDATE + 365, 4);
INSERT INTO legitymacje (id_l, data_wydania, data_waznosci, studenci_id_s) 
VALUES (7005, SYSDATE, SYSDATE + 365, 5);

INSERT INTO stypendia (id_sty, rodzaj, kwota, studenci_id_s) VALUES (10, 'Naukowe', 9000.50, 1);
INSERT INTO stypendia (id_sty, rodzaj, kwota, studenci_id_s) VALUES (11, 'Socjalne', 9500.00, 2);
INSERT INTO stypendia (id_sty, rodzaj, kwota, studenci_id_s) VALUES (12, 'Sportowe', 8500.00, 3);
INSERT INTO stypendia (id_sty, rodzaj, kwota, studenci_id_s) VALUES (13, 'Naukowe', 9000.50, 4);
INSERT INTO stypendia (id_sty, rodzaj, kwota, studenci_id_s) VALUES (14, 'Naukowe', 9000.50, 5);

INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (501,1);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (501,3);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (501,4);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (502,1);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (502,3);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (502,2);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (502,5);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (503,1);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (503,4);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (503,2);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (504,2);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (504,5);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (505,5);
INSERT INTO prze_sal (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) VALUES (505,4);

INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (101,501);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (101,502);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (101,503);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (102,502);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (102,504);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (103,501);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (103,505);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (103,504);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (104,501);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (104,505);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (105,505);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (105,504);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (105,501);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (105,502);
INSERT INTO kier_prze (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) VALUES (105,503);
