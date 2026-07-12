SELECT h.dwelling_type,AVG(f.energy_kwh) AS avg_usage
FROM `energy-sphere-project.energy_dw.fact_energy_usage` f
JOIN `energy-sphere-project.energy_dw.dim_household` h ON f.household_id = h.household_id
GROUP BY h.dwelling_type;