
# 📊 E-Commerce Sales Analysis Dashboard

This project showcases a complete end-to-end Sales Analysis using Excel, Python, MySQL, and Power BI. It focuses on uncovering business insights from over $23M worth of transactions, with an automated ETL pipeline and interactive dashboards including a macro-enabled Excel workbook.

🚀 Project Overview
Domain: E-Commerce / Sales Analytics

Data Size: $23M+ revenue | $3M+ profit | 222K+ units sold

Tools Used:

📗 Excel (Data Cleaning, KPIs & Macro Dashboard) 

🐍 Python (ETL Processing)

🐬 MySQL (Database Integration & Querying)

📈 Power BI (Interactive Dashboards & Visualizations)

🔧 Workflow Summary
1. Excel Data Cleaning & Dashboard (Macro-Enabled)
Cleaned and standardized raw transactional data using Excel formulas and logic.

Created a structured master fact table by merging lookup fields using XLOOKUP and manual mapping.

Designed an interactive dashboard using Pivot Tables, Slicers, and Conditional Formatting.

Implemented dynamic Year-over-Year KPIs with icons to highlight growth and performance trends.

Developed and integrated a one-click Refresh Dashboard Macro (Ctrl + Shift + Q) to automate visual updates.

Ensured Excel compatibility by including both .xlsm (macro-enabled) and .xlsx versions for different user preferences.

2. Data Modeling
Converted raw data into structured format following star schema:

Fact Table: Sales transactions

Dimension Tables: Customers, Products, Orders

3. ETL Pipeline (Python + MySQL)
Loaded cleaned Excel data into Python for further transformation.

Imported data into MySQL, structured into relational schemas.

Indexed key columns to improve query performance.

4. SQL-Based Insights
Wrote 20+ SQL queries, including:

Advanced joins, CTEs, Window Functions, Aggregations

CASE logic for segmented analysis

Extracted and visualized KPIs like:

📈 Profit Growth (↑4.5% YoY)

🧾 Avg. Profit Margin (11.28%, ↑5.37%)

📉 Quantity Sold Decline (↓7.29%)

5. Power BI Dashboards
Designed 3 dashboards with Power BI:

Sales Overview: KPIs, category, customer, YoY

Profitability: Margins, shipping, and region-based insights

Detailed View: Maps, trendline by weekday, product filter

📌 Key Business Insights
💰 Highest Revenue Segment: Consumer ($12M+)

🧾 Top Product Category: Office Supplies ($14M)

🧭 Top Region: West ($7.4M)

📦 Most Used Shipping Type: Standard Class (59.78%)

📈 Weekday Sales: 2.5x higher than Weekend Sales

📎 Macro Instructions (for Excel Dashboard)
## ⚙️ How to Open the Macro-Enabled Excel File (`.xlsm`)

> This Excel file includes a built-in macro to refresh all dashboards instantly.  
> 🖱️ Keyboard Shortcut: **Ctrl + Shift + Q**

---

### 🔓 Step-by-Step to Enable Macros and Use the File

1. **Download the file from GitHub**
   - Click on the `.xlsm` file  
   - Then click **“Download”**

2. **Unblock the File**
   - Right-click the downloaded file → Select **"Properties"**
   - At the bottom of the **General** tab, check:  
     ✅ **Unblock** (if available)
   - Click **Apply** → **OK**

3. **Open the File in Microsoft Excel**

4. **Enable Editing and Macros**
   - If a yellow warning bar appears:
     - Click **“Enable Editing”**
     - Then click **“Enable Content”**

5. ✅ All set! Press Ctrl + Shift + Q or
go to the "Dashboard" sheet and click the "Refresh Dashboard" button.
This will update all Pivot Tables, KPIs, and Charts automatically.

⚠️ Important Notes
This macro is 100% safe. It only triggers dashboard refresh—no external code or files are accessed.

A macro-free version (.xlsx) is also available for users who don’t wish to enable macros.

❌ Macros do not work in Google Sheets or Excel Online. Use the desktop version of Microsoft Excel.

📍 Outcome
Reduced manual reporting time by 30%

Delivered consolidated, refreshable dashboards to stakeholders

Demonstrated full-stack data workflow from Excel to SQL to Power BI

📁 Project Structure
📂 Ecommerce-Sales-Analysis
├── 📊 Excel Files
│   ├── Ecommerce_Sales_Analysis_(without Macro).xlsx
│   ├── Ecommerce_Sales_Analysis_(Macro).xlsm   <-- Macro-Enabled
├── 🐍 Python_ETL_Scripts/
├── 🐬 MySQL_Schema_&_Queries/
├── 📈 PowerBI_Dashboards/
└── README.md

