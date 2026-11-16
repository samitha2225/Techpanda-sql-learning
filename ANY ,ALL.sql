SELECT * FROM employees 
WHERE Salary > ANY (SELECT Salary FROM employees WHERE Department = 'HR');

SELECT * FROM student 
WHERE Age > ANY (SELECT Age FROM student WHERE Department = 'MECHANICAL');

SELECT * FROM student
WHERE Age < ANY (SELECT Age FROM student WHERE Department = 'CSE');

SELECT * FROM student 
WHERE Age > ALL (SELECT Age FROM student WHERE Department = 'hr');

SELECT * FROM student
WHERE Age < ALL (SELECT Age FROM student WHERE Department = 'testing');

SELECT * FROM student
WHERE Age > ANY (SELECT Age FROM student WHERE Department = 'hr');

SELECT * FROM student
WHERE Age > ALL (SELECT Age FROM student WHERE Department = 'cse');

SELECT * FROM student
WHERE Age < ANY (SELECT Age FROM student WHERE Department = 'cse');

SELECT * FROM student 
WHERE Age < ALL (SELECT Age FROM student WHERE Department = 'hr');
