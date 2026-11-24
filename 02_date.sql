-- =====================================================
-- Proiect: Sala de fitness – baza de date
-- Fisier: 02_date.sql – date de test
-- Se ruleaza dupa 01_schema.sql
-- =====================================================

USE sala_fitness;

INSERT INTO ANTRENORI (nume_antrenor) VALUES
('Calin Popescu'),
('Andrei Zarnescu');

-- Cosmin Sirnea nu are antrenor (id_antrenor = NULL)
INSERT INTO MEMBRI (nume, id_antrenor) VALUES
('Alin Cozma', 1),
('Andrei Ilie', 2),
('Cosmin Sirnea', NULL);

INSERT INTO ABONAMENTE (id_membru, tip, pret, data_inceput, data_sfarsit) VALUES
(1, 'lunar',       200,  '2026-11-24', '2026-12-23'),
(2, 'trimestrial', 500,  '2026-11-24', '2027-02-23'),
(3, 'anual',       2100, '2026-11-24', '2027-11-24'),
(1, 'lunar',       200,  '2026-10-24', '2026-11-23'),
(3, 'lunar',       200,  '2026-10-24', '2026-11-23');
