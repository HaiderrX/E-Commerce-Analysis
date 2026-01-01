# E-Commerce-Analysis

📌 Project Description
This project focuses on analyzing real e‑commerce transactional data to understand customer behavior, order patterns, and business performance. Using SQL Server and Python, the goal is to build a reliable analytics foundation that supports KPI tracking, trend analysis, and future AI‑generated insights.
The work begins with loading raw CSV files into SQL Server, modeling the relationships between customers and their orders, and performing exploratory analysis to uncover meaningful patterns in purchasing behavior.

<a href="https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce/data?select=olist_customers_dataset.csv">Kaggle Dataset Description</a>

📦 Dataset (Phase 1 Only)
Using the Olist e‑commerce dataset, specifically the four core tables required for customer‑order analysis:
- olist_customers_dataset.csv — customer identifiers, location, and unique IDs
- olist_orders_dataset.csv — order-level information (timestamps, status, customer_id)
- olist_order_items_dataset.csv — items purchased per order (product_id, seller_id, price, freight)
- olist_order_payments_dataset.csv — payment type and payment value per order
These four files form the essential relational backbone for understanding how customers place orders and how those orders are fulfilled and paid for.

🛠️ Tools & Technologies
- SQL Server — storing raw data and building analytical models
- Python (pandas, numpy) — exploratory analysis and metric validation
- Jupyter Notebook — interactive analysis and documentation
- GitHub — version control and project tracking
(Additional tools like Power BI or AI agents will be added later as the project grows.)

🎯 Project Goals (Initial Phase)
- Load raw CSV files into SQL Server as clean, untouched source tables
- Establish relationships between customers, orders, items, and payments
- Explore customer and order behavior using SQL and Python
- Compute foundational KPIs such as revenue, order count, and AOV
- Build a clear, incremental analytics workflow that can expand over time
