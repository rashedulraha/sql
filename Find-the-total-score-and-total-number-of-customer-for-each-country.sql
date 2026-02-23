-- Find the total score and total number of customer for each countyr

SELECT 
	country ,
	sum(score) AS total_score, 
	COUNT(id) AS total_customers
FROM customers 
GROUP BY country 
