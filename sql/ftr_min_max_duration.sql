with cte AS (
SELECT country_name, min(fertility_rate) AS min_rate, max(fertility_rate) AS max_rate
from fertility_data
GROUP BY country_name
)
SELECT t1.country_name, t1.year, (2024-t1.year) AS how_long, min_rate, max_rate, t3.fertility_rate AS "2023_rate"
from fertility_data t1
INNER JOIN cte t2
on t1.country_name = t2.country_name
LEFT JOIN fertility_data t3
on t1.country_name = t3.country_name and t3.year = 2023
WHERE (t1.country_name, t1.fertility_rate) IN 
(	SELECT country_name,
	max(fertility_rate) AS fertility_rate
	FROM fertility_Data
	WHERE fertility_rate < 2.1
	GROUP BY country_name)
ORDER BY how_long DESC

