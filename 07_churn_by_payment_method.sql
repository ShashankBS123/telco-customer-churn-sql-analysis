--churn percentage by payment method 

SELECT payment_method,
		COUNT(*) AS total_customer_per_payment_method,
		SUM(CASE 
			WHEN churn ='Yes' THEN 1 ELSE 0 
			END) AS total_churn_customers,
		ROUND(100.0*SUM(CASE 
			WHEN churn ='Yes' THEN 1 ELSE 0 
			END)/ COUNT(*),2) AS churn_percentage_per_payment_method
FROM telco_churn_clean
GROUP BY payment_method;