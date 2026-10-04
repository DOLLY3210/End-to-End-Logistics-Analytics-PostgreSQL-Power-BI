-- File    : 03_kpi_queries.sql
-- Purpose : KPIs used in the Power BI dashboard

-- Total sales
SELECT SUM(sales) AS total_sales FROM logistics;

-- Total orders
SELECT COUNT(order_id) AS total_orders FROM logistics;

-- Total shipping cost
SELECT SUM(shipping_cost) AS total_shipping_cost FROM logistics;

-- Average delivery time in days
SELECT ROUND(AVG(delivery_date - order_date), 2) AS average_delivery_time_in_days
FROM logistics;

-- On-time delivery rate (OTD): delivered within 7 days
SELECT
    COUNT(order_id) AS total_orders,
    ROUND(COUNT(*) FILTER (WHERE actual_delivery_days <= 7) * 100.0 / COUNT(*), 2) AS on_time_orders
FROM logistics;

