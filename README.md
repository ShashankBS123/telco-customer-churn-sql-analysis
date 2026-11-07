# Subscription Customer Churn Analysis 

## Business question 
Which customer groups have higher churn, and how does churn vary across contract type, tenure, services, and payment method?

## Dataset
IBM sample Telco Customer Churn dataset.
Source: https://www.kaggle.com/datasets/blastchar/telco-customer-churn

## Tools 
PostgreSQL and SQL.

## Data overview
One row represents one customer in the table. TotalCharges may be blank for some customers with zero months of tenure. 

## Analytical Findings
The dataset contains 7,043 customers. Of these, 1,869 churned, giving an overall churn rate of 26.54%.

- **Contract type:** Churn was highest among month-to-month customers (42.71%), followed by one-year customers (11.27%) and two-year customers (2.83%).

- **Internet service:** Customers with fiber optic service had the highest churn rate (41.89%). The rate was 18.96% for DSL customers and 7.40% for customers without internet service.

- **Payment method:** Customers paying by electronic check had the highest churn rate (45.29%). Rates for mailed check, bank transfer, and automatic credit card were 19.11%, 16.71%, and 15.24%, respectively.

- **Tenure:** Customers with 0–12 months of tenure had the highest churn rate (47.44%). Churn rates were 28.71% for 13–24 months, 20.39% for 25–48 months, and 9.51% for 49–72 months.

These are observed associations in this dataset; they don't prove what caused customers to leave. 

## Project status
Complete. 
