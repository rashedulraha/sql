-- Find the total score for each country

 SELECT 
 first_name,
	country,
	SUM(score) AS total_score
 FROM  customers
 GROUP BY country ,first_name 
