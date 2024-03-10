USE sales;

DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales
(
  purchase_number 	INT AUTO_INCREMENT,
  date_of_purchase 	DATE NOT NULL,
  customer_id 		  INT,
  item_code 			  VARCHAR(10) NOT NULL,
  PRIMARY KEY (purchase_number),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

DROP TABLE sales;
CREATE TABLE IF NOT EXISTS sales
(
	purchase_number 	INT AUTO_INCREMENT,
  date_of_purchase 	DATE NOT NULL,
  customer_id 		  INT,
  item_code 			  VARCHAR(10) NOT NULL,
  PRIMARY KEY (purchase_number)
);
ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

-- ALTER TABLE sales
-- DROP FOREIGN KEY sales_ibfk_1;
