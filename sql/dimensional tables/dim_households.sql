CREATE OR REPLACE TABLE `energy-sphere-project.energy_dw.dim_household` AS
SELECT
  household_id,
  household_size,
  dwelling_type
FROM `energy-sphere-project.energy_dw.raw_households`;

-- Reminder to replace the project name 'energy-sphere-project' with your own project name in the SQL code above.
-- Also ensure that the table names are correct and match your dataset structure.