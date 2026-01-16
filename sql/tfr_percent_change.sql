WITH cte AS(
SELECT 
    country_name,
    MAX(CASE WHEN year = 2014 THEN fertility_rate END) AS tfr_2014,
    MAX(CASE WHEN year = 2023 THEN fertility_rate END) AS tfr_2023
FROM fertility_data
WHERE year IN (2014,2023)
GROUP BY country_name
)
SELECT country_name, tfr_2014, tfr_2023, 
       ROUND((((tfr_2023-tfr_2014)/tfr_2014)*100),1) AS percent_change
FROM cte
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