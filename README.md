# Retail Analytics: Sales Trends, RFM Segmentation & Forecasting

---

## 📌 Project Overview

This project performs an end-to-end analysis of retail transaction data to uncover **sales trends**, **customer behavior**, and **revenue drivers** using SQL and Python.

---

## 🎯 Objectives

* Analyze monthly sales performance
* Segment customers using RFM (Recency, Frequency, Monetary) analysis
* Identify key revenue-contributing customer groups
* Build a simple forecasting model to understand sales trends

---

## 🛠️ Tools & Technologies

* **PostgreSQL** – Data cleaning and aggregation
* **Python (Pandas, Matplotlib)** – Data analysis, segmentation, visualization

---

## 📂 Project Structure

```id="hbx4z3"
Retail-Analytics-Project/
│
├── data/
│   ├── monthly_sales.csv
│   ├── customer_rfm.csv
│
├── notebook/
│   ├── retail_analysis.ipynb
│
├── README.md
```

---

## 📊 Key Analysis Performed

### 🔹 Sales Trend Analysis

* Aggregated transaction data into monthly revenue
* Identified upward trends and seasonal variations

### 🔹 RFM Customer Segmentation

* Segmented customers into:

  * High Value
  * Loyal
  * Low Value
* Based on recency, frequency, and monetary value

### 🔹 Revenue Contribution Analysis

* Compared number of customers vs revenue contribution
* Identified concentration of revenue among fewer customers

### 🔹 Sales Forecasting

* Applied a 3-month rolling average
* Smoothed short-term fluctuations to capture trend direction

---

## 📈 Key Insights

* Majority of customers fall into the **low-value segment**
* A smaller segment of customers contributes **disproportionately high revenue**
* Sales show an **increasing trend with seasonal peaks**
* Opportunity exists to improve revenue through **customer retention strategies**

---

## 💡 Business Recommendations

* Focus on retaining **high-value and loyal customers**
* Convert low-value customers through **targeted engagement strategies**
* Use segmentation for **data-driven marketing decisions**
* Improve forecasting accuracy using advanced time-series models

---

## ⚠️ Important Note

* Database credentials are **not included** for security reasons
* To run SQL queries:

  * Configure your own PostgreSQL database
* Pre-processed CSV files are provided for direct use

---

## 🚀 Outcome

This project demonstrates:

* End-to-end data analysis workflow
* Customer segmentation using RFM methodology
* Ability to extract business insights from raw data
* Practical use of SQL and Python in analytics

---
