-- 1. Write a query to get unique department ID from employee table.
SELECT distinct DEPARTMENT_ID FROM employees;

-- 2. Write a query to get all employee details from the employee table order by first name, descending.
SELECT * FROM employees order by FIRST_NAME DESC;

-- 3. Write a query to get the total salaries payable to employees.
select SUM(SALARY) AS TOTAL_SALARIES FROM employees;

-- 4. Write a query to get the maximum and minimum salary from employees table.
select max(SALARY) AS MAX_SALARY, min(SALARY) AS MIN_SALARY FROM employees;

-- 5. Write a query to get the average salary and number of employees in the employees table.
SELECT COUNT(EMPLOYEE_ID) AS NUMBER_OF_EMPLOYEES, AVG(SALARY) AS AVARAGE_SALARY FROM employees; 

-- 6. Write a query to get the number of employees working with the company.
SELECT COUNT(EMPLOYEE_ID) AS NUMBER_OF_EMPLOYEES FROM employees; 

-- 7. Write a query to get the number of jobs available in the employees table.
SELECT COUNT(distinct JOB_ID) AS JOBS_AVAILABLE FROM employees;

-- 8. Write a query get all first name from employees table in upper case.
SELECT ucase(FIRST_NAME) FROM employees;

-- 9. Write a query to get the first 3 characters of first name from employees table. Hint: Read more about SUBSTRING()
SELECT substring(FIRST_NAME,1,3) AS Short_First_Name FROM employees;

-- 10. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table. Hint: Read more about CONCAT()
SELECT concat(FIRST_NAME,' ', LAST_NAME) AS Full_name from employees;

-- 11. Write a query to get first name from employees table after removing white spaces from both side. Hint: Read more about TRIM()
select TRIM(FIRST_NAME) FROM employees;

-- 12. Write a query to get the length of the employee names (first_name, last_name) from employees table. Hint: Read more about LENGTH()
SELECT 
    LENGTH(FIRST_NAME) AS First_NAME_LEN,
    LENGTH(LAST_NAME) AS LAST_NAME_LEN
FROM
    employees;

-- 13. Write a query to select first 10 records from a table. Hint: Read more about LIMIT
Select * from employees Limit 10;
