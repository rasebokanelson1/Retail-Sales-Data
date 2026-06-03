-- Databricks notebook source
USE brightlearn.data;

-- COMMAND ----------

SELECT *
FROM retail_sales;

-- COMMAND ----------

--Display only the customer ID and product category columns
SELECT `Customer ID`,
`Product Category`
FROM retail_sales;

-- COMMAND ----------

--Display all electronic transactions
SELECT *
FROM retail_sales
WHERE `Product Category` = 'Electronics';


-- COMMAND ----------

--Display transactions where the quantity purchased is 3 or more
SELECT *
FROM retail_sales
WHERE Quantity >3;

-- COMMAND ----------

--Display Beauty products sales where the total amount is greater than 100
SELECT *
FROM retail_sales
WHERE `Product Category` = 'Beauty' AND `Total Amount` > 100;


-- COMMAND ----------

--Display customers whose ages are between 25 and 35
SELECT*
FROM retail_sales
WHERE Age BETWEEN 25 AND 35;

-- COMMAND ----------

--Calculate the total sales amount for all transactions
SELECT SUM(`Total Amount`) AS total_transactions
FROM retail_sales;

