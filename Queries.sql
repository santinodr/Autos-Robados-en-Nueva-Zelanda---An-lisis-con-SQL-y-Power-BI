
-- 1. What day of the week are vehicles stolen most frequently?
SELECT DAYNAME(date_stolen), COUNT(*)  
FROM stolen_vehicles  
GROUP BY DAYNAME(date_stolen)
ORDER BY COUNT(*) DESC;

-- 2. What types of vehicles are most and least stolen?
SELECT vehicle_type, COUNT(*)  
FROM stolen_vehicles  
GROUP BY vehicle_type
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT vehicle_type, COUNT(*)  
FROM stolen_vehicles  
GROUP BY vehicle_type
ORDER BY COUNT(*) ASC
LIMIT 1;

-- 3. Does the frequency of robberies vary by region?
SELECT l.region, COUNT(s.vehicle_id) AS robos_totales
FROM stolen_vehicles s
JOIN locations l ON l.location_id = s.location_id
GROUP BY l.region
ORDER BY robos_totales DESC;

-- 4. What are the 5 days with the most car thefts?
SELECT date_stolen, COUNT(*)  
FROM stolen_vehicles  
GROUP BY date_stolen
ORDER BY COUNT(*) DESC
LIMIT 5;

-- 5. How many luxury and standard ones were stolen?
SELECT md.make_type, COUNT(sv.vehicle_id) AS vehiculos_totales
FROM stolen_vehicles sv
JOIN make_details md ON md.make_id = sv.make_id
WHERE md.make_type IN ('Standard', 'Luxury')
GROUP BY md.make_type;

-- 6. Which regions have the highest population density?
select region, SUM(population) AS populación
from locations group by region 
ORDER BY populación DESC;

-- 7. How does model year affect the likelihood of theft?
SELECT model_year, COUNT(vehicle_id) AS vehículos
FROM stolen_vehicles 
WHERE model_year IS NOT NULL
GROUP BY model_year
ORDER BY model_year DESC;

-- 8. What was the model of the most stolen car?
SELECT model_year, COUNT(vehicle_id) AS vehículos
FROM stolen_vehicles 
WHERE model_year IS NOT NULL
GROUP BY model_year
ORDER BY vehículos DESC
LIMIT 3;

-- 9. How many robberies were there according to the population?
SELECT l.population, COUNT(sv.vehicle_id) AS vehiculos_totales
FROM stolen_vehicles sv
JOIN locations l ON l.location_id = sv.location_id
GROUP BY l.population
ORDER BY population DESC;

-- 10. What were the most stolen cars according to color?

SELECT color, COUNT(vehicle_id) AS Vehículos_Robados
FROM stolen_vehicles
GROUP BY color
LIMIT 10;



-- Analysis of monthly and annual trends

# MENSUAL
SELECT MONTHNAME(date_stolen), COUNT(*)
FROM stolen_vehicles  
GROUP BY MONTHNAME(date_stolen)
ORDER BY COUNT(*) DESC;

# ANUAL
SELECT year(date_stolen), MAX(vehicle_id)
FROM stolen_vehicles  
GROUP BY year(date_stolen)
ORDER BY 1 ASC;






