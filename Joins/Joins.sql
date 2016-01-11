-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
-- Hint: Read more about NATURAL JOIN
SELECT 
    LOCATION_ID,
    STREET_ADDRESS,
    CITY,
    STATE_PROVINCE,
    COUNTRY_ID,
    DEPARTMENT_NAME
FROM
    locations
        NATURAL JOIN
    departments;


-- 2. Write a query to find the names (first_name, last name), department ID and name of all the employees.
SELECT 
    employees.FIRST_NAME,
    employees.LAST_NAME,
    employees.DEPARTMENT_ID,
    departments.DEPARTMENT_NAME
FROM
    employees,
    departments
WHERE
    departments.DEPARTMENT_ID = employees.DEPARTMENT_ID;


-- 3. Find the names (first_name, last_name), job, department number, and department name of the employees who work in London.
SELECT 
    employees.FIRST_NAME,
    employees.LAST_NAME,
    employees.JOB_ID,
    employees.DEPARTMENT_ID,
    departments.DEPARTMENT_NAME
FROM
    employees,
    departments,
    locations
WHERE
    departments.DEPARTMENT_ID = employees.DEPARTMENT_ID
        AND departments.LOCATION_ID = locations.LOCATION_ID
        AND locations.CITY = 'LONDON';


-- 4. Write a query to get the department name and number of employees in the department.
SELECT 
    departments.DEPARTMENT_NAME, COUNT(employees.EMPLOYEE_ID)
FROM
    employees,
    departments
WHERE
    employees.DEPARTMENT_ID = departments.DEPARTMENT_Id
GROUP BY employees.DEPARTMENT_ID;


-- 5. Find the names (first_name, last_name) and hire date of the employees who were hired after 'Jones'.
SELECT 
    FIRST_NAME, LAST_NAME, HIRE_DATE
FROM
    employees
WHERE
    HIRE_DATE > (SELECT 
            HIRE_DATE
        FROM
            employees
        WHERE
            LAST_NAME = 'JONES');



