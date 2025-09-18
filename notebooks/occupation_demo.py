#Atribuir a linguagem utilizada
%python
#Importando a seção spark para poder usar o PYSPARK (Ingestão de DATA)
from pyspark.sql import SparkSession

# Criando os Banco de dados
data = [
    ("Samantha", "Doctor"),
    ("Julia", "Actor"),
    ("Maria", "Actor"),
    ("Meera", "Singer"),
    ("Ashely", "Professor"),
    ("Ketty", "Professor"),
    ("Christeen", "Professor"),
    ("Jane", "Actor"),
    ("Jenny", "Doctor"),
    ("Priya", "Singer")
]

# Deinindo os nomes das COLUMNS (Define Schema)
columns = ["Name", "Occupation"]

# Criando um DataFrame Spark (df.)
df = spark.createDataFrame(data, columns)

df.write.mode("overwrite").saveAsTable("occupation")
df.show()

