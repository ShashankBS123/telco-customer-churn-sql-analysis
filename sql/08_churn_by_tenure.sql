-- churn rate percentage by tenure

SELECT (CASE
	WHEN tenure BETWEEN 0 AND 12 THEN '0-12 Months'
	WHEN tenure BETWEEN 13 AND 24 THEN '13-24 Months'
	WHEN tenure BETWEEN 25 AND 48  THEN '25-48 Months'
	WHEN tenure BETWEEN 49 AND 72 THEN '49-72 Months'
END) AS tenure_band,
COUNT(*) AS total_customer_per_band,
SUM(CASE 
WHEN churn ='Yes' THEN 1 ELSE 0
END) churn_count_per_band,
ROUND(100.0*SUM(CASE 
WHEN churn ='Yes' THEN 1 ELSE 0
END)/COUNT(*),2) AS churn_percentage
FROM telco_churn_clean
GROUP BY (CASE
	WHEN tenure BETWEEN 0 AND 12 THEN '0-12 Months'
	WHEN tenure BETWEEN 13 AND 24 THEN '13-24 Months'
	WHEN tenure BETWEEN 25 AND 48  THEN '25-48 Months'
	WHEN tenure BETWEEN 49 AND 72 THEN '49-72 Months'
END);

