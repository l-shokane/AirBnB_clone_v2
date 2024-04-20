--A script that prepares a MySQL server for the project

-- Creates a database if it doesnt exist.
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Creates user if it doesnt exist.
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grants all privileges on hbnb_dev_db to hbnb_dev.
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Grants SELECT privileges on perfomance_schema to hbnb_dev.
GRANT SELECT ON perfomance_schema.* TO 'hbnb_dev'@'localhost';

-- Flush all privileges
FLUSH PRIVILEGES;