# Customer Churn Analysis 📊

## 📌 Project Overview
This project focuses on analyzing early-stage customer churn using SQL and visualizing insights with Power BI.  
The goal is to identify customers who stop engaging within the first 30 days and measure the business impact of churn.

---

## 🎯 Objectives
- Identify churned customers based on inactivity logic
- Analyze churn patterns by plan type and region
- Calculate revenue loss due to churn
- Build an interactive Power BI dashboard for insights

---

## 🛠 Tools & Technologies
- **PostgreSQL** – SQL queries and analysis  
- **Power BI** – Data visualization and dashboarding  
- **Microsoft Excel** – Data validation and CSV handling  

---

## 📂 Dataset Description
- **customers.csv** – Customer details (join date, region, plan type)
- **usage.csv** – Customer activity and session data
- **transactions.csv** – Revenue and transaction history

---

## 🧠 Business Logic
- A customer is considered **churned** if they have no activity in the last **30 days**
- Early-stage churn focuses on customers who churn shortly after joining
- Revenue loss is calculated from transactions made by churned customers

---

## 📊 Dashboard Highlights
- KPI card showing total churned customers
- Bar chart displaying churn by plan type
- Table showing revenue lost due to churn
- Region slicer for interactive analysis

---

## 🔍 Key Insights
- Basic plan customers show higher early-stage churn
- Early churn leads to noticeable revenue loss
- Churn patterns vary across regions

---

## 📁 Project Structure
Churn-analysis/
│
├── SQL/
│ └── churn_analysis.sql
│
├── Data/
│ ├── customers.csv
│ ├── usage.csv
│ └── transactions.csv
│
├── PowerBI/
│ └── Customer_Churn_Analysis.pbix
│
├── Screenshots/
│ └── dashboard.png
│
└── README.md

---

## 📷 Dashboard Preview
![Dashboard](Screenshot/dashboard.png)
---

## ✅ Conclusion
This project demonstrates practical data analysis skills using SQL and Power BI, with a strong focus on business impact and decision-making. It reflects a real-world Data Analyst workflow from data extraction to insight delivery.
