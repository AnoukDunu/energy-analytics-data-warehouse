CREATE OR REPLACE TABLE `energy-sphere-project.energy_dw.dim_region` AS
SELECT
    region_id,
    region_name,
    state
FROM `energy-sphere-project.energy_dw.raw_regions`;

-- Reminder to replace the project name 'energy-sphere-project' with your own project name in the SQL code above.
-- Also ensure that the table names are correct and match your dataset structure.