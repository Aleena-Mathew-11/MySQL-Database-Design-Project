create database Employee;
show databases;
use employee;
create table departments(department_id int,department_name varchar(100));
create table Location(location_id int,location varchar(30));
create table employees(employee_id int,employee_name varchar(50),gender enum("M","F"),age int,hire_date date,designation varchar(100),department_id int,location_id int,salary decimal(10,2));
alter table employees add email varchar(100);
alter table employees modify designation varchar(200);
alter table employees drop column age;
alter table employees change hire_date date_of_joining date;
rename table departments to Departments_Info;
rename table department_info to departments_info;
rename table location to locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;



create database Employee;
show databases;
use employee;
CREATE TABLE Departments (department_id INT PRIMARY KEY,department_name VARCHAR(100) NOT NULL UNIQUE);
CREATE TABLE Location (location_id INT PRIMARY KEY AUTO_INCREMENT,location VARCHAR(100) NOT NULL UNIQUE);
create table employees (
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(100) NOT NULL,
gender ENUM('M','F') NOT NULL,
age INT CHECK (age >= 18),
hire_date datetime default current_timestamp,
department_id int,
location_id int);

describe employees;

alter table employees add constraint fk_dept foreign key(department_id) references departments(department_id);
alter table employees add constraint fk_location foreign key(location_id) references location(location_id);




