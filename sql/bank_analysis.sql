CREATE DATABASE bank_project;
USE bank_project;

USE bank_project;

SHOW TABLES;

SELECT * FROM Customers LIMIT 5;
SELECT * FROM Transactions LIMIT 5;
SELECT * FROM Loans LIMIT 5;
SELECT AVG(Age) AS average_customer_age
FROM Customers;
SELECT COUNT(*) AS fraud_transactions


SELECT COUNT(*) AS fraud_transactions
FROM Transactions
WHERE `Class` = 1;
SELECT DATABASE();
SHOW DATABASES;
SELECT COUNT(*) AS fraud_transactions
FROM credit_card_fraud_cleaned
WHERE `Class` = 1;





SELECT
    `Class`,
    ROUND(AVG(Age), 1) AS average_age,
    COUNT(*) AS customer_count
FROM german_credit_data_cleaned
GROUP BY `Class`;
SELECT
    `Class`,
    ROUND(AVG(Credit_amount), 2) AS average_credit_amount,
    COUNT(*) AS customer_count
FROM german_credit_data_cleaned
GROUP BY `Class`;
SELECT
    Loan_Status,
    ROUND(AVG(LoanAmount), 2) AS average_loan_amount,
    COUNT(*) AS application_count
FROM loan_prediction_cleaned
GROUP BY Loan_Status;
USE bank_project;


SELECT *
FROM german_credit_data_cleaned
LIMIT 10;


SELECT AVG(ApplicantIncome) AS average_income
FROM loan_prediction_cleaned;





SELECT
    `Class`,
    COUNT(*) AS transaction_count
FROM credit_card_fraud_cleaned
GROUP BY `Class`;
SELECT
    Loan_Status,
    COUNT(*) AS application_count,
    ROUND(AVG(LoanAmount), 2) AS average_loan_amount
FROM loan_prediction_cleaned
GROUP BY Loan_Status;