
/*
----------------------------------------------------------------------------------------------
CREATE SCHEMAS (RUN THIS SCRIPT IN DATABASE "DataWarehouse")
----------------------------------------------------------------------------------------------

This script sets up three schemas within "DataWarehouse" database: 'bronze', 'silver', 'gold'
*/

CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
