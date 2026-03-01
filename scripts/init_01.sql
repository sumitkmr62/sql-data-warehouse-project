/*
--------------------------------------------------------------------------------------------
CREATE DATABASE (RUN THIS SCRIPT IN DATABASE "postgres")
--------------------------------------------------------------------------------------------
Script Purpose:
	This script creates new database name "DataWarehouse" after checking if it already exists.
	If the database exists, it is dropped and recreated. 

WARNING:
	Running this script will drop the entire "DataWarehouse" database if it exists.
	All data in the database will be permanently deleted. Process with caution and 
	ensure you have proper backups before running this script.
*/

-- Terminate Active Connections
SELECT 	PG_TERMINATE_BACKEND(pid) 
FROM 	PG_STAT_ACTIVITY
WHERE 	DATNAME = 'DataWarehouse'
AND 	PID <> PG_BACKEND_PID();

-- Drop Database If Exists
DROP DATABASE IF EXISTS "DataWarehouse";

-- Create Database
CREATE DATABASE "DataWarehouse";
