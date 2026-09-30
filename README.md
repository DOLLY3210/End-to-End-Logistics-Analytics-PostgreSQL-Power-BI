# Global Logistics Analytics 

## Business Context & Core Objective
This repository contains a full-stack data analytics solution designed to audit global logistics throughput, 
evaluate carrier performance, and isolate critical Supply Chain service level agreement (SLA) bottlenecks. 
By pairing relational database auditing with interactive business intelligence reporting, 
this project translates raw order grids into actionable business strategies.

---

## Technology & Architecture Stack
 Database Engine: PostgreSQL (Relational Data Modeling & Structured Queries)
 Business Intelligence Platform: Microsoft Power BI Desktop (Interactive UX Design)
 Version Control: Git & GitHub

---

## Strategic KPIs & Data Integrity Verification
To ensure absolute data modeling integrity, every high-level dashboard visual is verified against backend relational database calculations.

| KPI Dimension | Power BI Dashboard Value | Verified PostgreSQL Relational Output | Data Integrity Status |

| **Global Throughput Volume** | 100.000 Total Orders | `100000` | 🟢 100% Aligned 
| **Gross Commercial Yield** | € 10.105.352,82 Total Sales | `10105352.82` | 🟢 100% Aligned |
| **Total Logistic Expense** | € 1.247.008,58 Shipping Cost | `1247008.58` | 🟢 100% Aligned |
| **Carrier Freight Lead Time** | 5.70 Average Days | `5.70` | 🟢 100% Aligned |
| **Logistics SLA Compliance** | 69.92% On-Time Delivery | `69.92%` (Actual Delivery <= 7 Days) | 🟢 100% Aligned |

---

##  Advanced SQL Query Warehouse
```sql
-- ====================================================================
-- GLOBAL SUPPLY CHAIN OPERATIONS 
-- Purpose: Extract Executive-Level Logistics KPIs for SLA Optimization
-- ====================================================================

-- KPI 01: Audit Overall Dataset Operational Throughput Volume
SELECT COUNT(order_id) AS total_order 
FROM logistics;

-- KPI 02: Calculate Total Commercial Revenue Value Passed Through Grid
SELECT SUM(sales) AS total_sales 
FROM logistics;

-- KPI 03: Verify Global Shipping Cost KPI
SELECT SUM(shipping_cost) AS total_shipping_cost 
FROM logistics;

-- KPI 04: Evaluate Average Carrier Freight Lead Time (Days)
SELECT ROUND(AVG(Delivery_Date - Order_Date), 2) AS average_delivery_time_in_days 
FROM logistics;

-- KPI 05: Assess Premium Logistics Service Level Agreement (SLA) Matrix
SELECT 
    COUNT(Order_ID) AS total_orders,
    ROUND(COUNT(*) FILTER (WHERE Actual_Delivery_Days <= 7) * 100.0 / COUNT(*), 2) AS on_time_orders 
FROM logistics;

-- KPI 06: Aggregate Regional Distribution Volume (Throughput Rank)
SELECT 
    region, 
    COUNT(order_id) AS total_order 
FROM logistics
GROUP BY region
ORDER BY total_order DESC;

-- KPI 07: Measure Regional Gross Sales Financial Yield 
SELECT 
    region, 
    SUM(sales) AS total_sales 
FROM logistics
GROUP BY region
ORDER BY total_sales DESC;
```

---

## 💡 Executive Insights & Operational Action Plan
1. **Critical SLA Failures:** The current global On-Time Delivery (OTD) rate sits at an underperforming **69.92%**, failing to meet standard corporate distribution benchmarks. 
2. **Regional Bottlenecks:** While the **East** and **North** regions generate high commercial gross sales yield, they suffer from the longest delivery delays, hurting customer retention.
3. **Carrier Re-negotiation:** Premium shipping modes require immediate cost-benefit optimization, as high-paying priority clients are facing systemic shipping bottlenecks.
