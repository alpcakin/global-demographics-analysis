CREATE TABLE fertility_data (
    country_name VARCHAR(100),
    country_code VARCHAR(3),
    year INTEGER,
    fertility_rate NUMERIC(5,3),
    PRIMARY KEY (country_code, year)
);
CREATE TABLE dependency_data (
    country_name VARCHAR(100),
    country_code VARCHAR(3),
    year INTEGER,
    old_age_dependency_ratio NUMERIC(6,3),
    PRIMARY KEY (country_code, year)
);

SELECT COUNT(*) FROM fertility_data;
SELECT COUNT(*) FROM dependency_data;

