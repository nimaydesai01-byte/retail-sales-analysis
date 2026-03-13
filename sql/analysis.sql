Create Table Sales:
CREATE TABLE sales (
order_id VARCHAR(50),
order_date DATE,
region VARCHAR(50),
category VARCHAR(50),
sub_category VARCHAR(50),
sales DECIMAL(10,2),
profit DECIMAL(10,2)
);

To Check Data:
SELECT *
FROM sales
LIMIT 10;

Total Sales:
SELECT SUM(sales) AS total_sales
FROM sales;

Revenue By Region:
SELECT region, SUM(sales) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

Profit By Category:
SELECT Category, SUM(Sales) AS total_sales
FROM train
GROUP BY Category
ORDER BY total_sales DESC;

Top Products:
SELECT sub_category, SUM(sales) AS sales
FROM sales
GROUP BY sub_category
ORDER BY sales DESC
LIMIT 10;

Monthly Sales:
SELECT MONTH(order_date) AS month,
SUM(sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;