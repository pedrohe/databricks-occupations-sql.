-- 02_clean_data.sql
-- Limpeza: extrai o nome sem parênteses e a letra inicial ,
-- depois junta com Occupation_Map para formar a tabela OCCUPATIONS.

-- Remove '(' que eventualmente sobrou e extrai name e initial
CREATE OR REPLACE TABLE default.Names_Clean AS
SELECT
  TRIM(REPLACE(SUBSTRING(value, 1, LENGTH(value)-3), '(', '')) AS name,
  SUBSTRING(value, LENGTH(value)-2, 1) AS initial
FROM default.Names_Raw;

-- Visualizar
SELECT * FROM default.Names_Clean LIMIT 18;

-- Cria a tabela final juntando a letra com a profissão
CREATE OR REPLACE TABLE default.OCCUPATIONS AS
SELECT n.name, o.occupation
FROM default.Names_Clean n
JOIN default.Occupation_Map o
  ON n.initial = o.initial;

-- Visualizar tabela final ordenada
SELECT * FROM default.OCCUPATIONS ORDER BY name;
