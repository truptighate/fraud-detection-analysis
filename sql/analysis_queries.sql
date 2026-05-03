-- =========================================
-- FRAUD ANALYSIS SQL QUERIES
-- =========================================

-- 1. Fraud vs Non-Fraud Distribution
-- Purpose: Understand class imbalance
SELECT isFraud, COUNT(*) AS total_transactions
FROM transactions
GROUP BY isFraud;


-- 2. Fraud Rate by Hour
-- Purpose: Identify time-based fraud patterns
SELECT hour, AVG(isFraud) AS fraud_rate
FROM transactions
GROUP BY hour
ORDER BY fraud_rate DESC;


-- 3. Average Transaction Amount by Fraud Status
-- Purpose: Compare spending patterns
SELECT isFraud, AVG(TransactionAmt) AS avg_amount
FROM transactions
GROUP BY isFraud;


-- 4. Fraud Rate by Amount Bucket
-- Purpose: Analyze fraud across transaction sizes
SELECT amt_bucket, AVG(isFraud) AS fraud_rate
FROM transactions
GROUP BY amt_bucket;


-- 5. High-Risk Transactions (Time + High Amount)
-- Purpose: Identify potentially suspicious transactions
SELECT *
FROM transactions
WHERE hour IN (8,9)
AND TransactionAmt > (
    SELECT PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY TransactionAmt)
    FROM transactions
);


-- 6. Medium-Risk Transactions
-- Purpose: Capture moderate-risk patterns
SELECT *
FROM transactions
WHERE hour IN (5,6,8,9)
AND TransactionAmt > 75;