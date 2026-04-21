
-- 1. Total Customers and Churn Distribution
SELECT 
    Churn, 
    COUNT(*) AS total_customers
FROM customers
GROUP BY Churn;

-- =========================================

-- 2. Churn Percentage
SELECT 
    Churn,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers) AS churn_percentage
FROM customers
GROUP BY Churn;

-- =========================================

-- 3. Churn by Contract Type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customers
GROUP BY Contract;

-- =========================================

-- 4. Average Monthly Charges by Churn
SELECT 
    Churn,
    AVG(MonthlyCharges) AS avg_monthly_charges
FROM customers
GROUP BY Churn;

-- =========================================

-- 5. Churn by Internet Service
SELECT 
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM customers
GROUP BY InternetService;

-- =========================================

-- 6. High Risk Customer Segments
SELECT 
    Contract,
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM customers
GROUP BY Contract, InternetService
ORDER BY churned DESC;

-- =========================================

-- 7. Tenure Group Analysis
SELECT 
    CASE 
        WHEN tenure < 12 THEN '0-1 Year'
        WHEN tenure < 24 THEN '1-2 Years'
        ELSE '2+ Years'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM customers
GROUP BY tenure_group;

-- =========================================

-- 8. Payment Method vs Churn
SELECT 
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM customers
GROUP BY PaymentMethod;

-- =========================================