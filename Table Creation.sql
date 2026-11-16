CREATE DATABASE StudentDB;
USE StudentDB;
CREATE TABLE Student(Student_id INT PRIMARY KEY,
Student_name VARCHAR(20),
Age int,Gender VARCHAR(10),
Email VARCHAR(50),
Phone_num VARCHAR(11),
Department VARCHAR(50));
select*from Student;
DESC Student;

CREATE DATABASE EmployeeDB;
USE EmployeeDB;
CREATE TABLE Employees(Emplooyee_id INT PRIMARY KEY,
Employee_name VARCHAR(20),
DOB Date,
Gender CHAR(1),
Department VARCHAR(40),
job_role VARCHAR(50),
Salary INT,
Joining_date Date);
select*from Employees;
DESC Employees;

CREATE DATABASE CollegeDB;
USE CollegeDB;
CREATE TABLE Course(Course_id INT PRIMARY Key,
Course_name VARCHAR(20),
Duriation datetime,
Department VARCHAR(30),
Fees INT,
Faculty_name VARCHAR(20));
select*from Course;
DESC Course;

CREATE DATABASE EcommerceDB;
USE EcommerceDB;
CREATE TABLE Customers(Customer_id INT PRIMARY Key,
Customer_name VARCHAR(10),
Email VARCHAR(20),
Phone VARCHAR(10),
City VARCHAR(120),
State VARCHAR(20),
Country VARCHAR(20),
Registration_date date);
select*from Customers;
DESC Customers;

CREATE DATABASE HospitalDB;
USE HospitalDB;
CREATE TABLE Patients(Patient_name VARCHAR(20),
patient_id INT PRIMARY KEY,
Age int,
Gender CHAR(1),
Blood_Group VARCHAR(20),
phone_num VARCHAR(11),
Disease VARCHAR(40),
Admission_date DATE);
select*from Patients;
DESC Patients;

CREATE DATABASE HotelDB;
USE HotelDB;
CREATE TABLE Room(Room_id INT PRIMARY Key,
Room_number INT,
Room_Type VARCHAR(30),
Price_perday INT,
Availability VARCHAR(5),
Floor_number INT);
select*from Room;
DESC Room;

CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Book1(Book_id INT PRIMARY Key,
Book_name VARCHAR(20),
Author VARCHAR(30),
catogery VARCHAR(40),
Price INT,
Published_yr datetime,
Quantity INT);
select*from Book1;
DESC Book1;