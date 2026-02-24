-- CREATE DATABASE ev_fleet_management;

-- CREATE TABLE vehicles (
--     vehicle_id VARCHAR(10) PRIMARY KEY,
--     model VARCHAR(50),
--     battery_capacity_kwh INT,
-- 	purchase_date DATE,
--     commission_date DATE
-- );

-- SELECT * FROM vehicles

-- CREATE TABLE trip_data (
--     trip_id VARCHAR(10) PRIMARY KEY,
--     vehicle_id VARCHAR(10),
--     trip_date DATE,
--     distance_km FLOAT,
--     energy_used_kwh FLOAT
-- );

-- SELECT * FROM trip_data

-- CREATE TABLE charging_sessions (
--     session_id VARCHAR(10) PRIMARY KEY,
--     vehicle_id VARCHAR(10),
--     charge_date DATE,
--     charge_kwh FLOAT,
--     cost_rs FLOAT
-- );
-- SELECT * FROM charging_sessions

-- CREATE TABLE maintenance (
--     maintenance_id VARCHAR(10) PRIMARY KEY,
--     vehicle_id VARCHAR(10),
--     service_date DATE,
--     issue_type VARCHAR(50),
--     cost_rs FLOAT
-- );

-- SELECT * FROM maintenance

-- SELECT v.vehicle_id,
--        v.model,
--        SUM(t.distance_km) AS total_distance,
--        SUM(c.cost_rs) AS charging_cost,
--        SUM(m.cost_rs) AS maintenance_cost,
--        ROUND((SUM(c.cost_rs) + SUM(m.cost_rs)) / SUM(t.distance_km)) AS total_cost_per_km
-- FROM vehicles v
-- LEFT JOIN trip_data t ON v.vehicle_id = t.vehicle_id
-- LEFT JOIN charging_sessions c ON v.vehicle_id = c.vehicle_id
-- LEFT JOIN maintenance m ON v.vehicle_id = m.vehicle_id
-- GROUP BY v.vehicle_id, v.model
-- ORDER BY total_cost_per_km;