USE sales;

DROP TABLE IF EXISTS companies;
CREATE TABLE IF NOT EXISTS companies
(
  company_id 					        INT PRIMARY KEY AUTO_INCREMENT,
  company_name 				        VARCHAR(255) DEFAULT 'x' NOT NULL,
  headquarters_phone_number 	VARCHAR(255),
  UNIQUE KEY (headquarters_phone_number)
);

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

-- INSERT INTO companies (headquarters_phone_number)
-- VALUES ('+1 (202) 555-0196');  -- error
INSERT INTO companies (headquarters_phone_number, company_name)
VALUES ('+1 (202) 555-0196', 'Company A');
