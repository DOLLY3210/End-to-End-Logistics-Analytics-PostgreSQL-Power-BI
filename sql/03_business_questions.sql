-- File    : 04_business_questions.sql
-- Purpose : Queries that answer the business questions

-- Q3: How many orders does each region generate?
SELECT region, COUNT(order_id) AS total_order
FROM logistics
GROUP BY region
ORDER BY total_order DESC;

-- Q4: How much do the regions sell?
SELECT region, SUM(sales) AS total_sales
FROM logistics
GROUP BY region
ORDER BY total_sales ASC;

-- Extra: shipping cost by region (matches the dashboard bar chart)
SELECT region, SUM(shipping_cost) AS total_shipping_cost
FROM logistics
GROUP BY region
ORDER BY total_shipping_cost DESC;

-- Q8: Which regions have the worst delivery delays?
SELECT
    region,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(actual_delivery_days), 2) AS avg_delivery_days
    FROM logistics
GROUP BY region
ORDER BY late_delivery_pct DESC;


