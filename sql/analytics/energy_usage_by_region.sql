SELECT r.region_name,SUM(f.energy_kwh) AS total_usage
FROM `energy-sphere-project.energy_dw.fact_energy_usage` f
JOIN `energy-sphere-project.energy_dw.dim_region` r ON f.region_id = r.region_id
GROUP BY r.region_name
ORDER BY total_usage DESC;