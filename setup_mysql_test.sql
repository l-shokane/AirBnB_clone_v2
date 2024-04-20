--Script that prepares a MySQL server for the project:

--Creates a database if it doesn't exist.
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

--Creates a user if it does not exist.
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

--Grants all privileges from hbnb_test_db to hbnb_test.
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

--Grants SELECT privileges to hbnb_test from perfomance_schema.
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

--Flush privileges.
FLUSH PRIVILEGES;