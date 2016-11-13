CREATE DATABASE IF NOT EXISTS dbjavaee;

DROP TABLE IF EXISTS dbjavaee.users;
CREATE TABLE dbjavaee.users(
  id INT AUTO_INCREMENT PRIMARY KEY ,
  email VARCHAR(255) NOT NULL ,
  password VARCHAR(255) NOT NULL ,
  subject VARCHAR(255)
);

SELECT *
FROM dbjavaee.users;

SELECT *
FROM mysql.user;

DESC dbjavaee.users;