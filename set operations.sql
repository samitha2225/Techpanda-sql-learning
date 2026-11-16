SELECT StudentID
FROM Student1
UNION
SELECT StudentID
FROM Alumni;

SELECT ProductID
FROM Product1
UNION
SELECT ProductID
FROM oldProducts;

SELECT Email
FROM Customer1
UNION
SELECT Email
FROM Suppliers;

SELECT City
FROM Customer1
UNION
SELECT City
FROM Suppliers;

SELECT departmentID
FROM Employees1
UNION
SELECT departmentID
FROM Manager;


SELECT CourseID
FROM Student1
UNION
SELECT CourseID
FROM Student1;

SELECT Phone
FROM Employees1
UNION
SELECT Phone
FROM Customer1;

SELECT city
FROM customer1
UNION
SELECT city
FROM employees1;

SELECT EmployeeID
FROM Employees1
UNION
SELECT EmployeeID
FROM Manager;

SELECT StudentName AS Name
FROM Student1
UNION ALL
SELECT EmployeeName
FROM Employees1;

SELECT City
FROM Customer1
UNION ALL
SELECT City
FROM Employees1;

SELECT Email
FROM Student1
UNION ALL
SELECT Email
FROM Customer1;

SELECT Phone
FROM Employees1
UNION ALL
SELECT Phone
FROM Customer1;

SELECT DepartmentName
FROM Employees1
UNION ALL
SELECT DepartmentName
FROM Student1;

SELECT DepartmentName
FROM Employees1 
INNER JOIN Department1
ON Employees1.DepartmentID = Department1.DepartmentID
UNION ALL
SELECT DepartmentName
FROM Student1
INNER JOIN Department1
ON Student1.DepartmentID = Department1.DepartmentID;

SELECT Category
FROM Product1
UNION ALL
SELECT Category
FROM OldProducts;

SELECT Current_Course
FROM Course1
UNION ALL
SELECT Completed_Course
FROM Course1;


SELECT CustomerName
FROM Customer1
UNION ALL
SELECT CustomerName
FROM OldCustomers;

SELECT EmployeeID
FROM Employees1
UNION ALL
SELECT EmployeeID
FROM OldEmployees;

SELECT ProductID
FROM Product1
UNION ALL
SELECT ProductID
FROM OldProducts;

SELECT City
FROM Customer1
UNION ALL
SELECT City
FROM Suppliers;

select * from oldemployees;

SELECT Email
FROM Employees1
UNION ALL
SELECT Email
FROM OldEmployees;
update oldemployees set email='priya@gmail.com' where employeeid=2;

SELECT StudentID
FROM student1
UNION ALL
SELECT StudentID
FROM Alumni;

SELECT DepartmentID
FROM Employees1
UNION ALL
SELECT DepartmentID
FROM OldEmployees;

SELECT ProductName
FROM Product1
UNION ALL
SELECT ProductName
FROM OldProducts;

SELECT Phone
FROM Customer1
UNION ALL
SELECT Phone
FROM OldCustomers;

SELECT City
FROM Customer1
UNION ALL
SELECT City
FROM Suppliers;

SELECT state
FROM Customer1
UNION ALL
SELECT state
FROM Suppliers;

SELECT EmployeeID AS ID
FROM Employees1
UNION ALL
SELECT EmployeeID
FROM OldEmployees;

Select city from customer1
intersect
select city from suppliers;

SELECT Email FROM Student1
INTERSECT
SELECT Email FROM Employees1;

select phone from customer1                 
intersect
select phone from employees1;

SELECT Phone
FROM Customer1
INTERSECT
SELECT Phone
FROM Employees1;

SELECT DepartmentName
FROM Student1
INTERSECT
SELECT DepartmentName
FROM Employees1;

SELECT StudentID
FROM Student1
INTERSECT
SELECT StudentID
FROM Alumni;

SELECT ProductID
FROM Products
INTERSECT
SELECT ProductID
FROM OldProducts;

SELECT CourseID
FROM Student1
INTERSECT
SELECT CourseID
FROM Student1;

SELECT City
FROM Customer1
INTERSECT
SELECT City
FROM Suppliers;

SELECT EmployeeName
FROM Employees1
INTERSECT
SELECT EmployeeName
FROM Manager;

SELECT EmployeeName
FROM Employees1
INTERSECT
SELECT EmployeeName
FROM Manager;

SELECT Category
FROM Product1
INTERSECT
SELECT Category
FROM OldProducts;

SELECT Email
FROM Customer1
INTERSECT
SELECT Email
FROM Suppliers;


SELECT Phone
FROM Student1
INTERSECT
SELECT Phone
FROM Customer1;

SELECT DepartmentID
FROM Employees1
INTERSECT
SELECT DepartmentID
FROM Manager;

SELECT Current_Course
FROM course1
INTERSECT
SELECT Completed_Course
FROM course1;
select*from course1;


SELECT city
FROM customer1
INTERSECT
SELECT city
FROM employees1;

SELECT EmployeeID
FROM Employees1
INTERSECT
SELECT EmployeeID
FROM OldEmployees;

SELECT StudentID
FROM Student1
INTERSECT
SELECT StudentID
FROM Alumni;

SELECT City
FROM Customer1
INTERSECT
SELECT City
FROM Suppliers;

SELECT City
FROM Customer1
EXCEPT
SELECT City
FROM Suppliers;

SELECT Email
FROM Student1
EXCEPT
SELECT Email
FROM Employees1;

SELECT Phone
FROM Customer1
EXCEPT
SELECT Phone
FROM Employees1;

SELECT DepartmentID
FROM Student1
EXCEPT
SELECT DepartmentID
FROM Employees1;

SELECT StudentID
FROM Student1
EXCEPT
SELECT StudentID
FROM Alumni;

SELECT ProductID
FROM Product1
EXCEPT
SELECT ProductID
FROM OldProducts;

SELECT City
FROM Customer1
EXCEPT
SELECT City
FROM Suppliers;

SELECT EmployeeName
FROM Employees1
EXCEPT
SELECT EmployeeName
FROM Manager;

SELECT Category
FROM Product1
EXCEPT
SELECT Category
FROM OldProducts;

SELECT Email
FROM Customer1
EXCEPT
SELECT Email
FROM Suppliers;

SELECT Phone
FROM Student1
EXCEPT
SELECT Phone
FROM Customer1;

SELECT DepartmentID
FROM Employees1
EXCEPT
SELECT DepartmentID
FROM Manager;

SELECT Current_Course
FROM course1
EXCEPT
SELECT Completed_Course
FROM course1;

SELECT city
FROM customer1
EXCEPT
SELECT city
FROM suppliers;

SELECT EmployeeID
FROM Employees1
EXCEPT
SELECT EmployeeID
FROM OldEmployees;

SELECT StudentID
FROM Student1
EXCEPT
SELECT StudentID
FROM Alumni;

SELECT email
FROM Customer1
EXCEPT
SELECT email
FROM Suppliers;