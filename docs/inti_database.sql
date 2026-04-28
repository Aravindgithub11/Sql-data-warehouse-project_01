--Create Database 

USE master;
GO
--DROP and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE Datawarehouse;
END;
GO
CREATE DATABASE Datawarehouse;
USE Datawarehouse;

CREATE SCHEMA bronze;
GO 
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
