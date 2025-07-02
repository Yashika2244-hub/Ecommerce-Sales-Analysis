
# 📊 E-Commerce Sales Analysis Dashboard

This project showcases a complete end-to-end Sales Analysis using **Excel, Python, MySQL, and Power BI**. It focuses on uncovering business insights from over $23M worth of transactions, using an automated ETL pipeline and interactive dashboards.

---

## 🚀 Project Overview

- **Domain**: E-Commerce / Sales Analytics  
- **Data Size**: $23M+ revenue | $3M+ profit | 222K+ units sold  
- **Tools Used**:  
  - 📗 Excel (Data Cleaning & Pivot Dashboard) -[Google Sheets Link](https://docs.google.com/spreadsheets/d/1E0GN0m0L9lk1svoyzDThRqQ1uMNXNnLyu2i3ox00OFs/edit?usp=sharing)
  - 🐍 Python (ETL Processing)  
  - 🐬 MySQL (Database Integration & Querying)  
  - 📈 Power BI (Interactive Dashboards & Visualizations)

---

## 🔧 Workflow Summary

### 1. **Data Cleaning (Excel)**
- Cleaned raw transactional data and standardized it for modeling.
- Created a **Master Table using XLOOKUP** for building Pivot Tables.
- Built an **initial dashboard** using Pivot Tables and Charts.

### 2. **Data Modeling**
- Separated datasets into **Fact** and **Dimension** tables.
- Defined relationships to support star schema modeling for reporting.

### 3. **ETL Pipeline (Python + MySQL)**
- Loaded cleaned Excel data into **Python**.
- Performed transformations and loaded it into **MySQL** database.
- Created relational schemas and indexed tables for optimized queries.

### 4. **Advanced SQL Analysis**
- Wrote **20+ SQL queries** including:
  - JOINs, CTEs, Subqueries
  - Window Functions (ROW_NUMBER, RANK)
  - Aggregations and CASE statements  
- Extracted key KPIs such as:
  - Year-over-Year Profit Growth (↑4.5%)
  - Average Profit Margin (11.28%, ↑5.37%)
  - Quantity Decline (↓7.29%)

### 5. **Power BI Dashboard**
- Developed **3 interactive dashboards**:
  - **Sales Overview**: KPIs, trends, category and customer analysis
  - **Profitability**: Margins, top-selling products, regional breakdown
  - **Details**: Geographic map, shipping method analysis, weekday trends
- Used filters, slicers, custom visuals, and drill-downs for rich insights.

---

## 📌 Key Business Insights

- 💰 **Highest Revenue Segment**: Consumer ($12M+)
- 🧾 **Top Product Category**: Office Supplies ($14M)
- 🧭 **Top Region**: West ($7.4M)
- 📦 **Most Used Shipping Type**: Standard Class (59.78%)
- 📈 **Weekday Sales** are 2.5x higher than Weekend Sales

---

## 📍 Outcome

- Streamlined reporting process by **30%**
- Delivered actionable business intelligence for sales and marketing teams
- Showcased how Excel, Python, SQL & Power BI can together form a robust data analytics pipeline

---

## 📁 Project Structure

```bash
📂 Ecommerce-Sales-Analysis
├── 📊 Excel Files (Raw + Cleaned)
├── 🐬 MySQL Dump & Queries
├── 📈 Power BI Report (.pbix)
└── README.md
