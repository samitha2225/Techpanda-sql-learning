SELECT DepartmentID, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY DepartmentID;

SELECT Designation, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Designation;

SELECT YEAR(Joining_Date) AS Joining_Year,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY YEAR(Joining_Date);

SELECT designation, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY designation;

SELECT YEAR(Joining_Date) AS Joining_Year,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY YEAR(Joining_Date);

SELECT Experience, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Experience;

SELECT designation, SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY designation;

SELECT YEAR(Joining_Date) AS Joining_Year,
SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY YEAR(Joining_Date);

SELECT DEPARTMENT,COUNT(*) AS TOTAL_STUD FROM STUDENT
GROUP BY DEPARTMENT;

SELECT DEPARTMENT,MAX(MARKS)AS HIGH_MARK,MIN(MARKS)AS LOW_MARKS
FROM student
GROUP BY DEPARTMENT;


SELECT Gender, COUNT(*) AS Student_Count
FROM Student
GROUP BY Gender;

SELECT STUDENT_ID, Gender,COUNT(*) AS Student_Count
FROM Student
GROUP BY STUDENT_ID, Gender;

