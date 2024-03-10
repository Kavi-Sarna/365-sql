USE sales;

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS companies;


CREATE TABLE IF NOT EXISTS customers
(
  customer_id 			    INT,
  first_name 				    VARCHAR(255),
  last_name 				    VARCHAR(255),
  email_address 			  VARCHAR(255),
  number_of_complaints 	INT,
  PRIMARY KEY (customer_id),
  UNIQUE KEY (email_address)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers
(
	customer_id 			    INT,
  first_name 				    VARCHAR(255),
  last_name 				    VARCHAR(255),
  email_address 			  VARCHAR(255),
  number_of_complaints 	INT,
  PRIMARY KEY (customer_id)
);
ALTER TABLE customers
ADD UNIQUE KEY (email_address);

-- ALTER TABLE customers
-- DROP INDEX email_address;
