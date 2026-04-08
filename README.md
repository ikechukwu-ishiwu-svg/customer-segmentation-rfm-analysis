# Customer Segmentation Analysis (RFM)

## Project Overview

This project analyzes customer purchasing behavior using **RFM (Recency, Frequency, Monetary) analysis** to identify high-value customer segments and provide actionable business insights.  
The goal is to help businesses **increase revenue, improve customer retention, and optimize marketing strategies**.



## Project Workflow

1. **Data Cleaning and Preparation (SQL)**  
   - Removed missing `CustomerID` entries  
   - Handled negative quantities (returns/cancellations)  
   - Removed duplicate transactions  
   - Calculated `Revenue = Quantity * UnitPrice`
   - Calculated `Recency`, `Frequency`, and `Monetary` metrics for each customer
   - Created a dedicated table for `CustomerID`, `Recency`, `Frequency`, and `Monetary` metrics    

2. **RFM Calculation (Python)**  
   - Performed summary statistics and standardized datatypes for `CustomerID`, `Recency`, `Frequency`, and `Monetary` columns 
   - Assigned RFM scores and created customer segments (Champions, Loyal, Potential Loyalists, At-Risk, etc.)  

3. **Dashboard Creation (Power BI)**  
   - Built an **interactive dashboard** visualizing customer segments  
   - Revenue contribution, segment distribution, and average spending  
   - Key metrics for business decision-making  

4. **Business Insights**  
   - Identified top-performing customer segments  
   - Highlighted growth opportunities and segments at risk  
   - Provided recommendations for targeted marketing campaigns  



## Key Insights

- **Champions and Loyal Customers** generate the highest revenue and should be prioritized for retention programs.  
- **Potential Loyalists** present strong growth opportunities and can be nurtured into loyal customers.  
- **At-Risk Customers** require re-engagement strategies to prevent churn.  
- **Segment-specific marketing strategies** improve retention and maximize customer lifetime value.  



## Tools Used

- **SQL** — Data cleaning and RFM metric calculation  
- **Python** (Pandas, NumPy) — RFM scoring, segmentation  
- **Power BI** — Interactive dashboard and visualization  



## Dashboard Preview

![RFM Dashboard](images/online_retail_rfm_segmentation_dashboard_preview.png)  
![Customer Segments](images/segment_distribution.png)  
![Revenue by Segment](images/revenue_by_segment.png)  



## Project Files

- `data/` — Cleaned dataset used for analysis  
- `sql/online_Retal_rfm_segmentation.sql` — SQL queries for data cleaning and RFM calculation  
- `python/sql_dataset_RFM-segmentation_Python_script.ipynb` — Python notebook with RFM scoring and segmentation  
- `dashboard/rfm_segment_powerBI_Dashboard.pbix` — Power BI dashboard file  
- `images/` — Dashboard screenshots for quick preview  



## Author

**Ikechukwu Ishiwu**  
Pharmacist | Data Analyst | SQL • Python • Power BI | Healthcare & Business Data Insights  

---

