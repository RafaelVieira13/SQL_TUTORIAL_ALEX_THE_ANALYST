CREATE TABLE WareHouseEmployeeDemographics
(employee_id int,
first_name varchar(50),
last_name varchar(50),
age int, 
gender varchar(50))

INSERT INTO WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

SELECT *
FROM WareHouseEmployeeDemographics

SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN WareHouseEmployeeDemographics
ON EmployeeDemographics.employee_id = WareHouseEmployeeDemographics.employee_id

SELECT *
FROM EmployeeDemographics
UNION 
SELECT *
FROM WareHouseEmployeeDemographics

SELECT *
FROM EmployeeDemographics
UNION ALL
SELECT *
FROM WareHouseEmployeeDemographics
ORDER BY employee_id


----WRONG USE OF UNIONS
SELECT employee_id, first_name, age
FROM EmployeeDemographics
UNION
SELECT employee_id, job_title, salary
FROM EmployeeSalary
ORDER BY employee_id
