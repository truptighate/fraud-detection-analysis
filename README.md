# Fraud Detection Analysis using SQL & Python

## Problem Statement
Fraud detection is challenging because fraudulent transactions are rare (~2.5%) and do not follow obvious patterns.  
In this project, the goal was to analyze transaction data and identify practical patterns that can help flag suspicious activity without using machine learning.

## What I Did
- Analyzed ~100K transaction records to understand fraud behavior  
- Explored how transaction **time and amount** impact fraud occurrence  
- Created new features like transaction **hour** from raw time data  
- Combined multiple factors to detect high-risk patterns  

## Tools Used
- Python (Pandas, Matplotlib)  
- SQL (for structured querying and analysis)

## Key Analysis
- Compared fraud vs non-fraud transactions  
- Studied fraud trends across different hours of the day  
- Analyzed transaction amount distribution across fraud cases  
- Combined time and amount to uncover hidden patterns  

## Fraud Detection Approach
Instead of using ML models, I built a simple **rule-based scoring system**:

- High Risk:
  - Transactions during peak fraud hours (8–9)
  - High transaction amount (>75th percentile)

- Medium Risk:
  - Transactions during extended risk hours (5–6, 8–9)
  - Moderate to high transaction amounts

Each transaction was assigned a **risk score** based on these conditions.

## Key Findings
- Fraud is not driven by transaction amount alone  
- Certain time windows (especially 5–9 hours) show higher fraud activity  
- Combining time and amount gives much stronger signals  

- High-risk transactions showed:
  - ~13% fraud rate vs ~2.5% baseline (~5x increase)

## Results
- Low Risk → ~2.5% fraud rate  
- Medium Risk → ~4.9% fraud rate  
- High Risk → ~13% fraud rate  

## Business Impact
- High-risk transactions can be flagged for **manual review or OTP verification**  
- Monitoring peak fraud hours can improve detection efficiency  
- Rule-based systems can provide quick, interpretable fraud checks without complex models  

## Conclusion
This project shows that even without machine learning, strong data analysis and logical rule design can significantly improve fraud detection and provide actionable insights.