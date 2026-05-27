/*
--------------------------------------------------------------------------------------------
CREATE DATABASE (RUN THIS SCRIPT IN DATABASE "MS SQL")
--------------------------------------------------------------------------------------------
Script Purpose:
	This script creates new database name "DataWarehouse" after checking if it already exists.
	If the database exists, it is dropped and recreated. 

WARNING:
	Running this script will drop the entire "DataWarehouse" database if it exists.
	All data in the database will be permanently deleted. Process with caution and 
	ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop Database If Exists
IF EXISTS(SELECT 1 FROM SYS.DATABASES WHERE NAME = 'DataWarehouse');
BEGIN
	SET DATABASE DataWarehouse SINGLE_USER WITH IMMEDIATE ROLLBACK;
	DROP DATABASE DataWarehouse;
END
GO

-- Create Database
CREATE DATABASE "DataWarehouse";
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA GOLD;
GO

