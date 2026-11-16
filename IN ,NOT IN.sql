SELECT *FROM Employees1
WHERE DepartmentID IN (SELECT DepartmentID FROM Department1);

SELECT *FROM Student1 WHERE DepartmentID IN (SELECT DepartmentID FROM Department1);

SELECT *FROM Customer1 WHERE CustomerID IN (SELECT CustomerID FROM Order1);

SELECT *FROM Product1 WHERE ProductID IN (SELECT ProductID FROM Order1);

SELECT *FROM Customer1 WHERE CustomerID IN (SELECT CustomerID FROM Order1);

SELECT *FROM Product1 WHERE ProductID IN (SELECT ProductID FROM Order1);

SELECT *FROM Employees1 WHERE DepartmentID IN (SELECT DepartmentID FROM Department1
WHERE city = 'Chennai');

SELECT *FROM Student1 WHERE DepartmentID IN (SELECT DepartmentID FROM Department1
WHERE DepartmentName IN ('Data Science', 'IT'));

SELECT *FROM Student1 WHERE StudentID IN (SELECT StudentID FROM Enrollments);

SELECT *
FROM Employees1 WHERE EmployeeID IN (SELECT EmployeeID FROM EmployeeProjects);

SELECT *FROM Customer1 WHERE CustomerID NOT IN (SELECT CustomerID FROM Order1);

SELECT *FROM Product1 WHERE ProductID NOT IN (SELECT ProductID FROM Order1);

SELECT *FROM Student1 WHERE StudentID NOT IN (SELECT StudentID FROM Enrollments);

SELECT *FROM Employees1 WHERE EmployeeID NOT IN (SELECT EmployeeID FROM EmployeeProjects);

SELECT *FROM Department1
WHERE DepartmentID NOT IN (SELECT DepartmentID FROM Employees1);

SELECT *FROM Customer1 WHERE CustomerID NOT IN (SELECT CustomerID FROM Order1);

SELECT *FROM Product1 WHERE ProductID NOT IN (SELECT ProductID FROM Order1);

SELECT *FROM Employees1 WHERE EmployeeID NOT IN (SELECT EmployeeID FROM EmployeeProjects);

SELECT *FROM Student1 WHERE StudentID NOT IN (SELECT StudentID FROM Enrollments);

SELECT *FROM Course1 WHERE CourseID NOT IN (SELECT CourseID FROM Enrollments);

