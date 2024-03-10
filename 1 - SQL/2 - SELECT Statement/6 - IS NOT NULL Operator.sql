USE employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;

SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;
