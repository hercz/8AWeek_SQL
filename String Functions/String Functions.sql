-- 1. Write a query to get the employee id, email id (discard the last three characters).
-- Hint: Read more about REVERSE() and SUBSTR()
SELECT 
    EMPLOYEE_ID,
    SUBSTR(EMAIL, 1, LENGTH(EMAIL) - 3) AS SHORT_EMAIL
FROM
    employees;


-- 2. Write a query to get the locations that have minimum street length.
SELECT 
    LOCATION_ID
FROM
    locations
WHERE
    LENGTH(STREET_ADDRESS) = (SELECT 
            MIN(LENGTH(STREET_ADDRESS))
        FROM
            locations);


-- 3. Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an
-- appropriate label. Sort the results by the employees' first names.
SELECT 
    FIRST_NAME, LENGTH(FIRST_NAME) AS FIRST_NAME_LENGHT
FROM
    employees
WHERE
    FIRST_NAME LIKE 'A%'
        OR FIRST_NAME LIKE 'J%'
        OR FIRST_NAME LIKE 'M%'
ORDER BY FIRST_NAME;