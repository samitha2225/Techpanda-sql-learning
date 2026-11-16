
ALTER TABLE student MODIFY Email VARCHAR(50) FIRST;

ALTER TABLE Student MODIFY Student_name VARCHAR(100);

ALTER TABLE Student MODIFY Email VARCHAR(150) AFTER Student_name;

ALTER TABLE Student RENAME COLUMN Phone_num TO Mobile_num;

ALTER TABLE Student ADD COLUMN DOB date;

ALTER TABLE Student Drop COLUMN Gender;

ALTER TABLE Student ADD COLUMN marks INT;

ALTER TABLE Student ADD COLUMN location VARCHAR(50);


ALTER TABLE Employees MODIFY job_role VARCHAR(50) AFTER Salary;

ALTER TABLE Employees MODIFY Employee_name VARCHAR(100);

ALTER TABLE Employees MODIFY Department VARCHAR(100) AFTER Employee_name;

ALTER TABLE Employees RENAME COLUMN job_role TO Designation;

ALTER TABLE Employees ADD COLUMN Email VARCHAR(50);

ALTER TABLE Employees Drop COLUMN DOB;


ALTER TABLE Course MODIFY Fees INT AFTER Duriation;

ALTER TABLE Customers RENAME COLUMN Registration_date TO Registred_date;

ALTER TABLE Patients MODIFY Blood_Group VARCHAR(20) FIRST;

ALTER TABLE Patients MODIFY phone_num VARCHAR(20);

ALTER TABLE Patients ADD COLUMN Docter_name VARCHAR(50);

ALTER TABLE Room MODIFY Room_number Varchar(20) FIRST;

ALTER TABLE Room Drop COLUMN Floor_number;

ALTER TABLE Book1 MODIFY Price INT AFTER Book_Name;

ALTER TABLE Book1 MODIFY Book_name VARCHAR(150);

ALTER TABLE Book1 RENAME COLUMN Book_name TO Title;
                