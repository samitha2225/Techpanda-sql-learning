SELECT student_name, marks,
CASE 
wHEN marks >= 90 THEN 'Excellent'
WHEN marks >= 75 THEN 'Very Good'
 WHEN marks >= 50 THEN 'Good'
 ELSE 'Fail'
END AS Marks
FROM student;

SELECT student_name, marks,
 CASE 
WHEN marks >= 40 THEN 'Pass'
ELSE 'Fail'
END AS Result
FROM student;

SELECT student_name, attendence,
CASE 
WHEN attendence >= 90 THEN 'Excellent'
 WHEN attendence >= 75 THEN 'Good'
ELSE 'Low'
END AS Attendance_
FROM student;

SELECT student_name, department, marks,
CASE 
 WHEN department = 'CSE' AND marks >= 80 THEN 'CSE Excellent'
WHEN department = 'IT' AND marks >= 80 THEN 'IT Excellent'
  ELSE 'Other'
 END AS Category
FROM student;

SELECT student_name, age, attendence,
CASE 
 WHEN age >= 18 AND attendence >= 75 THEN 'Eligible'
 ELSE 'Not Eligible'
END AS Eligibility
FROM student;

SELECT student_name, marks, attendence,
CASE 
WHEN marks >= 90 AND attendence >= 90 THEN 'Outstanding'
WHEN marks >= 75 AND attendence >= 75 THEN 'Good'
ELSE 'Needs Improvement'
END AS Category
FROM student;

SELECT student_name, department, age,
CASE 
WHEN department = 'CSE' AND age < 21 THEN 'Young CSE'
  WHEN department = 'IT' AND age < 21 THEN 'Young IT'
 ELSE 'Other'
END AS Category
FROM student;

SELECT student_name, email,
CASE 
WHEN email IS NOT NULL THEN 'Email Available'
ELSE 'Email Missing'
END AS Email_Status
FROM student;

SELECT student_name, mobile_num,
CASE 
 WHEN mobile_num IS NOT NULL THEN 'Phone Available'
ELSE 'Phone Missing'
END AS Phone
FROM student;


SELECT employee_name,salary,
 CASE 
    WHEN Department = 'IT' AND Salary >= 60000 THEN 'IT High Salary'
    WHEN Department = 'HR' AND Salary >= 50000 THEN 'HR High Salary'
    ELSE 'Other'
    END AS salary
	from employees;
    
    SELECT employee_name,salary,
    CASE 
    WHEN Salary >= 70000 AND Experience >= 5 THEN 'Senior High Salary'
  WHEN Salary >= 50000 THEN 'Good Salary'
 ELSE 'Regular'
  END AS Category
FROM Employees;

SELECT employee_name, department, salary,
CASE 
    WHEN department = 'IT' AND salary >= 50000 THEN 'IT High'
    WHEN department = 'IT' AND salary < 50000 THEN 'IT Normal'
    ELSE 'Other Department'
END AS Category
FROM Employees;