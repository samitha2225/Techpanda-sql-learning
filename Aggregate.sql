SELECT COUNT(*) AS Total_Employees FROM employees;

SELECT MIN(salary) AS Min_Salary FROM employees;

SELECT COUNT(*) AS Employee_Count FROM employees WHERE department = 'IT';

SELECT COUNT(*) AS Employee_Count FROM employees WHERE salary > 50000;

SELECT COUNT(*) AS Available_Count FROM employees WHERE email IS NOT NULL;

SELECT SUM(salary) AS Total_Salary FROM employees;

SELECT SUM(salary) AS total_Salary FROM employees WHERE department = 'hr';

SELECT SUM(salary) AS Total_Salary FROM employees WHERE salary > 40000;

SELECT SUM(salary) AS HR_Salary FROM employees WHERE department = 'HR';

SELECT SUM(salary) AS Total_Salary FROM employees WHERE Department='hr';

SELECT SUM(salary) AS Salary FROM employees WHERE designation = 'finance manager';

SELECT MAX(salary) AS Minimum_Salary FROM employees;

SELECT MAX(salary) AS Minimum_Salary FROM employees WHERE department = 'HR';

SELECT AVG(salary) AS Average_Salary FROM employees;

SELECT AVG(salary) AS Average_IT_Salary FROM employees WHERE department = 'hr';

SELECT AVG(salary) AS HR_Salary FROM employees WHERE department = 'HR';

SELECT AVG(salary) AS Average_Salary FROM employees WHERE salary > 30000;

SELECT MAX(salary) AS Maximum_Salary FROM employees WHERE salary > 40000;