-- 03_results.sql
-- Resultado 1: lista de nomes (uma linha por nome) com a inicial da profissão
SELECT CONCAT(name, ' (', SUBSTR(occupation,1,1), ')') AS formatted_name
FROM default.OCCUPATIONS
ORDER BY name;

-- Resultado 1 (opcional): juntar tudo numa única string com ", and" - use se quiser
WITH formatted AS (
  SELECT name, concat(name, ' (', upper(substr(occupation,1,1)), ')') AS fn
  FROM default.OCCUPATIONS
),
ordered AS (
  SELECT fn
  FROM formatted
  ORDER BY name
),
agg AS (
  SELECT collect_list(fn) AS names_arr
  FROM ordered
)
SELECT
  CASE
    WHEN size(names_arr) = 1 THEN element_at(names_arr,1)
    WHEN size(names_arr) = 2 THEN concat(element_at(names_arr,1), ' and ', element_at(names_arr,2))
    ELSE concat(concat_ws(', ', slice(names_arr, 1, size(names_arr)-1)), ', and ', element_at(names_arr, size(names_arr)))
  END AS names_list
FROM agg;

-- Resultado 2: contagem por ocupação no formato pedido e ordenado
SELECT concat('There are a total of ', cnt, ' ', lower(occupation), 's.') AS summary
FROM (
  SELECT occupation, count(*) AS cnt
  FROM default.OCCUPATIONS
  GROUP BY occupation
) t
ORDER BY cnt ASC, occupation ASC;
