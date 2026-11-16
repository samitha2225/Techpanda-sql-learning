DELIMITER //
    CREATE PROCEDURE STUDENTS(
    IN DEPT VARCHAR(50))
    BEGIN
    SELECT * FROM STUDENT WHERE DEPARTMENT ='IT';
    END //
    DELIMITER ;
    CALL STUDENTS('IT');
    
    DELIMITER //
    CREATE PROCEDURE GET_MARKS(
    IN STUD_ID INT)
    BEGIN
    SELECT SUM(MARKS)AS TOTAL_MARKS,
    AVG(MARKS)AS AVG_MARKS FROM STUDENT 
    WHERE STUDENT_ID=STUD_ID;
    END //
    DELIMITER ;
    CALL GET_MARKS('1');
    
    DELIMITER //
    CREATE PROCEDURE STUD_RESULT(
    IN STUD_ID INT)
    BEGIN
    IF(SELECT MARKS FROM STUDENT WHERE STUDENT_ID=STUD_ID) >= 50 THEN
    SELECT 'PASS' AS RESULT;
    ELSE
    SELECT 'FAIL' AS RESULT;
    END IF ;
    END //
    DELIMITER ;
    
    CALL STUD_RESULT(2);
    
    DELIMITER //
    CREATE PROCEDURE STUD_AVG3(
    IN STUD_ID INT)
    BEGIN
    SELECT STUDENT_NAME,
    SUM(MARKS)AS TOTAL_MARKS,
    AVG(MARKS)AS AVG_MARKS, 
    CASE
     WHEN AVG(marks) >= 90 THEN 'A+'
	 WHEN AVG(marks) >= 80 THEN 'A'
	 WHEN AVG(marks) >= 70 THEN 'B'
	 WHEN AVG(marks) >= 60 THEN 'C'
	 WHEN AVG(marks) >= 50 THEN 'D'
	 ELSE 'F'
	 END AS GRADE
	 FROM STUDENT ;
    END //
    DELIMITER ;
    
    CALL STUD_AVG3(70);
    
    DELIMITER //
create procedure employees(
IN dept VARCHAR(40))
BEGIN
SELECT * FROM employees WHERE department=dept;
END //
DELIMITER ;
CALL employees('HR');
 
 DELIMITER //
 CREATE procedure salary_percentage(
 IN emp_id INT,
 IN percentage INT)
 BEGIN
 UPDATE employees SET salary=salary+(salary * percentage /100) 
 WHERE emplooyee_id=emp_id;
 END //
 DELIMITER ;
 call salary_percentage(112,5);
 SELECT emplooyee_id, employee_name, salary
 FROM employees
 WHERE emplooyee_id = 112;
 
 
DELIMITER //
CREATE PROCEDURE annual_salary1(IN emp_id INT)
BEGIN
SELECT employee_name,salary * 12 AS `annual salary` FROM employees
WHERE emplooyee_id = emp_id;
END //
DELIMITER ;
 CALL annual_salary1(112);
 
 DELIMITER //
 CREATE PROCEDURE GREATER_AMOUNT(
 IN amount DECIMAL(10,2))
 BEGIN
 SELECT * FROM employees WHERE salary > amount ;
 END //
 DELIMITER ;
CALL greater_amount(50000);


DELIMITER //
CREATE PROCEDURE salary_report2()
BEGIN
SELECT employee_name,
salary,
department FROM employees ORDER BY department;
END //
DELIMITER ;

CALL salary_report2();

DELIMITER //
CREATE PROCEDURE department_salary(
IN dept VARCHAR(50))
BEGIN
SELECT department,SUM(salary)AS total_salary FROM employees
WHERE department=dept GROUP BY department;
END //
DELIMITER ;

CALL department_salary('HR');

DELIMITER //
CREATE PROCEDURE update_salary(
    IN emp_id INT,
    IN new_salary DECIMAL(10,2)
)
BEGIN
    DECLARE old_salary DECIMAL(10,2);
    SELECT salary INTO old_salary
    FROM employees
    WHERE emplooyee_id = emp_id;
    UPDATE employees
    SET salary = new_salary
    WHERE emplooyee_id = emp_id;
    INSERT INTO salary_audit
    VALUES(eid, old_salary, new_salary, CURDATE());
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE employee_bonus1(IN emp_id INT)
BEGIN
SELECT
employee_name,
salary,
performance_rating,
CASE
WHEN performance_rating >= 5 THEN salary * 0.20
WHEN performance_rating >= 4 THEN salary * 0.15
WHEN performance_rating >= 3 THEN salary * 0.10
ELSE salary * 0.05
END AS bonus
FROM employees
WHERE emplooyee_id = emp_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_discharge(
IN pat_id INT,
IN status_value VARCHAR(20),
IN discharge_dt DATE)
BEGIN
UPDATE patients SET discharge_status = status_value,
discharge_date = discharge_dt
WHERE patient_id = pat_id;
SELECT 'Discharge details updated successfully' AS Message;
END //
DELIMITER ;