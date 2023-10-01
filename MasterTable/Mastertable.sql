CREATE TABLE Master_Table as
SELECT 
o.Date order_date,
pc.CategoryName category_name,
p.ProdName product_name,
p.Price product_price,
o.Quantity order_qty,
(o.Quantity*p.Price) total_sales,
c.CustomerEmail cust_email,
c.CustomerCity cust_city
FROM orders o
LEFT JOIN customers c ON o.CustomerID=c.CustomerID
LEFT JOIN products p ON p.ProdNumber=o.ProdNumber
LEFT JOIN product_category pc ON pc.CategoryID=p.Category
ORDER BY 1, 5 ASC
