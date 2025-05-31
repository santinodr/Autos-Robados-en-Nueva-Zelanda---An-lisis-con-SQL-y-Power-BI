## Data Cleansing and Transformation Check

## Duplicates 
-- There were no duplicates or null values
SELECT location_id, COUNT(*) AS duplicates
FROM locations
GROUP BY location_id
HAVING duplicates > 1;

SELECT vehicle_id, COUNT(*) AS duplicates
FROM stolen_vehicles
GROUP BY vehicle_id
HAVING duplicates > 1;

## Null Values
DELETE FROM stolen_vehicles WHERE vehicle_id IS NULL;




