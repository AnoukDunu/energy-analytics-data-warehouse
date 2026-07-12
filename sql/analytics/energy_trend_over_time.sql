SELECT d.date,SUM(f.energy_kwh) AS total_kwh
FROM `energy-sphere-project.energy_dw.fact_energy_usage` f
JOIN `energy-sphere-project.energy_dw.dim_date` d ON f.date = d.date
GROUP BY d.date
ORDER BY d.date;