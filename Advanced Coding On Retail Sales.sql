-- Databricks notebook source
USE brightlearn.data;

-- 1. Which product categories generated more than 150,000 in total sales? 
SELECT `Product Category`,
SUM(`Total Amount`) AS total_sales
FROM retail_sales
GROUP BY `Product Category`
HAVING total_sales > 150000;


-- 2. Which genders generated an average transaction value above 300? 
SELECT Gender,
        AVG(`Total Amount`) AS avg_transaction
FROM retail_sales
GROUP BY Gender
HAVING avg_transaction > 300;


-- 3. Find the top 5 customers with the highest total spending. 
SELECT `Customer ID`,
        `Total Amount`
FROM retail_sales
ORDER BY `Total Amount` DESC
LIMIT 5;

-- 4. Which product categories have more than 300 transactions? 
SELECT `Product Category`,
        COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY `Product Category`
HAVING total_transactions > 300;

-- 5. What is the highest sale amount recorded for each product category?
SELECT DISTINCT `Product Category`,
                MAX(`Total Amount`) AS highest_sale
FROM retail_sales
GROUP BY `Product Category`;

-- 6. Find the minimum sale amount for each gender.  
SELECT DISTINCT Gender,
                MIN(`Total Amount`) AS minimum_sale
FROM retail_sales
GROUP BY Gender;

-- 7. Show categories where the average quantity sold is greater than 2. 
SELECT `Product Category`,
        AVG(Quantity) AS avg_quantity
FROM retail_sales
GROUP BY `Product Category`
HAVING avg_quantity > 2;

-- 8. Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.
SELECT SUM(`Total Amount`) AS total_sales
FROM retail_sales
WHERE `Product Category` IN ('Beauty','Clothing') AND Age BETWEEN 25 AND 40;

-- 9. Which product categories have a maximum sale amount greater than 1000? 
SELECT `Product Category`,
        MAX(`Total Amount`) AS highest_max_sale
FROM retail_sales
GROUP BY `Product Category`
HAVING highest_max_sale >1000;

-- 10. Show the top 3 categories by average sales value, excluding customers under 25.
SELECT `Product Category`,
AVG(`Total Amount`) AS avg_sales
FROM retail_sales
WHERE Age >25
GROUP BY `Product Category`;


--

--Display all records in the retail sales table.
--Display only the Customer_ID and Product_Category columns. 
--Display all Electronics sales transactions. 
--Display customers who are older than 40 years. 
--Display transactions where the quantity purchased is 3 or more. 
--Display Beauty product sales where the total amount is greater than 100.
--Display customers whose ages are between 25 and 35. 
--Calculate the total sales amount for all transactions. 
--Calculate the average age of all customers. 
--Find the highest sale amount recorded. 
--Count the total number of transactions. 
--Calculate total sales for each product category. 
--Calculate the average age for each gender. 
--Display all transactions from highest to lowest sales amount. 
--Display all customers from youngest to oldest.  
--Display product categories whose total sales exceed 50,000. 
--Display genders with more than 400 transactions.  
--Display the first 10 records from the table. 
--Display the top 5 highest sales transactions. 
--Display the top 3 product categories by total sales where sales exceed 10,000.
