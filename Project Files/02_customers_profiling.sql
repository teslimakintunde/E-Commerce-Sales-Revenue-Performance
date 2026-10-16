
-- CUSTOMER DATA PROFILING
-- ========================================


SELECT * FROM customer_staging;

-- Row count
SELECT COUNT(*) AS total_rows FROM customer_staging;

-- Missing values
-- Current State:
--   - Total records: 10,000
--   - Missing emails: 303 (3.03%)
--   - Missing phone numbers: 410 (4.10%)
--   - Missing regions: 200 (2.00%)

SELECT * 
FROM customer_staging
WHERE TRIM(region)="" OR region IS NULL;

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN email IS NULL OR email = '' THEN 1 ELSE 0 END) AS missing_email,
    SUM(CASE WHEN phone_number IS NULL OR phone_number = '' THEN 1 ELSE 0 END) AS missing_phone,
    SUM(CASE WHEN region IS NULL OR region = '' THEN 1 ELSE 0 END) AS missing_region
FROM customer_staging;

-- Gender inconsistency
SELECT gender, COUNT(*) 
FROM customer_staging
GROUP BY gender;

-- Loyalty tier inconsistency
SELECT loyalty_tier, COUNT(*) 
FROM customer_staging
GROUP BY loyalty_tier;

-- Preferred payment inconsistency
SELECT preferred_payment, COUNT(*) 
FROM customer_staging
GROUP BY preferred_payment;

-- Date format check
-- The date column contains multiple formats (DD-MMM-YYYY, YYYY-MM-DD, DD/MM/YYYY)
SELECT signup_date
FROM customer_staging
WHERE signup_date LIKE '%/%' OR signup_date LIKE '%-%';

-- Invalid age
-- No Invalide age
SELECT *
FROM customer_staging
WHERE age < 0 OR age > 120;

-- Duplicate customers
-- No duplicate customers
SELECT customer_id, COUNT(*)
FROM customer_staging
GROUP BY customer_id
HAVING COUNT(*) > 1;










