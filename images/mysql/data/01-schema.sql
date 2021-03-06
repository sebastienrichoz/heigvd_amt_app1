DROP DATABASE IF EXISTS amt_app_01;
CREATE DATABASE amt_app_01 DEFAULT CHARACTER SET utf8;
USE amt_app_01;

CREATE TABLE users (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  firstname VARCHAR(255) DEFAULT NULL,
  lastname VARCHAR(255) DEFAULT NULL,
  email VARCHAR(255) NOT NULL,
  username VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;