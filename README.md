# MySQL Employee Database: DDL Commands & Constraints

## 📌 Project Overview

This project demonstrates the implementation of MySQL Data Definition Language (DDL) commands and database constraints through the creation of an Employee Database Management System. The project focuses on designing a relational database schema, modifying table structures, applying constraints, and establishing relationships between tables using foreign keys.

---

## 🎯 Objectives

The primary objectives of this project are:

- Create an Employee database using MySQL.
- Design relational tables for Employees, Departments, and Locations.
- Perform DDL operations such as CREATE, ALTER, RENAME, TRUNCATE, and DROP.
- Apply database constraints to ensure data integrity.
- Establish relationships between tables using foreign keys.

---

## 🛠 Database Schema

### Departments Table

| Column Name | Data Type | Constraints |
|------------|-----------|-------------|
| department_id | INT | PRIMARY KEY |
| department_name | VARCHAR(100) | NOT NULL, UNIQUE |

### Location Table

| Column Name | Data Type | Constraints |
|------------|-----------|-------------|
| location_id | INT | PRIMARY KEY, AUTO_INCREMENT |
| location | VARCHAR(100) | NOT NULL, UNIQUE |

### Employees Table

| Column Name | Data Type | Constraints |
|------------|-----------|-------------|
| employee_id | INT | PRIMARY KEY, AUTO_INCREMENT |
| employee_name | VARCHAR(100) | NOT NULL |
| gender | ENUM('M','F') | NOT NULL |
| age | INT | CHECK(age >= 18) |
| hire_date | DATETIME | DEFAULT CURRENT_TIMESTAMP |
| department_id | INT | FOREIGN KEY |
| location_id | INT | FOREIGN KEY |

---

## 📚 SQL Concepts Covered

### DDL Commands

- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE
- RENAME TABLE
- TRUNCATE TABLE
- DROP TABLE
- DROP DATABASE

---

### Constraints

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK
- AUTO_INCREMENT
- DEFAULT

---

## 🔄 Operations Performed

### Table Creation

Created the following tables:

- Departments
- Location
- Employees

### Table Alteration

Performed the following modifications:

- Added Email column
- Modified Designation column datatype
- Dropped Age column
- Renamed Hire_Date column to Date_Of_Joining

### Table Renaming

- Departments → Departments_Info
- Location → Locations

### Database Management

- Truncated Employees table
- Dropped Employees table
- Dropped Employee database
- Recreated database with constraints

---

## 🔗 Relationships Implemented

### Department Relationship

ALTER TABLE employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

### Location Relationship

ALTER TABLE employees
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id)
REFERENCES location(location_id);

---

## 💻 Sample SQL Commands

### Create Database

CREATE DATABASE Employee;
USE Employee;

### Create Departments Table

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

### Create Location Table

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(100) NOT NULL UNIQUE
);

### Create Employees Table

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    gender ENUM('M','F') NOT NULL,
    age INT CHECK(age >= 18),
    hire_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    department_id INT,
    location_id INT
);

---

## 🧰 Technologies Used

- MySQL
- SQL
- Relational Database Management System (RDBMS)
- Database Design
- Data Definition Language (DDL)

---

## 🎓 Learning Outcomes

Through this project, I gained hands-on experience in:

- Database Creation and Management
- Table Design and Relationships
- Applying Constraints
- DDL Operations
- Schema Modification
- Data Integrity Enforcement
- Relational Database Modeling

---

## 🚀 Key Skills Demonstrated

✅ MySQL

✅ SQL DDL Commands

✅ Database Design

✅ Relational Modeling

✅ Constraint Management

✅ Foreign Key Relationships

✅ Database Administration Basics

---

## 👩‍💻 Author

Aleena Mathew

Aspiring Data Analyst | SQL | Excel | Power BI | Python
