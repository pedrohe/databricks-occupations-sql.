# Databricks - OCCUPATIONS SQL

Scripts SQL para processar o arquivo `output000.txt` no Databricks Free Edition.

Arquivos:
- `01_create_tables.sql` — cria tabelas auxiliares (Occupation_Map, Names_Raw).
- `02_clean_data.sql` — limpa strings e cria a tabela final `OCCUPATIONS`.
- `03_results.sql` — queries com os resultados pedidos (lista e contagens).

Como rodar (Databricks):
1. Faça upload do `output000.txt` no Data → Add Data → Upload File (path: /FileStore/tables/ ou tabela `default.output_000`).
2. Abra SQL Editor e rode os scripts na ordem:
   - `01_create_tables.sql`
   - `02_clean_data.sql`
   - `03_results.sql`

Observações:
- Se a coluna da sua tabela original não for `value`, substitua `value` pelo nome correto.
- Se for preciso autenticar o `git push`, use um Personal Access Token (PAT) do GitHub.
