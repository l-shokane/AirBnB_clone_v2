--A script that prepares a MySQL server for the project

--Connects to MySQL server.
db = MySQLdb.connect(
    host='localhost',
    port=3306,
    user='root',
    passwd='your_root_password'
)
--Creates a cursor object to execute queries.

-- Creates a database if it doesnt exist.
cursor.execute("CREATE DATABASE IF NOT EXISTS hbnb_dev_db")

-- Creates user if it doesnt exist.
cursor.execute("CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd'")

-- Grants all privileges on hbnb_dev_db to hbnb_dev.
cursor.execute("GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost'")

-- Grants SELECT privileges on perfomance_schema to hbnb_dev.
cursor.execute("GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost'")

-- Flush all privileges
cursor.execute("FLUSH PRIVILEGES")

--Close the database and cursor.
cursor.close()
db.close()