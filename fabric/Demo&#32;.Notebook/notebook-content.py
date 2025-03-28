# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "d6ab2ee6-bcee-4055-9e4c-3dcf82737cd9",
# META       "default_lakehouse_name": "Demo",
# META       "default_lakehouse_workspace_id": "2ebd8d87-17a1-4053-b564-7982dd6df866"
# META     }
# META   }
# META }

# CELL ********************

df = spark.sql("SELECT * FROM Demo.sales LIMIT 1000")
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import pandas as pd 

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df.write.partitionBy("CustomerName").mode("overwrite").parquet("Files/Sales")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************



import pandas as pd
# Load data into pandas DataFrame from "/lakehouse/default/Files/data/sales.csv"
df = pd.read_csv("/lakehouse/default/Files/data/sales.csv")
display(df)


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df = spark.sql("SELECT * FROM Demo.product LIMIT 1000")
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df = spark.read.format("csv").option("header","true").load("Files/data/sales.csv")
# df now is a Spark DataFrame containing CSV data from "Files/data/sales.csv".
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************



import pandas as pd
# Load data into pandas DataFrame from "/lakehouse/default/Files/Sales/CustomerName=Aaron Foster/part-00000-21e4ce44-abae-41e7-bb38-fa5fd8c47f33.c000.snappy.parquet"
df = pd.read_parquet("/lakehouse/default/Files/Sales/CustomerName=Aaron Foster/part-00000-21e4ce44-abae-41e7-bb38-fa5fd8c47f33.c000.snappy.parquet")
display(df)


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
