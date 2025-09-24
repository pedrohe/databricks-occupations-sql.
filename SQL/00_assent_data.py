from pyspark.sql import SparkSession

# Sample data 
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

# Define schema
columns = ["Name", "Occupation"]

# Create DataFrame
df = spark.createDataFrame(data, columns)

df.write.mode("overwrite").saveAsTable("occupation")
df.show()
