-- In the "depression_by_sexe" we find the number depressive Mens and Womens, I've decided to explore, with finding the rare and each year.
-- Afterward, I find an another table so I've calculated the percentage of depressive people on the global population.

SELECT 
	d.Entity, 
	d.Year, 
	Male, 
	Female, 
	Male+Female As Count, 
	(Male/Female)*100 AS Rate_M_on_F, 
	Global_population, ((Male+Female)/Global_population)*100 AS rate_on_P	
FROM 
	mental_health.depression_by_sexe AS d
	INNER JOIN demographgie.population_france AS pf ON pf.Year = d.Year
WHERE 
    d.Entity = "France"
GROUP BY rate_on_P