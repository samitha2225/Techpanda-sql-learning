SELECT *FROM Department1 WHERE EXISTS 
(SELECT 1 FROM Employees1 WHERE Employees1.DepartmentID = Department1.DepartmentID);

SELECT *FROM Employees1 WHERE EXISTS
(SELECT 1 FROM Department1 WHERE Department1.DepartmentID = Employees1.DepartmentID);

SELECT *FROM Student1 WHERE EXISTS
(SELECT 1 FROM Department1 WHERE Department1.DepartmentID = Student1.DepartmentID);


SELECT *FROM Customer1 WHERE EXISTS 
(SELECT 1 FROM Order1 WHERE Order1.CustomerID = Customer1.CustomerID);

SELECT *FROM Product1 WHERE EXISTS 
(SELECT 1 FROM Order1 WHERE Order1.ProductID = Product1.ProductID);

SELECT *FROM Employees1 WHERE EXISTS 
(SELECT 1 FROM EmployeeProjects  WHERE EmployeeProjects.EmployeeID = Employees1.EmployeeID);

SELECT *FROM Student1 WHERE EXISTS 
(SELECT 1 FROM Enrollments WHERE Enrollments.StudentID = Student1.StudentID);

SELECT *FROM Customer1 WHERE EXISTS 
(SELECT 1 FROM Product1  WHERE Product1.CustomerID = Customer1.CustomerID);

SELECT *FROM Product1 WHERE EXISTS (SELECT 1 FROM Order1 WHERE Order1.ProductID = Product1.ProductID);

SELECT * FROM Department1 WHERE EXISTS 
(SELECT 1  from Employees1 where Employees1.DepartmentID = Department1.DepartmentID  
and Employees1.Salary > 5000);

select *from department1 where exists 
(select 1 from employees1 where employees1.departmentid=department1.departmentid 
and employees1.salary > 40000);

select *from student1 where exists
(select 1 from  department1 where student1.departmentid=department1.departmentid
and age > 21);

SELECT * FROM Product1 P WHERE EXISTS (SELECT 1 from Product1 P2
   WHERE P2.Category = P.Category
    AND P2.Price > 5000);
    
SELECT *FROM Customer1
WHERE EXISTS (SELECT 1 FROM Order1  
INNER JOIN Product1 
ON ORDER1.ProductID = PRODUCT1.ProductID
WHERE ORDER1.CustomerID = CUSTOMER1.CustomerID
AND PRODUCT1.Price * ORDER1.Quantity > 1000);

SELECT * FROM Employees1  WHERE EXISTS 
(SELECT 1 FROM EmployeeProjects WHERE Employeeprojects .EmployeeID = Employees1.EmployeeID);

SELECT *FROM Course1 WHERE EXISTS (SELECT 1 FROM Enrollments  
WHERE Enrollments.CourseID = course1.CourseID);


SELECT *FROM Product1  WHERE EXISTS (SELECT 1 FROM Order1 WHERE Order1.ProductID = Product1.ProductID
AND Order1.Quantity > 2);

SELECT *FROM Customer1 WHERE EXISTS (SELECT 1 FROM Order1 WHERE Order1.CustomerID = Customer1.CustomerID
AND YEAR(order1.Order_Date) = 2026);

SELECT * FROM Student1 WHERE EXISTS (SELECT 1 FROM Assignments 
WHERE Assignments.StudentID = Student1.StudentID);

select * from assignments;

SELECT *FROM Customer1 WHERE NOT EXISTS (SELECT 1 FROM Order1
WHERE Order1.CustomerID = Customer1.CustomerID);

SELECT * FROM Product1 WHERE NOT EXISTS (SELECT 1 FROM Order1 
WHERE Order1.ProductID = Product1.ProductID);

SELECT * FROM Employees1 WHERE NOT EXISTS (SELECT 1
FROM EmployeeProjects 
WHERE Employeeprojects.EmployeeID = Employees1.EmployeeID);

SELECT * FROM Course1 WHERE NOT EXISTS (SELECT 1 FROM Enrollments 
WHERE Enrollments.CourseID = Course1.CourseID);

SELECT * FROM Department1
WHERE NOT EXISTS (SELECT 1 FROM Employees1 
WHERE Employees1.DepartmentID = Department1.DepartmentID);

SELECT *FROM Product1  WHERE NOT EXISTS (SELECT 1 FROM Order1 
WHERE Order1.ProductID = Product1.ProductID);

SELECT * FROM Employees1  WHERE NOT EXISTS (SELECT 1 FROM EmployeeProjects 
WHERE Employeeprojects.EmployeeID = Employees1.EmployeeID);

