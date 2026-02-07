# 🎓 University Database Management System (Oracle SQL)

## 📌 O projekcie
Projekt przedstawia kompletną strukturę relacyjnej bazy danych przeznaczonej do zarządzania procesami na uczelni wyższej. Został zaprojektowany z myślą o skalowalności oraz integralności danych, wykorzystując zaawansowane funkcje systemu **Oracle Database**.

Projekt łączy w sobie rygorystyczne podejście do modelowania danych (DDL) z praktycznym zastosowaniem analitycznym (Views).

## 📂 Struktura Projektu

Repozytorium zawiera następujące moduły:

1.  **`RaportBazyDanych.docx`** – Kompleksowy raport z realizacji projektu. Zawiera:
    - **Widok encji i relacyjny**: Graficzne przedstawienie struktury bazy.
    - **Opis logiki biznesowej**: Wyjaśnienie, dlaczego wybrano takie, a nie inne powiązania.
    - **Komentarze analityczne**: Szczegółowe omówienie wyników każdego ze scenariuszy.
2.  **`schema.sql`** – Definicje struktur tabel (DDL). Zawiera kompletną logikę kluczy głównych (PK), obcych (FK) oraz więzów integralności.
3.  **`insert_data.sql`** – Skrypt zasilający bazę danymi testowymi (DML) wraz z sekwencjami.
4.  **`views.sql`** – Warstwa analityczna (9 zaawansowanych widoków SQL).
5.  **`exportUczelniaDB.sql`** – Pełny zrzut bazy do natychmiastowego importu (Oracle SQL Developer / Data Modeler).

## 📊 Dokumentacja i Modelowanie
W pliku **`RaportBazyDanych.docx`** znajduje się pełna analiza teoretyczna projektu. Skupiłem się w niej na:
- **Normalizacji bazy**: Zapewnieniu braku redundancji danych.
- **Weryfikacji relacji**: Szczegółowym opisie tabel łączących (N:M) dla Kierunków i Przedmiotów.
- **Interpretacji wyników**: Raport wyjaśnia, jak otrzymane dane z widoków (Views) mogą wspierać decyzje dyrekcji uczelni (np. optymalizacja obłożenia budynków).

## 🏗️ Model Relacyjny (ERD)
Baza danych składa się z 13 powiązanych tabel, obsługujących relacje:
- **1:1**: Studenci ↔ Legitymacje (ścisła kontrola dokumentów).
- **1:N**: Wydziały ↔ Kierunki, Budynki ↔ Sale.
- **N:M**: Kierunki ↔ Przedmioty (zrealizowane za pomocą tabel łączących).



## 📈 Przykładowe Scenariusze Analityczne (Views)
W przeciwieństwie do zwykłych zapytań `SELECT`, w projekcie postawiłem na tworzenie **widoków (Views)**, co symuluje rzeczywiste środowisko raportowe:

* **Zarządzanie infrastrukturą (Scenariusz 8):** Wykorzystanie **podzapytania nieskorelowanego** oraz klauzuli `HAVING` do identyfikacji budynków o największym obłożeniu (pojemność > 100).
* **Weryfikacja studentów (Scenariusz 6):** Zastosowanie **podzapytania skorelowanego** w celu wyfiltrowania studentów, których program studiów jest szczególnie wymagający (liczba przedmiotów > 3).
* **Monitoring statusów (Scenariusz 1):** Automatyczna kontrola ważności legitymacji przy użyciu logiki `CASE` i dat systemowych (`SYSDATE`).

## 🛠️ Technologie
- **RDBMS:** Oracle Database 11g / 21c
- **Narzędzia:** Oracle SQL Developer, Data Modeler
- **Standard:** PL/SQL kompatybilny ze standardem korporacyjnym

## 🚀 Jak uruchomić?
Aby przetestować projekt lokalnie:
1. Otwórz **Oracle SQL Developer**.
2. Skopiuj zawartość pliku `exportUczelniaDB.sql`.
3. Uruchom jako skrypt (F5).
4. Wszystkie tabele, relacje, dane i widoki zostaną automatycznie wygenerowane.
