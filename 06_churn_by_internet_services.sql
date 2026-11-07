--churn rate percentage per internet service 
SELECT internet_service,
COUNT(*) AS total_customers,
SUM(CASE 
	WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churn_count,
ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),2) AS churn_rate_percent

FROM telco_churn_clean
GROUP BY internet_service;