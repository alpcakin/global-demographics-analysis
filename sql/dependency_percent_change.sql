WITH cte AS(
SELECT 
    country_name,
    MAX(CASE WHEN year = 1990 THEN old_age_dependency_ratio END) AS ratio_1990,
    MAX(CASE WHEN year = 2024 THEN old_age_dependency_ratio END) AS ratio_2024
FROM dependency_data
WHERE year IN (1990, 2024)
GROUP BY country_name
)
SELECT 
    country_name, 
    ratio_1990, 
    ratio_2024,
	round((((ratio_1990-ratio_2024)/ratio_1990)*100),1)AS percent_change
from cte
WHERE country_name NOT IN (
    'Macao SAR, China',
    'Hong Kong SAR, China',
    'Curacao',
    'Puerto Rico (US)',
    'British Virgin Islands',
    'Northern Mariana Islands',
    'Sint Maarten (Dutch part)',
    'Turks and Caicos Islands',
    'Virgin Islands (U.S.)',
    'American Samoa',
    'Faroe Islands',
    'Gibraltar',
    'Bermuda',
    'Cayman Islands',
    'St. Martin (French part)'
)
ORDER BY percent_change ASC
LIMIT 15;