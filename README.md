# End-to-End Logistics Analytics (PostgreSQL + Power BI)

I analyzed 100,000 shipping orders to answer three simple questions: **How much do we sell? How fast do we deliver? How many orders arrive late?**

I used **PostgreSQL** for the analysis and **Power BI** for the dashboard.

## Dashboard

![Logistics Dashboard](screenshots/dashboard_overview.png)

## Key Results

| KPI | Value |
|---|---|
| Total Sales | € 10,105,352.82 |
| Total Orders | 100,000 |
| Total Shipping Cost | € 1,247,008.58 |
| Average Delivery Time | 5.70 days |
| On-Time Delivery (within 7 days) | 69.92% |

## What I Found

- **30% of orders arrive late.** 30,084 of 100,000 orders took more than 7 days.
- **Lateness is the same in every region** (29.7% to 30.3%). It is a company-wide problem, not a regional one.
- **Sales are balanced.** Each region brings in about 25% of revenue.
- **Shipping is expensive.** It costs about 12% of sales (€ 1.25M). Same-Day orders cost the most (about € 53 per order).
- **Express and Same-Day orders are never late.**

## Business Questions

1. What is the total sales revenue?
2. How many total orders were placed?
3. How many orders does each region generate?
4. How much does each region contribute to sales?
5. What is the total shipping cost?
6. What is the average delivery time in days?
7. What percentage of orders are delivered on time (7-day limit)?
8. Which regions have the worst delivery delays?

## Project Structure

```
├── data/          logistics_orders.csv
├── sql/           01_create_table.sql
│                  02_data_checks.sql
│                  03_kpi_queries.sql
│                  04_business_questions.sql
├── dashboard/     logistics_dashboard.pbix
├── docs/          business_questions.docx, sql_queries.docx
└── screenshots/   dashboard and SQL result images
```

## Data Notes

- The `Shipping_Mode` column has four values: Standard, Express, Same-Day and **Late**. "Late" (30,084 orders, 8 to 16 days) is not a real shipping mode. It works like a delivery status, so I measured delays with `actual_delivery_days > 7`.
- No missing values and no duplicate order IDs.
- Orders cover January to December 2025.

## How to Run

1. Run `sql/01_create_table.sql` in PostgreSQL (change the CSV path first).
2. Run the other SQL files in order.
3. Open `dashboard/logistics_dashboard.pbix` in Power BI Desktop.

## Tools

PostgreSQL (pgAdmin) · Power BI · Excel
