USE sales;

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers
(
  customer_id 			    INT AUTO_INCREMENT,
  first_name 				    VARCHAR(255),
  last_name 				    VARCHAR(255),
  email_address 			  VARCHAR(255),
  number_of_complaints 	INT,
  PRIMARY KEY (customer_id)
);
ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints) 
VALUES ('John', 'Mackinley', 'M', 'john.mackinley@365datascience.com', 0);

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO customers (first_name, last_name, gender) 
VALUES ('Peter', 'Figaro', 'M');

SELECT * FROM customers;

-- ALTER TABLE customers
-- ALTER COLUMN number_of_complaints DROP DEFAULT;


CREATE TABLE IF NOT EXISTS companies
(
  company_id 					        VARCHAR(255),
  company_name 				        VARCHAR(255) DEFAULT 'x',
  headquarters_phone_number 	VARCHAR(255),
  UNIQUE KEY (headquarters_phone_number)
);
