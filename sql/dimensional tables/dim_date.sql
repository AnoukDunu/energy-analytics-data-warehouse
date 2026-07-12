CREATE OR REPLACE TABLE `energy-sphere-project.energy_dw.dim_date` AS
SELECT DISTINCT
    date,
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    EXTRACT(QUARTER FROM date) AS quarter,
    FORMAT_DATE('%A', date) AS day_name
FROM `energy-sphere-project.energy_dw.raw_energy_usage`;

-- There is no raw_date table in the energy_dw dataset. Instead, we have a date column in the raw_energy_usage table.
-- So the dim_date table is derived/created from that date column in the raw_energy_usage table.