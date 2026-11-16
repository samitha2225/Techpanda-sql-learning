SELECT * FROM student 
WHERE Department IN (SELECT Department FROM student WHERE Student_name = 'samitha');

SELECT * FROM student 
WHERE Department IN (SELECT Department FROM student WHERE Age > 22);

SELECT * FROM student 
WHERE Department IN (SELECT Department FROM student WHERE Age > 25);

SELECT * FROM student
WHERE Department IN (SELECT Department FROM student WHERE Age BETWEEN 20 AND 25);

SELECT * FROM student 
WHERE Age > (SELECT AVG(Age) FROM student WHERE Department = 'it');

SELECT * FROM student 
WHERE Age < (SELECT AVG(Age) FROM student WHERE Department = 'CSE');

SELECT * FROM student
WHERE Age = (SELECT MAX(Age) FROM student WHERE Department = 'CSE');

SELECT * FROM student
WHERE Age = (SELECT MIN(Age) FROM student WHERE Department = 'IT');

select*from student s1
where age >(select avg(age) from student s2 where s2.department= s1.department);

select*from student s1
where age < (select avg(age) from student s2 where s2.department= s1.department);

SELECT * FROM student s1
WHERE Age = (SELECT MAX(Age) FROM student s2 WHERE s2.Department = s1.Department);

SELECT * FROM student s1
WHERE Age = (SELECT MAX(Age) FROM student s2 WHERE s2.Department = s1.Department);

SELECT * FROM student s1
WHERE Age = (SELECT MIN(Age) FROM student s2 WHERE s2.Department = s1.Department);

SELECT * FROM student s1
WHERE Age > (SELECT AVG(Age) FROM student s2 WHERE s2.Gender = s1.Gender);