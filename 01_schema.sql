-- =====================================================
-- Proiect: Sala de fitness – baza de date
-- Autor: Robert-Stefan Stroie
-- Fisier: 01_schema.sql – structura tabelelor
-- SGBD: MySQL
-- =====================================================

CREATE DATABASE IF NOT EXISTS sala_fitness;
USE sala_fitness;

-- Antrenorii salii (tabela fara chei straine -> se creeaza prima)
CREATE TABLE ANTRENORI(
    id_antrenor   INT AUTO_INCREMENT PRIMARY KEY,
    nume_antrenor VARCHAR(100) NOT NULL
);

-- Membrii salii
-- id_antrenor poate fi NULL: un membru nu este obligat sa aiba antrenor
CREATE TABLE MEMBRI(
    id_membru   INT AUTO_INCREMENT PRIMARY KEY,
    nume        VARCHAR(100) NOT NULL,
    id_antrenor INT,
    FOREIGN KEY (id_antrenor) REFERENCES ANTRENORI(id_antrenor)
);

-- Abonamentele cumparate
-- Relatie 1:N – un membru poate avea mai multe abonamente in timp,
-- de aceea cheia straina id_membru este in ABONAMENTE
CREATE TABLE ABONAMENTE(
    id_abonament INT AUTO_INCREMENT PRIMARY KEY,
    id_membru    INT NOT NULL,
    tip          VARCHAR(100) NOT NULL,
    pret         DECIMAL(10,2) NOT NULL,
    data_inceput DATE,
    data_sfarsit DATE,
    FOREIGN KEY (id_membru) REFERENCES MEMBRI(id_membru)
);
