-- COUNT of  Fraud vs Non-Fraud 
SELECT isFraud, COUNT(*) AS total_transactions
FROM transactions
GROUP BY isFraud;


-- Fraud Rate by Hour
SELECT hour, AVG(isFraud) AS fraud_rate
FROM transactions
GROUP BY hour
ORDER BY fraud_rate DESC;


-- Average Transaction Amount
SELECT isFraud, AVG(TransactionAmt) AS avg_amount
FROM transactions
GROUP BY isFraud;


-- Fraud Rate by Amount Bucket
SELECT amt_bucket, AVG(isFraud) AS fraud_rate
FROM transactions
GROUP BY amt_bucket;


-- High Risk Transactions (Time + High Amount)
SELECT *
FROM transactions
WHERE hour IN (8,9)
AND TransactionAmt > (
    SELECT PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY TransactionAmt)
    FROM transactions
);


-- Medium Risk Transactions
SELECT *
FROM transactions
WHERE hour IN (5,6,8,9)
AND TransactionAmt > 75;