SELECT *FROM Student1 WHERE NOT EXISTS (SELECT 1 FROM Assignments 
WHERE Assignments.StudentID = Student1.StudentID);

SELECT * FROM Department1 WHERE NOT EXISTS (SELECT 1
FROM Employees1
WHERE Employees1.DepartmentID = Department1.DepartmentID
AND Employees1.Salary > 70000);


select * from employees1 where not exists(
select 1 from department1 where department1.departmentid=employees1.departmentid
and employees1.salary > 70000);

SELECT * FROM Product1 p WHERE NOT EXISTS (SELECT 1 FROM Product1 P2
WHERE P2.Category = P.Category
AND P2.Price > 50000);

SELECT * FROM Customer1 C WHERE NOT EXISTS (SELECT 1 FROM Order1 O WHERE O.CustomerID = C.CustomerID
AND O.price> 10000);

SELECT *FROM Course1 C WHERE NOT EXISTS (SELECT 1 FROM Enrollments E
WHERE E.CourseID = C.CourseID);

SELECT *FROM Product1 P WHERE NOT EXISTS (SELECT 1 FROM Order1 O WHERE O.ProductID = P.ProductID
AND O.Order_Date >= '2026-01-01'
AND O.Order_Date < '2026-12-25');

SELECT * FROM Customer1 C WHERE NOT EXISTS (SELECT 1 FROM Order1 O WHERE O.CustomerID = C.CustomerID
AND O.Order_Date >= '2026-01-01'
AND O.Order_Date < '2026-04-30');

SELECT * FROM Employees1 E WHERE NOT EXISTS (SELECT 1 FROM EmployeeProjects EP
WHERE EP.EmployeeID = E.EmployeeID
AND EP.Status = 'Active');

SELECT *FROM Student1 S
WHERE NOT EXISTS (SELECT 1 FROM Assignments A WHERE A.StudentID = S.StudentID
AND S.Status = 'Submitted');

SELECT * FROM Employees1 e
WHERE EXISTS (SELECT 1 FROM EmployeeProjects ep 
WHERE ep.EmployeeID = e.EmployeeID AND ep.STATUS = 'In Progress');

SELECT * FROM Customer1 c WHERE EXISTS (SELECT 1 FROM Order1 o 
WHERE o.CustomerID = c.CustomerID AND o.price > 5000);

SELECT * FROM Product1 p WHERE EXISTS (SELECT 1 FROM Order1 o 
WHERE o.ProductID = p.ProductID AND o.Quantity >2);

SELECT * FROM Student1 s WHERE EXISTS (SELECT 1 FROM Enrollments en
JOIN Course1 c ON en.CourseID = c.CourseID
WHERE en.StudentID = s.StudentID AND c.CourseName = 'data science');
select*from enrollments;

SELECT * FROM Employees1 e1 WHERE EXISTS ( SELECT 1 FROM Employees1 e2
WHERE e2.DepartmentID = e1.DepartmentID AND e2.Salary > 40000);

SELECT * FROM Student1 s1 WHERE EXISTS (SELECT 1 FROM Student1 s2
WHERE s2.DepartmentID = s1.DepartmentID AND s2.Marks > 90);

SELECT * FROM Product1 p1
WHERE EXISTS (
    SELECT 1 FROM Product1 p2
    WHERE p2.Category = p1.Category AND p2.Stock > 100
);

SELECT * FROM Employees1 e WHERE EXISTS (SELECT 1 FROM EmployeeProjects ep
WHERE ep.EmployeeID = e.EmployeeID AND ep.STATUS = 'Completed');

SELECT * FROM Student1 s WHERE EXISTS (SELECT 1 FROM Assignments a
WHERE a.StudentID = s.StudentID AND a.Marks > 80);

SELECT * FROM Course1 c WHERE EXISTS (
SELECT 1 FROM Enrollments en WHERE en.CourseID = c.CourseID);

SELECT * FROM Product1 p WHERE EXISTS (SELECT 1 FROM Order1 o
WHERE o.ProductID = p.ProductID 
AND o.Order_Date >= '2026-08-01' 
AND o.Order_Date < '2026-12-01');

SELECT * FROM Customer1 c WHERE EXISTS (SELECT 1 FROM Order1 o
WHERE o.CustomerID = c.CustomerID AND o.City = 'Chennai');

SELECT * FROM Employees1 e WHERE EXISTS (SELECT 1 FROM EmployeeProjects ep
WHERE ep.EmployeeID = e.EmployeeID AND ep.ProjectName = 'Database Migration');

SELECT * FROM Product1 p1
WHERE NOT EXISTS (SELECT 1 FROM Product1 p2
WHERE p2.Category = p1.Category AND p2.quantity <20);