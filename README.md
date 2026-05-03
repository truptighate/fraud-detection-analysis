# Fraud Detection Analysis & Risk Scoring Dashboard

## 📌 Problem Statement
Fraud detection is challenging due to highly imbalanced data and evolving transaction patterns.  
The goal of this project is to analyze transaction data, identify fraud patterns, and design an interpretable risk scoring system to flag high-risk transactions.

---

## 🎯 Objectives
- Identify when and where fraud occurs  
- Analyze transaction behavior patterns  
- Develop a rule-based fraud risk scoring system  
- Build an interactive dashboard for decision-making  

---

## 🛠️ Tools & Technologies
- **Python** (Pandas, Matplotlib, Seaborn)  
- **SQL** (Analytical queries for pattern extraction)  
- **Power BI** (Interactive dashboard)  

---

## 📂 Project Structure
fraud-detection-analysis/
│
├── data/
│ └── fraud_analysis_final.csv
│
├── notebooks/
│ └── fraud_analysis.ipynb
│
├── sql/
│ └── analysis_queries.sql
│
├── dashboard/
│ └── fraud_dashboard.pbix
│
├── images/
│ └── dashboard.png
│
└── README.md

---

## 🔍 Analysis Overview
The analysis was performed across multiple dimensions:

### ⏱️ Time-Based Analysis
- Fraud is not uniformly distributed across time  
- Specific hours show significantly higher fraud rates  

### 💰 Transaction Amount Analysis
- Fraud occurs across a wide range of amounts  
- High-value transactions alone are not sufficient indicators  

### 🏷️ Transaction Type Analysis
- Certain transaction categories exhibit higher fraud rates  
- Helps prioritize monitoring of specific transaction types  

### 👤 User Behavior Analysis
- Fraud is concentrated among specific users  
- Repeated fraudulent behavior is a strong indicator  

### ⚡ Transaction Velocity
- Rapid consecutive transactions slightly increase fraud probability  
- Acts as a supporting signal  

---

## ⚙️ Fraud Risk Scoring System

A rule-based risk scoring system was developed using multiple signals:

- High transaction amount  
- Suspicious time window  
- High transaction frequency  
- Rapid transactions  

### Risk Categories:
- **High Risk**
- **Medium Risk**
- **Low Risk**

### Key Result:
- High Risk transactions show higher fraud rates compared to baseline  
- Combining multiple signals improves detection effectiveness  

---

## 📊 Dashboard

The Power BI dashboard provides:

- Fraud trends over time  
- Fraud rate by transaction type  
- Risk category comparison  
- High-risk transaction identification  
- Top fraudulent users  

![Dashboard Preview](images/dashboard.png)

---

## 💡 Key Insights

- Fraud is driven by **behavioral patterns**, not a single feature  
- Time and transaction type play a critical role in fraud detection  
- User-level analysis reveals concentrated fraud activity  
- Combining weak signals creates a stronger fraud detection mechanism  

---

## 📈 Business Impact

- Enables early identification of high-risk transactions  
- Supports rule-based fraud monitoring systems  
- Improves decision-making for fraud prevention teams  
- Provides an interpretable alternative to black-box models  

---

## 🧠 Conclusion

This project demonstrates how structured data analysis and feature engineering can be used to design an effective and interpretable fraud detection system without relying on complex machine learning models.