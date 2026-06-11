USE pizza_sales;


-- =============================== KPI's ===================================================
-- Q1. Total Orders 
SELECT 
	COUNT(order_id) AS total_orders 
FROM sales ;

-- Q2. What is the total revenue ?
SELECT 
	ROUND(
		SUM(total_price)
		, 2
		) AS total_revenue
FROM sales;

-- Q3. What is the average order value ?
SELECT 
	ROUND(
	 CAST(SUM(total_price) AS FLOAT) / CAST(COUNT(DISTINCT order_id) AS FLOAT)
	 , 2
	 ) AS avg_order_value
FROM sales ;

-- Q4. What is the total pizza sold ?
SELECT 
  SUM(quantity) AS total_pizza_sold
FROM sales ;

-- Q5. Total Orders ?
SELECT 
	COUNT(DISTINCT order_id) AS total_orders 
FROM sales;

-- Q6. What is the avg pizza per order ?
SELECT 
	ROUND(
			CAST(SUM(quantity) AS FLOAT) 
					/ 
			CAST(COUNT(DISTINCT order_id) AS FLOAT) 
	        , 2
		 )   AS avg_pizza_per_order
FROM sales ;

-- ====================================== DAILY TRENDS -- TREND ANALYSIS =====================================
-- Q1. What is the daily pizza trend ?
SELECT
    DATENAME(WEEKDAY, order_date) AS day_name,
    COUNT(DISTINCT order_id) AS pizza_orders
FROM sales
GROUP BY DATENAME(WEEKDAY, order_date)
ORDER BY day_name DESC;

-- Q2. What is the Monthly Pizza Order Trend ?
SELECT 
	MONTH(order_date) AS Month_Number,
	FORMAT(order_date, 'MMM') AS Month_Name,
	COUNT(DISTINCT order_id) AS Total_Orders 
FROM sales 
GROUP BY FORMAT(order_date, 'MMM'), MONTH(order_date)
ORDER BY Month_Number ASC;

-- Q3. % of sales by pizza category ?
WITH pct_sales AS 
(
    SELECT 
        pizza_category,
        ROUND(SUM(total_price), 2) AS total_sales
    FROM sales 
    GROUP BY pizza_category
)
SELECT 
    pizza_category,
    total_sales,
    ROUND(
        total_sales * 100.0 / SUM(total_sales) OVER(),
        2
    ) AS [%_sales]
FROM pct_sales;

-- Q4. What is the total pizza sold by pizza category ?
SELECT TOP(10)
  pizza_category , 
  SUM(quantity) AS sold_quantity 
FROM sales 
GROUP BY pizza_category
ORDER BY sold_quantity DESC;

-- Q5. What are the Top 5 pizza by Revenue ?
SELECT TOP(5)
	pizza_name , 
	SUM(total_price) AS revenue 
FROM sales 
GROUP BY pizza_name
ORDER BY revenue DESC;

-- Q6. What are the worst pizza by revenue ?
SELECT TOP(5)
   pizza_name , 
   SUM(total_price) AS revenue 
FROM sales 
GROUP BY pizza_name 
ORDER BY revenue ASC;

-- Q7. What are the Top 5 pizza by quantity ?
SELECT TOP(5)
   pizza_name , 
   SUM(quantity) AS sold_quantity
FROM sales 
GROUP BY pizza_name
ORDER BY sold_quantity DESC;


-- Q8. What are the Bottom 5 pizza by quantity ?
SELECT TOP(5)
	pizza_name , 
	SUM(quantity) AS sold_quantity 
FROM sales 
GROUP BY pizza_name 
ORDER BY sold_quantity ASC;

-- Q9. What are the Top 5 pizza by Total Orders ?
SELECT TOP(5)
	pizza_name , 
	COUNT(DISTINCT order_id) AS total_orders 
FROM sales 
GROUP BY pizza_name
ORDER BY total_orders DESC;

-- Q10. What are the worst pizza by total orders ?
SELECT TOP(5)
	pizza_name ,
	COUNT(DISTINCT order_id) AS total_orders
FROM sales 
GROUP BY pizza_name 
ORDER BY total_orders ASC;


-- Q11. How many pizza are orders in a perticular category ?
SELECT 
	pizza_name ,
	pizza_category , 
	COUNT(DISTINCT order_id) AS total_orders
FROM sales 
GROUP BY pizza_name , pizza_category
ORDER BY  pizza_category ASC ;

-- Q12. Pizza Size Analysis ?
SELECT 
	pizza_size , 
	SUM(quantity) AS qty_sold
FROM sales 
GROUP BY pizza_size 
ORDER BY qty_sold DESC;


-- Category wise pizza size analysis ?
SELECT 
  pizza_size , 
  COUNT(DISTINCT order_id) AS total_orders
FROM sales 
GROUP BY pizza_size
ORDER BY total_orders DESC ; 

