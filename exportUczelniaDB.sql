--------------------------------------------------------
--  File created - poniedzia�ek-lutego-02-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BUD_SEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "UniversityDB"."BUD_SEQ_ID"  MINVALUE 1 MAXVALUE 180 INCREMENT BY 10 START WITH 150 NOCACHE  NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence DT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "UniversityDB"."DT_ID_SEQ"  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 10 START WITH 230 NOCACHE  NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_SEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "UniversityDB"."STUDENT_SEQ_ID"  MINVALUE 1 MAXVALUE 15 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Table BUDYNKI
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."BUDYNKI" 
   (	"ID_B" NUMBER(*,0), 
	"NAZWA" VARCHAR2(25 CHAR), 
	"ADRES" VARCHAR2(25 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KATEDRY
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."KATEDRY" 
   (	"ID_KAT" NUMBER(*,0), 
	"WYDZIALY_ID_W" NUMBER(*,0), 
	"NAZWA" VARCHAR2(25 CHAR), 
	"KIEROWNIK" VARCHAR2(25 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KIER_PRZE
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."KIER_PRZE" 
   (	"KIERUNKI_ID_K" NUMBER(*,0), 
	"PRZEDMIOTY_ID_PRZED" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KIERUNKI
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."KIERUNKI" 
   (	"ID_K" NUMBER(*,0), 
	"NAZWA" VARCHAR2(25 CHAR), 
	"WYDZIALY_ID_W" NUMBER(*,0), 
	"STOPIEN" VARCHAR2(25 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LEGITYMACJE
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."LEGITYMACJE" 
   (	"ID_L" NUMBER(*,0), 
	"DATA_WYDANIA" DATE, 
	"DATA_WAZNOSCI" DATE, 
	"STUDENCI_ID_S" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRACOWNICY
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."PRACOWNICY" 
   (	"ID_PRAC" NUMBER(*,0), 
	"IMIE" VARCHAR2(25 CHAR), 
	"NAZWISKO" VARCHAR2(35 CHAR), 
	"DATA_ZATRUD" DATE, 
	"STANOWISKO" VARCHAR2(20 CHAR), 
	"PENSJA" FLOAT(2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRZEDMIOTY
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."PRZEDMIOTY" 
   (	"ID_PRZED" NUMBER(*,0), 
	"NAZWA" VARCHAR2(25 CHAR), 
	"ECTS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRZE_SAL
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."PRZE_SAL" 
   (	"PRZEDMIOTY_ID_PRZED" NUMBER(*,0), 
	"SALE_ID_SALI" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SALE
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."SALE" 
   (	"ID_SALI" NUMBER(*,0), 
	"NAZWA" VARCHAR2(20 CHAR), 
	"POJEMNOSC" NUMBER(*,0), 
	"CZY_PROJEKTOR" CHAR(1 BYTE), 
	"BUDYNKI_ID_B" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENCI
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."STUDENCI" 
   (	"ID_S" NUMBER(*,0), 
	"IMIE" VARCHAR2(25 CHAR), 
	"NAZWISKO" VARCHAR2(35 CHAR), 
	"DATA_URODZ" DATE, 
	"MAIL" VARCHAR2(25 BYTE), 
	"KIERUNKI_ID_K" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STYPENDIA
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."STYPENDIA" 
   (	"ID_STY" NUMBER(*,0), 
	"RODZAJ" VARCHAR2(20 BYTE), 
	"KWOTA" FLOAT(2), 
	"STUDENCI_ID_S" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WYDZIALY
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."WYDZIALY" 
   (	"ID_W" NUMBER(*,0), 
	"NAZWA" VARCHAR2(25 CHAR), 
	"DYREKTOR_STUD" VARCHAR2(25 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WYK�ADOWCY
--------------------------------------------------------

  CREATE TABLE "UniversityDB"."WYK�ADOWCY" 
   (	"ID_PRAC" NUMBER(*,0), 
	"STOPIEN" VARCHAR2(25 CHAR), 
	"SPECJALIZACJA" VARCHAR2(25 CHAR), 
	"KATEDRY_ID_KAT" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_1
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_1" ("ID_S", "NAZWISKO", "IMIE", "KIERUNEK", "WYDZIAL", "DATA_WAZNOSCI", "STATUS_LEGITYMACJI") AS 
  SELECT s.id_s, UPPER(s.nazwisko) AS nazwisko, s.imie, k.nazwa AS kierunek, w.nazwa AS wydzial, l.data_waznosci,
CASE WHEN l.data_waznosci >= SYSDATE THEN 'WAZNA' ELSE 'NIEWAZNA'END AS status_legitymacji
FROM studenci s
JOIN kierunki k ON s.kierunki_id_k = k.id_k
JOIN wydzialy w ON k.wydzialy_id_w = w.id_w
LEFT JOIN legitymacje l ON s.id_s = l.studenci_id_s
ORDER BY s.nazwisko
;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_2
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_2" ("ID_S", "NAZWISKO", "IMIE", "KIERUNEK", "PRZEDMIOT", "SALA", "BUDYNEK") AS 
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
ORDER BY s.nazwisko
;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_3
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_3" ("ID_S", "IMIE", "NAZWISKO", "WIEK") AS 
  SELECT
s.id_s,
s.imie,
s.nazwisko,
FLOOR(MONTHS_BETWEEN(SYSDATE, s.data_urodz) / 12) AS wiek
FROM studenci s
;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_4
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_4" ("KIERUNEK", "LICZBA_STUDENTOW") AS 
  SELECT
k.nazwa AS kierunek,
COUNT(s.id_s) AS liczba_studentow
FROM kierunki k
LEFT JOIN studenci s ON k.id_k = s.kierunki_id_k
GROUP BY k.nazwa
ORDER BY liczba_studentow DESC
;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_5
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_5" ("IMIE", "NAZWISKO", "KWOTA_STYPENDIUM") AS 
  SELECT
s.imie,
s.nazwisko,
NVL(st.kwota, 0) AS kwota_stypendium
FROM studenci s
LEFT JOIN stypendia st ON s.id_s = st.studenci_id_s
;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_6
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_6" ("IMIE", "NAZWISKO") AS 
  SELECT
s.imie,
s.nazwisko
FROM studenci s
WHERE (
SELECT COUNT(*)
FROM kier_prze kp
WHERE kp.kierunki_id_k = s.kierunki_id_k
) > 3
;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_7
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_7" ("OPIS_SALI") AS 
  SELECT
sa.nazwa || ' (' || TO_CHAR(sa.pojemnosc) || ' miejsc)' AS opis_sali
FROM sale sa
;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_8
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_8" ("BUDYNEK", "LACZNA_POJEMNOSC") AS 
  SELECT
b.nazwa AS budynek,
SUM(sa.pojemnosc) AS laczna_pojemnosc
FROM budynki b
JOIN sale sa ON b.id_b = sa.budynki_id_b
GROUP BY b.nazwa
HAVING SUM(sa.pojemnosc) > 100
;
--------------------------------------------------------
--  DDL for View SCENARIUSZ_9
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "UniversityDB"."SCENARIUSZ_9" ("ID_S", "IMIE", "NAZWISKO", "DATA_URODZ", "MAIL", "KIERUNKI_ID_K") AS 
  SELECT "ID_S","IMIE","NAZWISKO","DATA_URODZ","MAIL","KIERUNKI_ID_K"
FROM studenci s
WHERE s.id_s in (SELECT studenci_id_s FROM stypendia WHERE rodzaj = 'Sportowe')
;
REM INSERTING into UniversityDB.BUDYNKI
SET DEFINE OFF;
Insert into UniversityDB.BUDYNKI (ID_B,NAZWA,ADRES) values ('100','Gmach G��wny','Warszawska 24');
Insert into UniversityDB.BUDYNKI (ID_B,NAZWA,ADRES) values ('110','Centrum Informatyki','Akademicka 5');
Insert into UniversityDB.BUDYNKI (ID_B,NAZWA,ADRES) values ('120','Wydzia� Mechaniczny','Techniczna 1');
Insert into UniversityDB.BUDYNKI (ID_B,NAZWA,ADRES) values ('130','Biblioteka','Papierowa 10');
Insert into UniversityDB.BUDYNKI (ID_B,NAZWA,ADRES) values ('140','Hala Sportowa','Olimpijska 3');
REM INSERTING into UniversityDB.KATEDRY
SET DEFINE OFF;
Insert into UniversityDB.KATEDRY (ID_KAT,WYDZIALY_ID_W,NAZWA,KIEROWNIK) values ('10','1','Informatyki','Krzysztof Fl��ty�ski');
Insert into UniversityDB.KATEDRY (ID_KAT,WYDZIALY_ID_W,NAZWA,KIEROWNIK) values ('20','2','Ekonometrii','Barbara Chmiel');
Insert into UniversityDB.KATEDRY (ID_KAT,WYDZIALY_ID_W,NAZWA,KIEROWNIK) values ('30','3','Mechanizacji','Janek Psikuta');
Insert into UniversityDB.KATEDRY (ID_KAT,WYDZIALY_ID_W,NAZWA,KIEROWNIK) values ('40','4','Budownicta','Radeg Ceglany');
Insert into UniversityDB.KATEDRY (ID_KAT,WYDZIALY_ID_W,NAZWA,KIEROWNIK) values ('50','5','Zarz�dzania','Ahmud Ishkalev');
REM INSERTING into UniversityDB.KIER_PRZE
SET DEFINE OFF;
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('101','501');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('103','501');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('104','501');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('105','501');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('101','502');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('102','502');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('105','502');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('101','503');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('105','503');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('102','504');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('103','504');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('105','504');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('103','505');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('104','505');
Insert into UniversityDB.KIER_PRZE (KIERUNKI_ID_K,PRZEDMIOTY_ID_PRZED) values ('105','505');
REM INSERTING into UniversityDB.KIERUNKI
SET DEFINE OFF;
Insert into UniversityDB.KIERUNKI (ID_K,NAZWA,WYDZIALY_ID_W,STOPIEN) values ('101','Informatyka Stosowana','1','In�ynierskie');
Insert into UniversityDB.KIERUNKI (ID_K,NAZWA,WYDZIALY_ID_W,STOPIEN) values ('102','Analiza Danych','2','Magisterskie');
Insert into UniversityDB.KIERUNKI (ID_K,NAZWA,WYDZIALY_ID_W,STOPIEN) values ('103','Budowa Maszyn','3','In�ynierskie');
Insert into UniversityDB.KIERUNKI (ID_K,NAZWA,WYDZIALY_ID_W,STOPIEN) values ('104','Projektowanie Wn�trz','4','Licencjackie');
Insert into UniversityDB.KIERUNKI (ID_K,NAZWA,WYDZIALY_ID_W,STOPIEN) values ('105','Logistyka','5','In�ynierskie');
REM INSERTING into UniversityDB.LEGITYMACJE
SET DEFINE OFF;
Insert into UniversityDB.LEGITYMACJE (ID_L,DATA_WYDANIA,DATA_WAZNOSCI,STUDENCI_ID_S) values ('7001',to_date('26/01/19','RR/MM/DD'),to_date('27/01/19','RR/MM/DD'),'1');
Insert into UniversityDB.LEGITYMACJE (ID_L,DATA_WYDANIA,DATA_WAZNOSCI,STUDENCI_ID_S) values ('7002',to_date('26/01/19','RR/MM/DD'),to_date('27/01/19','RR/MM/DD'),'2');
Insert into UniversityDB.LEGITYMACJE (ID_L,DATA_WYDANIA,DATA_WAZNOSCI,STUDENCI_ID_S) values ('7003',to_date('26/01/19','RR/MM/DD'),to_date('27/01/19','RR/MM/DD'),'3');
Insert into UniversityDB.LEGITYMACJE (ID_L,DATA_WYDANIA,DATA_WAZNOSCI,STUDENCI_ID_S) values ('7004',to_date('26/01/19','RR/MM/DD'),to_date('27/01/19','RR/MM/DD'),'4');
Insert into UniversityDB.LEGITYMACJE (ID_L,DATA_WYDANIA,DATA_WAZNOSCI,STUDENCI_ID_S) values ('7005',to_date('26/01/19','RR/MM/DD'),to_date('27/01/19','RR/MM/DD'),'5');
REM INSERTING into UniversityDB.PRACOWNICY
SET DEFINE OFF;
Insert into UniversityDB.PRACOWNICY (ID_PRAC,IMIE,NAZWISKO,DATA_ZATRUD,STANOWISKO,PENSJA) values ('1001','Andrzej','Komorowski',to_date('10/09/01','RR/MM/DD'),'Profesor','9000');
Insert into UniversityDB.PRACOWNICY (ID_PRAC,IMIE,NAZWISKO,DATA_ZATRUD,STANOWISKO,PENSJA) values ('1002','Beata','Duda',to_date('15/02/15','RR/MM/DD'),'Adiunkt','6000');
Insert into UniversityDB.PRACOWNICY (ID_PRAC,IMIE,NAZWISKO,DATA_ZATRUD,STANOWISKO,PENSJA) values ('1003','Donald','Batyra',to_date('08/11/20','RR/MM/DD'),'Asystent','5000');
Insert into UniversityDB.PRACOWNICY (ID_PRAC,IMIE,NAZWISKO,DATA_ZATRUD,STANOWISKO,PENSJA) values ('1004','Krzystof','Stonoga',to_date('20/08/15','RR/MM/DD'),'Adiunkt','6000');
Insert into UniversityDB.PRACOWNICY (ID_PRAC,IMIE,NAZWISKO,DATA_ZATRUD,STANOWISKO,PENSJA) values ('1005','Anna','Biedronka',to_date('11/01/21','RR/MM/DD'),'Asystent','5000');
Insert into UniversityDB.PRACOWNICY (ID_PRAC,IMIE,NAZWISKO,DATA_ZATRUD,STANOWISKO,PENSJA) values ('1006','Zbigniew','Klawiatur',to_date('16/01/11','RR/MM/DD'),'Wo�ny','5000');
Insert into UniversityDB.PRACOWNICY (ID_PRAC,IMIE,NAZWISKO,DATA_ZATRUD,STANOWISKO,PENSJA) values ('1007','Helena','Bogucka',to_date('08/12/13','RR/MM/DD'),'Portier','5000');
REM INSERTING into UniversityDB.PRZEDMIOTY
SET DEFINE OFF;
Insert into UniversityDB.PRZEDMIOTY (ID_PRZED,NAZWA,ECTS) values ('501','Bazy Danych','5');
Insert into UniversityDB.PRZEDMIOTY (ID_PRZED,NAZWA,ECTS) values ('502','Statystyka Opisowa','4');
Insert into UniversityDB.PRZEDMIOTY (ID_PRZED,NAZWA,ECTS) values ('503','Wytrzyma�o�� Materia��w','6');
Insert into UniversityDB.PRZEDMIOTY (ID_PRZED,NAZWA,ECTS) values ('504','Historia Sztuki','2');
Insert into UniversityDB.PRZEDMIOTY (ID_PRZED,NAZWA,ECTS) values ('505','Podstawy Zarz�dzania','3');
REM INSERTING into UniversityDB.PRZE_SAL
SET DEFINE OFF;
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('501','1');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('501','3');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('501','4');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('502','1');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('502','3');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('502','2');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('502','5');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('503','1');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('503','4');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('503','2');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('504','2');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('504','5');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('505','5');
Insert into UniversityDB.PRZE_SAL (PRZEDMIOTY_ID_PRZED,SALE_ID_SALI) values ('505','4');
REM INSERTING into UniversityDB.SALE
SET DEFINE OFF;
Insert into UniversityDB.SALE (ID_SALI,NAZWA,POJEMNOSC,CZY_PROJEKTOR,BUDYNKI_ID_B) values ('1','Aula A','150','1','100');
Insert into UniversityDB.SALE (ID_SALI,NAZWA,POJEMNOSC,CZY_PROJEKTOR,BUDYNKI_ID_B) values ('2','Audytorium B','120','1','110');
Insert into UniversityDB.SALE (ID_SALI,NAZWA,POJEMNOSC,CZY_PROJEKTOR,BUDYNKI_ID_B) values ('3','Sala 15','30','0','120');
Insert into UniversityDB.SALE (ID_SALI,NAZWA,POJEMNOSC,CZY_PROJEKTOR,BUDYNKI_ID_B) values ('4','Czytelnia','100','1','130');
Insert into UniversityDB.SALE (ID_SALI,NAZWA,POJEMNOSC,CZY_PROJEKTOR,BUDYNKI_ID_B) values ('5','Hala A','30','0','140');
REM INSERTING into UniversityDB.STUDENCI
SET DEFINE OFF;
Insert into UniversityDB.STUDENCI (ID_S,IMIE,NAZWISKO,DATA_URODZ,MAIL,KIERUNKI_ID_K) values ('1','Patryk','Lewandowski',to_date('05/05/12','RR/MM/DD'),'patlew@student.pl','101');
Insert into UniversityDB.STUDENCI (ID_S,IMIE,NAZWISKO,DATA_URODZ,MAIL,KIERUNKI_ID_K) values ('2','Iga','Grzeszna',to_date('01/03/22','RR/MM/DD'),'igagrz@student.pl','102');
Insert into UniversityDB.STUDENCI (ID_S,IMIE,NAZWISKO,DATA_URODZ,MAIL,KIERUNKI_ID_K) values ('3','J�drzej','Stoch',to_date('00/11/05','RR/MM/DD'),'jedsto@student.pl','103');
Insert into UniversityDB.STUDENCI (ID_S,IMIE,NAZWISKO,DATA_URODZ,MAIL,KIERUNKI_ID_K) values ('4','Krzysztof','Kajak',to_date('04/12/09','RR/MM/DD'),'krzkaj@student.pl','104');
Insert into UniversityDB.STUDENCI (ID_S,IMIE,NAZWISKO,DATA_URODZ,MAIL,KIERUNKI_ID_K) values ('5','Remigiusz','Stelmach',to_date('03/07/05','RR/MM/DD'),'remste@student.pl','105');
REM INSERTING into UniversityDB.STYPENDIA
SET DEFINE OFF;
Insert into UniversityDB.STYPENDIA (ID_STY,RODZAJ,KWOTA,STUDENCI_ID_S) values ('10','Naukowe','9000','1');
Insert into UniversityDB.STYPENDIA (ID_STY,RODZAJ,KWOTA,STUDENCI_ID_S) values ('11','Socjalne','10000','2');
Insert into UniversityDB.STYPENDIA (ID_STY,RODZAJ,KWOTA,STUDENCI_ID_S) values ('12','Sportowe','9000','3');
Insert into UniversityDB.STYPENDIA (ID_STY,RODZAJ,KWOTA,STUDENCI_ID_S) values ('13','Naukowe','9000','4');
Insert into UniversityDB.STYPENDIA (ID_STY,RODZAJ,KWOTA,STUDENCI_ID_S) values ('14','Naukowe','9000','5');
REM INSERTING into UniversityDB.WYDZIALY
SET DEFINE OFF;
Insert into UniversityDB.WYDZIALY (ID_W,NAZWA,DYREKTOR_STUD) values ('1','Informatyka','Jan Kowalski');
Insert into UniversityDB.WYDZIALY (ID_W,NAZWA,DYREKTOR_STUD) values ('2','Ekonometria','Maria Nowak');
Insert into UniversityDB.WYDZIALY (ID_W,NAZWA,DYREKTOR_STUD) values ('3','Mechanika','Adam Zieli�ski');
Insert into UniversityDB.WYDZIALY (ID_W,NAZWA,DYREKTOR_STUD) values ('4','Architektura','Ewa Wi�niewska');
Insert into UniversityDB.WYDZIALY (ID_W,NAZWA,DYREKTOR_STUD) values ('5','Zarz�dzanie','Piotr Mazur');
REM INSERTING into UniversityDB."WYK�ADOWCY"
SET DEFINE OFF;
Insert into UniversityDB."WYK�ADOWCY" (ID_PRAC,STOPIEN,SPECJALIZACJA,KATEDRY_ID_KAT) values ('1001','Prof. dr hab.','Sztuczna Inteligencja','10');
Insert into UniversityDB."WYK�ADOWCY" (ID_PRAC,STOPIEN,SPECJALIZACJA,KATEDRY_ID_KAT) values ('1002','Dr','Ekonometria Przestrzenna','20');
Insert into UniversityDB."WYK�ADOWCY" (ID_PRAC,STOPIEN,SPECJALIZACJA,KATEDRY_ID_KAT) values ('1003','Mgr in�.','Mechanika P�yn�w','30');
Insert into UniversityDB."WYK�ADOWCY" (ID_PRAC,STOPIEN,SPECJALIZACJA,KATEDRY_ID_KAT) values ('1004','Dr in�.','Architektura Krajobrazu','40');
Insert into UniversityDB."WYK�ADOWCY" (ID_PRAC,STOPIEN,SPECJALIZACJA,KATEDRY_ID_KAT) values ('1005','Mgr','Zarz�dzanie Strategiczne','50');
--------------------------------------------------------
--  DDL for Index LEGITYMACJE__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."LEGITYMACJE__IDX" ON "UniversityDB"."LEGITYMACJE" ("STUDENCI_ID_S") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LEGITYMACJE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."LEGITYMACJE_PK" ON "UniversityDB"."LEGITYMACJE" ("ID_L") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KIER_PRZE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."KIER_PRZE_PK" ON "UniversityDB"."KIER_PRZE" ("PRZEDMIOTY_ID_PRZED", "KIERUNKI_ID_K") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KIERUNKI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."KIERUNKI_PK" ON "UniversityDB"."KIERUNKI" ("ID_K") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KATEDRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."KATEDRY_PK" ON "UniversityDB"."KATEDRY" ("ID_KAT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BUDYNKI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."BUDYNKI_PK" ON "UniversityDB"."BUDYNKI" ("ID_B") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WYK�ADOWCY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."WYK�ADOWCY_PK" ON "UniversityDB"."WYK�ADOWCY" ("ID_PRAC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WYDZIALY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."WYDZIALY_PK" ON "UniversityDB"."WYDZIALY" ("ID_W") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STYPENDIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."STYPENDIA_PK" ON "UniversityDB"."STYPENDIA" ("ID_STY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STUDENCI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."STUDENCI_PK" ON "UniversityDB"."STUDENCI" ("ID_S") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SALE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."SALE_PK" ON "UniversityDB"."SALE" ("ID_SALI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRZEDMIOTY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."PRZEDMIOTY_PK" ON "UniversityDB"."PRZEDMIOTY" ("ID_PRZED") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRACOWNICY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UniversityDB"."PRACOWNICY_PK" ON "UniversityDB"."PRACOWNICY" ("ID_PRAC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Synonymn DZIALY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE SYNONYM "UniversityDB"."DZIALY" FOR "UniversityDB"."DEPARTMENTS";
--------------------------------------------------------
--  Constraints for Table KATEDRY
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."KATEDRY" ADD CONSTRAINT "KATEDRY_PK" PRIMARY KEY ("ID_KAT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."KATEDRY" MODIFY ("ID_KAT" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."KATEDRY" MODIFY ("WYDZIALY_ID_W" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."KATEDRY" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."KATEDRY" MODIFY ("KIEROWNIK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRACOWNICY
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."PRACOWNICY" ADD CONSTRAINT "PRACOWNICY_PK" PRIMARY KEY ("ID_PRAC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."PRACOWNICY" MODIFY ("ID_PRAC" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."PRACOWNICY" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."PRACOWNICY" MODIFY ("DATA_ZATRUD" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."PRACOWNICY" MODIFY ("PENSJA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KIERUNKI
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."KIERUNKI" ADD CONSTRAINT "KIERUNKI_PK" PRIMARY KEY ("ID_K")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."KIERUNKI" MODIFY ("ID_K" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."KIERUNKI" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."KIERUNKI" MODIFY ("WYDZIALY_ID_W" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."KIERUNKI" MODIFY ("STOPIEN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WYK�ADOWCY
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."WYK�ADOWCY" MODIFY ("ID_PRAC" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."WYK�ADOWCY" MODIFY ("STOPIEN" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."WYK�ADOWCY" MODIFY ("SPECJALIZACJA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."WYK�ADOWCY" ADD CONSTRAINT "WYK�ADOWCY_PK" PRIMARY KEY ("ID_PRAC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRZEDMIOTY
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."PRZEDMIOTY" ADD CONSTRAINT "PRZEDMIOTY_PK" PRIMARY KEY ("ID_PRZED")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."PRZEDMIOTY" MODIFY ("ID_PRZED" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."PRZEDMIOTY" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."PRZEDMIOTY" MODIFY ("ECTS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KIER_PRZE
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."KIER_PRZE" ADD CONSTRAINT "KIER_PRZE_PK" PRIMARY KEY ("PRZEDMIOTY_ID_PRZED", "KIERUNKI_ID_K")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."KIER_PRZE" MODIFY ("KIERUNKI_ID_K" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."KIER_PRZE" MODIFY ("PRZEDMIOTY_ID_PRZED" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STYPENDIA
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."STYPENDIA" ADD CONSTRAINT "STYPENDIA_PK" PRIMARY KEY ("ID_STY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."STYPENDIA" MODIFY ("ID_STY" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."STYPENDIA" MODIFY ("RODZAJ" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."STYPENDIA" MODIFY ("KWOTA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."STYPENDIA" MODIFY ("STUDENCI_ID_S" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LEGITYMACJE
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."LEGITYMACJE" ADD CONSTRAINT "LEGITYMACJE_PK" PRIMARY KEY ("ID_L")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."LEGITYMACJE" MODIFY ("ID_L" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."LEGITYMACJE" MODIFY ("DATA_WYDANIA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."LEGITYMACJE" MODIFY ("DATA_WAZNOSCI" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."LEGITYMACJE" MODIFY ("STUDENCI_ID_S" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."SALE" ADD CONSTRAINT "SALE_PK" PRIMARY KEY ("ID_SALI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."SALE" MODIFY ("ID_SALI" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."SALE" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."SALE" MODIFY ("POJEMNOSC" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."SALE" MODIFY ("CZY_PROJEKTOR" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."SALE" MODIFY ("BUDYNKI_ID_B" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRZE_SAL
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."PRZE_SAL" MODIFY ("PRZEDMIOTY_ID_PRZED" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."PRZE_SAL" MODIFY ("SALE_ID_SALI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENCI
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."STUDENCI" ADD CONSTRAINT "STUDENCI_PK" PRIMARY KEY ("ID_S")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."STUDENCI" MODIFY ("ID_S" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."STUDENCI" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."STUDENCI" MODIFY ("DATA_URODZ" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."STUDENCI" MODIFY ("MAIL" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."STUDENCI" MODIFY ("KIERUNKI_ID_K" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BUDYNKI
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."BUDYNKI" ADD CONSTRAINT "BUDYNKI_PK" PRIMARY KEY ("ID_B")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UniversityDB"."BUDYNKI" MODIFY ("ID_B" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."BUDYNKI" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."BUDYNKI" MODIFY ("ADRES" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WYDZIALY
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."WYDZIALY" MODIFY ("ID_W" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."WYDZIALY" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."WYDZIALY" MODIFY ("DYREKTOR_STUD" NOT NULL ENABLE);
  ALTER TABLE "UniversityDB"."WYDZIALY" ADD CONSTRAINT "WYDZIALY_PK" PRIMARY KEY ("ID_W")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KATEDRY
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."KATEDRY" ADD CONSTRAINT "KATEDRY_WYDZIALY_FK" FOREIGN KEY ("WYDZIALY_ID_W")
	  REFERENCES "UniversityDB"."WYDZIALY" ("ID_W") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KIER_PRZE
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."KIER_PRZE" ADD CONSTRAINT "KIER_PRZE_KIERUNKI_FK" FOREIGN KEY ("KIERUNKI_ID_K")
	  REFERENCES "UniversityDB"."KIERUNKI" ("ID_K") ENABLE;
  ALTER TABLE "UniversityDB"."KIER_PRZE" ADD CONSTRAINT "KIER_PRZE_PRZEDMIOTY_FK" FOREIGN KEY ("PRZEDMIOTY_ID_PRZED")
	  REFERENCES "UniversityDB"."PRZEDMIOTY" ("ID_PRZED") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KIERUNKI
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."KIERUNKI" ADD CONSTRAINT "KIERUNKI_WYDZIALY_FK" FOREIGN KEY ("WYDZIALY_ID_W")
	  REFERENCES "UniversityDB"."WYDZIALY" ("ID_W") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LEGITYMACJE
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."LEGITYMACJE" ADD CONSTRAINT "LEGITYMACJE_STUDENCI_FK" FOREIGN KEY ("STUDENCI_ID_S")
	  REFERENCES "UniversityDB"."STUDENCI" ("ID_S") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRZE_SAL
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."PRZE_SAL" ADD CONSTRAINT "PRZE_SAL_PRZEDMIOTY_FK" FOREIGN KEY ("PRZEDMIOTY_ID_PRZED")
	  REFERENCES "UniversityDB"."PRZEDMIOTY" ("ID_PRZED") ENABLE;
  ALTER TABLE "UniversityDB"."PRZE_SAL" ADD CONSTRAINT "PRZE_SAL_SALE_FK" FOREIGN KEY ("SALE_ID_SALI")
	  REFERENCES "UniversityDB"."SALE" ("ID_SALI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."SALE" ADD CONSTRAINT "SALE_BUDYNKI_FK" FOREIGN KEY ("BUDYNKI_ID_B")
	  REFERENCES "UniversityDB"."BUDYNKI" ("ID_B") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENCI
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."STUDENCI" ADD CONSTRAINT "STUDENCI_KIERUNKI_FK" FOREIGN KEY ("KIERUNKI_ID_K")
	  REFERENCES "UniversityDB"."KIERUNKI" ("ID_K") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STYPENDIA
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."STYPENDIA" ADD CONSTRAINT "STYPENDIA_STUDENCI_FK" FOREIGN KEY ("STUDENCI_ID_S")
	  REFERENCES "UniversityDB"."STUDENCI" ("ID_S") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WYK�ADOWCY
--------------------------------------------------------

  ALTER TABLE "UniversityDB"."WYK�ADOWCY" ADD CONSTRAINT "WYK�ADOWCY_KATEDRY_FK" FOREIGN KEY ("KATEDRY_ID_KAT")
	  REFERENCES "UniversityDB"."KATEDRY" ("ID_KAT") ENABLE;
  ALTER TABLE "UniversityDB"."WYK�ADOWCY" ADD CONSTRAINT "WYK�ADOWCY_PRACOWNICY_FK" FOREIGN KEY ("ID_PRAC")
	  REFERENCES "UniversityDB"."PRACOWNICY" ("ID_PRAC") ENABLE;
