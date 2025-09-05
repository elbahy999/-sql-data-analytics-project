/*
================================================
Create Database and Schemas
================================================
Script Purpose:
This script creates a new 'DataWarehouse' database, dropping and recreating it if it already exists. It also sets up three schemas: 'bronze', 'silver', and 'gold'.

WARNING:
Running this script will delete the entire 'DataWarehouse' database permanently. Proceed with caution and ensure you have backups before running.


*/


USE master;

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name 'Datawarehouse')
BEGIN
  ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE ;
END;
GO
-- Create the 'DataWarehouse' database
CREATE DATABASE Datawarehouse;
USE DataWarehouse;
-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
