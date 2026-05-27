-- Total Revenue
SELECT SUM(`Total Amount`) AS Total_Revenue
FROM retail_sales;

-- Top Product Categories
SELECT `Product Category`,
       SUM(`Total Amount`) AS Revenue
FROM retail_sales
GROUP BY `Product Category`
ORDER BY Revenue DESC;

-- Top Customers
SELECT `Customer ID`,
       SUM(`Total Amount`) AS Total_Spent
FROM retail_sales
GROUP BY `Customer ID`
ORDER BY Total_Spent DESC
LIMIT 10;

-- Revenue by Gender
SELECT Gender,
       SUM(`Total Amount`) AS Revenue
FROM retail_sales
GROUP BY Gender;

-- Average Customer Age
SELECT AVG(Age) AS Average_Age
FROM retail_sales;

-- Highest Quantity Products
SELECT `Product Category`,
       SUM(Quantity) AS Total_Quantity
FROM retail_sales
GROUP BY `Product Category`
ORDER BY Total_Quantity DESC;