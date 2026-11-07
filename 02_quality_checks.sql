-- Check for duplicate customer IDs
SELECT customer_id, COUNT(*) AS id_count
FROM telco_churn_raw
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- Count blank TotalCharges values
SELECT COUNT(*) AS blank_total_charges
FROM telco_churn_raw
WHERE total_charges IS NULL
   OR TRIM(total_charges) = '';

-- Check whether the blank charges belong to customers with zero tenure
SELECT tenure, COUNT(*) AS customer_count
FROM telco_churn_raw
WHERE total_charges IS NULL
   OR TRIM(total_charges) = ''
GROUP BY tenure;