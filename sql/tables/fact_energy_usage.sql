CREATE OR REPLACE TABLE `energy-sphere-project.energy_dw.fact_energy_usage` AS
SELECT
    usage_id,
    household_id,
    region_id,
    date,
    energy_kwh,
    cost
FROM `energy-sphere-project.energy_dw.raw_energy_usage`;

-- This is the core fact table that captures energy usage data. 
-- It includes foreign keys to the dimensional tables (household, region, and date) and measures such as energy_kwh and cost.