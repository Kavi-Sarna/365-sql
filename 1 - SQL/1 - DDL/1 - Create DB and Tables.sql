CREATE DATABASE IF NOT EXISTS sales;
-- CREATE SCHEMA IF NOT EXISTS sales;

USE sales;

CREATE TABLE IF NOT EXISTS sales
(
  purchase_number 	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  date_of_purchase 	DATE NOT NULL,
  customer_id 		  INT,
  item_code 			  VARCHAR(10) NOT NULL
);
CREATE TABLE IF NOT EXISTS customers
(
	customer_id 			    INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  first_name 				    VARCHAR(255),
  last_name 				    VARCHAR(255),
  email_address 		    VARCHAR(255),
  number_of_complaints 	INT
);

-- SELECT * FROM sales;
-- SELECT * FROM sales.sales;

DROP TABLE IF EXISTS customers;
DROP TABLE sales;

CREATE TABLE IF NOT EXISTS sales
(
	purchase_number 	INT AUTO_INCREMENT,
  date_of_purchase 	DATE NOT NULL,
  customer_id 		  INT,
  item_code 			  VARCHAR(10) NOT NULL,
  PRIMARY KEY (purchase_number)
);
CREATE TABLE IF NOT EXISTS customers
(
	customer_id 			    INT,
  first_name 				    VARCHAR(255),
  last_name 				    VARCHAR(255),
  email_address 			  VARCHAR(255),
  number_of_complaints 	INT,
  PRIMARY KEY (customer_id)
);
CREATE TABLE IF NOT EXISTS items
(
  item_code 	VARCHAR(255),
  item 		    VARCHAR(255),
  unit_price 	NUMERIC(10 , 2),
  company_id 	VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS companies
(
  company_id 					        VARCHAR(255),
  company_name 				        VARCHAR(255),
  headquarters_phone_number 	INT(12)
);
