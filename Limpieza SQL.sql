## Chequeo de Limpieza y Transformación de datos

## Duplicates 
-- No hubieron duplicados ni valores nulos
SELECT location_id, COUNT(*) AS duplicates
FROM locations
GROUP BY location_id
HAVING duplicates > 1;

SELECT vehicle_id, COUNT(*) AS duplicates
FROM stolen_vehicles
GROUP BY vehicle_id
HAVING duplicates > 1;

## Valores Nulos
DELETE FROM stolen_vehicles WHERE vehicle_id IS NULL;




