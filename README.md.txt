# 📊 Databricks - OCCUPATIONS SQL 🎓

Bem-vindo(a) ao repositório!  
Aqui você encontra **scripts SQL** para manipular a tabela `OCCUPATIONS` no **Databricks Free Edition**, resolvendo um desafio clássico de consultas em SQL.  

---

## 🗂️ Estrutura do repositório

- `01_create_tables.sql` ➡️ Cria tabelas auxiliares:
  - `Occupation_Map` (mapeia letras para profissões)
  - `Names_Raw` (filtra só os nomes do arquivo original)
- `02_clean_data.sql` ➡️ Limpa os dados:
  - Extrai **nome sem parênteses**
  - Pega a **inicial da profissão**
  - Cria a tabela final `OCCUPATIONS` juntando tudo com `JOIN`
- `03_results.sql` ➡️ Faz as consultas finais:
  - Lista todos os nomes em ordem alfabética com a inicial da profissão  
  - Conta quantas pessoas há em cada profissão, no formato pedido

---

## 📝 Exemplo de entrada (arquivo `output000.txt`)

```text
Aamina(D)
Ashley(P)
Belvet(P)
...
There are a total of 3 doctors.
There are a total of 4 actors.
There are a total of 4 singers.
There are a total of 7 professors.
