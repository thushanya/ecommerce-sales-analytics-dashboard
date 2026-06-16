
--Total Revenue--
SELECT ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM online_retail;


--Total Orders--
SELECT COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_retail;


--Total Customers --
SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM online_retail;


--Top 10 Customers by Revenue--
SELECT CustomerID,
       ROUND(SUM(Revenue), 2) AS Revenue
FROM online_retail
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 10;


--Top 10 Products by Revenue--
SELECT Description,
       ROUND(SUM(Revenue), 2) AS Revenue
FROM online_retail
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;


--Revenue by Country--
SELECT Country,
       ROUND(SUM(Revenue), 2) AS Revenue
FROM online_retail
GROUP BY Country
ORDER BY Revenue DESC;


--Monthly Revenue Trend--
SELECT YEAR(InvoiceDate) AS Year,
       MONTH(InvoiceDate) AS Month,
       ROUND(SUM(Revenue), 2) AS Revenue
FROM online_retail
GROUP BY Year, Month
ORDER BY Year, Month;