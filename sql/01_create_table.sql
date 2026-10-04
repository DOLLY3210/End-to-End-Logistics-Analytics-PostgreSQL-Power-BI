-- Project : End-to-End Logistics Analytics (PostgreSQL + Power BI)
-- File    : 01_create_table.sql
-- Purpose : Create the logistics table and load the CSV file

DROP TABLE IF EXISTS logistics;

CREATE TABLE logistics (
    order_id              VARCHAR(20) PRIMARY KEY,
    order_date            DATE,
    ship_date             DATE,
    delivery_date         DATE,
    actual_delivery_days  INT,
    region                VARCHAR(20),
    shipping_mode         VARCHAR(20),
    sales                 DECIMAL(10,2),
    shipping_cost         DECIMAL(10,2)
);

-- Change the path to where you saved the CSV file
COPY logistics
FROM "C:\Users\marin\Desktop\PROJEKTS\End-to-End Logistics Analytics (PostgreSQL + Power BI)\repo\data\logistics_orders.csv"
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) AS total_rows FROM logistics;  -- expected: 100000

