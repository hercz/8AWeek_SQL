-- 1. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is
-- not in the range $10,000 through $15,000 and are in department 30 or 100.
SELECT 
    FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID
FROM
    employees
WHERE
    (SALARY NOT BETWEEN 10000 AND 15000)
        AND DEPARTMENT_ID IN (30 , 100);
        
        
-- 2. Write a query to display the names (first_name, last_name) and hire date for all employees who were hired in 1987.
-- Hint: Read more about YEAR()
SELECT 
    FIRST_NAME, LAST_NAME
FROM
    employees
WHERE
    YEAR(HIRE_DATE) = 1987;


-- 3. Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
SELECT 
    FIRST_NAME
FROM
    employees
WHERE
    FIRST_NAME LIKE '%b%'
        AND FIRST_NAME LIKE '%c%';
        

-- 4. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk,
-- and whose salary is not equal to $4,500, $10,000, or $15,000.
SELECT 
    employees.LAST_NAME, employees.SALARY, jobs.JOB_TITLE AS JOB
FROM
    employees
        INNER JOIN
    jobs ON employees.JOB_ID = jobs.JOB_ID
WHERE
    employees.JOB_ID IN ('IT_PROG' , 'SH_CLERK')
        AND SALARY NOT IN (4500 , 10000, 15000);


-- 5. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT * from employees WHERE LAST_NAME in ('Blake','Scott','KING', 'FORD');
