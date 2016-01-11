-- 1. Write a query to find the names (first_name, last_name) and salaries of the employees who have higher salary
-- than the employee whose last_name='Bull'
SELECT 
    FIRST_NAME, LAST_NAME, SALARY
FROM
    employees
WHERE
    Salary > (SELECT 
            SALARY
        FROM
            employees
        WHERE
            LAST_NAME = 'BULL');


-- 2. Find the names (first_name, last_name) of all employees who works in the IT department.
SELECT 
    FIRST_NAME, LAST_NAME
FROM
    employees
WHERE
    DEPARTMENT_ID = 60;


-- 3. Find the names (first_name, last_name) of the employees who are managers
SELECT 
    FIRST_NAME, LAST_NAME, MANAGER_ID
FROM
    employees
WHERE
    EMPLOYEE_ID IN (SELECT DISTINCT
            MANAGER_ID
        FROM
            employees);


-- 4. Find the names (first_name, last_name), salary of the employees whose salary is greater than the average salary
SELECT 
    FIRST_NAME, LAST_NAME, SALARY
FROM
    employees
WHERE
    SALARY > (SELECT 
            AVG(SALARY)
        FROM
            employees);


-- 5. Find the names (first_name, last_name), salary of the employees whose salary is equal to the minimum salary for their job grade
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees WHERE SALARY > (SELECT AVG(SALARY) FROM employees);



-- 6. Find the names (first_name, last_name), salary of the employees who earn the same salary as the minimum salary for all departments.



-- 7. Write a query to display the employee ID, first name, last names, and department names of all employees.
-- Hint: Result of a SELECT can be a selected field
Select employees.EMPLOYEE_ID, employees.FIRST_NAME, employees.LAST_NAME, departments.DEPARTMENT_NAME FROM employees, departments Where departments.DEPARTMENT_ID = employees.DEPARTMENT_ID;

-- 8. Write a query to select last 10 records from a table.
-- Hint: Result of a SELECT can be a set where you can select
Select EMPLOYEE_ID, FIRST_NAME, LAST_NAME From employees order by EMPLOYEE_ID
