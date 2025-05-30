
-- 1. ¿Qué día de la semana se roban vehículos con más frecuencia?
SELECT DAYNAME(date_stolen), COUNT(*)  
FROM stolen_vehicles  
GROUP BY DAYNAME(date_stolen)
ORDER BY COUNT(*) DESC;

-- 2. ¿Qué tipos de vehículos son los más y los menos robados?
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

-- 3. ¿La frecuencia de robos varía según la región?
SELECT l.region, COUNT(s.vehicle_id) AS robos_totales
FROM stolen_vehicles s
JOIN locations l ON l.location_id = s.location_id
GROUP BY l.region
ORDER BY robos_totales DESC;

-- 4. ¿Cuáles son los 5 días con más robos de autos?
SELECT date_stolen, COUNT(*)  
FROM stolen_vehicles  
GROUP BY date_stolen
ORDER BY COUNT(*) DESC
LIMIT 5;

-- 5. ¿Cuántos de lujo y estándares se robaron?
SELECT md.make_type, COUNT(sv.vehicle_id) AS vehiculos_totales
FROM stolen_vehicles sv
JOIN make_details md ON md.make_id = sv.make_id
WHERE md.make_type IN ('Standard', 'Luxury')
GROUP BY md.make_type;

-- 6. ¿Cuáles son las regiones con mas populación?
select region, SUM(population) AS populación
from locations group by region 
ORDER BY populación DESC;

-- 7. ¿Cómo influye el año del modelo en la probabilidad de robo?
SELECT model_year, COUNT(vehicle_id) AS vehículos
FROM stolen_vehicles 
WHERE model_year IS NOT NULL
GROUP BY model_year
ORDER BY model_year DESC;

-- 8. ¿Cuál fue el modelo del auto mas robado?
SELECT model_year, COUNT(vehicle_id) AS vehículos
FROM stolen_vehicles 
WHERE model_year IS NOT NULL
GROUP BY model_year
ORDER BY vehículos DESC
LIMIT 3;

-- 9. ¿Cuántos robos hubieron según la población?
SELECT l.population, COUNT(sv.vehicle_id) AS vehiculos_totales
FROM stolen_vehicles sv
JOIN locations l ON l.location_id = sv.location_id
GROUP BY l.population
ORDER BY population DESC;

-- 10. ¿Cuáles fueron los autos mas robados según el color?

SELECT color, COUNT(vehicle_id) AS Vehículos_Robados
FROM stolen_vehicles
GROUP BY color
LIMIT 10;



-- Análisis de tendencias mensuales y anuales 

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






