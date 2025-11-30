# Supply Chain Profitability & Inventory Optimization

## 📊 Project Overview
This project analyzes retail supply chain data to identify profitability leaks and optimize logistics operations. 
By leveraging an ETL pipeline and SQL analysis, I identified a **15% margin leak** in specific sub-categories and visualized shipping efficiency to guide operational strategy.

![Dashboard Preview](dashboard_screenshot.png)

## 🛠️ Tech Stack
* **Python (Pandas, SQLAlchemy):** Automated ETL pipeline to clean and load raw CSV data into MySQL.
* **SQL (MySQL):** Performed ABC Analysis and profitability calculations.
* **Power BI:** Built interactive dashboards to visualize regional performance and shipping trends.

## 🔍 Key Insights
1.  **Profitability Leaks:** Identified specific sub-categories (Tables, Bookcases) causing negative margins despite high sales volume.
2.  **Shipping Efficiency:** Analyzed shipping modes to recommend logicstics cost reductions for non-urgent deliveries.
3.  **Regional Performance:** Mapped profit distribution across the US to pinpoint underperforming markets.

## 📂 Project Structure
* `etl_pipeline.py`: Python script for data extraction and loading.
* `analysis_queries.sql`: SQL scripts used for business logic and KPI generation.
* `dashboard_screenshot.png`: Preview of the Power BI report.