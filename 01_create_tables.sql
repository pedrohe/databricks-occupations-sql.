-- 01_create_tables.sql
-- Cria a tabela de mapeamento e a tabela de nomes crus (sem os totais)

-- Tabela auxiliar que mapeia a letra para profissão
CREATE OR REPLACE TABLE default.Occupation_Map AS
SELECT 'A' AS initial, 'Actor' AS occupation UNION ALL
SELECT 'D', 'Doctor' UNION ALL
SELECT 'P', 'Professor' UNION ALL
SELECT 'S', 'Singer';

-- Confirma (visualizar)
SELECT * FROM default.Occupation_Map;

-- Cria uma cópia da tabela original contendo apenas as linhas de nomes
CREATE OR REPLACE TABLE default.Names_Raw AS
SELECT value
FROM default.output_000
WHERE value NOT LIKE 'There are a total%';

-- Visualizar todos os 18 nomes
SELECT * FROM default.Names_Raw LIMIT 18;
