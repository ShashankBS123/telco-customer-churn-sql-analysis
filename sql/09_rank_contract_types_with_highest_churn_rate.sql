-- Ranking contract type with highest churn rate

SELECT contract, 
		COUNT(*) AS total_customers_per_contract,
		SUM(CASE
				WHEN churn = 'Yes' THEN 1 ELSE 0
			END) AS total_churned_customers_per_contract,
		100.0* SUM(CASE
				WHEN churn = 'Yes' THEN 1 ELSE 0
			END) / COUNT(*) AS churn_percentage_per_contract,
		DENSE_RANK() OVER (ORDER BY (100.0* SUM(CASE
				WHEN churn = 'Yes' THEN 1 ELSE 0
			END) / COUNT(*)) DESC) AS ranking

FROM telco_churn_clean
GROUP BY contract; 

