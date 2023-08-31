
CREATE TABLE EmployeeErrors(
employee_id varchar(50),
first_name varchar(50),
last_name varchar(50))

INSERT INTO EmployeeErrors VALUES
('1001  ','Jimbo','Halbert'),
('  1002','Pamela','Beasely'),
('1005','TOby','Fienderson - Fired')

SELECT *
FROM SQLTutorial.dbo.EmployeeErrors

---- USING TRIM, LTRIM, RTRIM
SELECT employee_id, TRIM(employee_id) AS id_trim
FROM SQLTutorial.dbo.EmployeeErrors

SELECT employee_id, LTRIM(employee_id) AS id_ltrim
FROM SQLTutorial.dbo.EmployeeErrors

SELECT employee_id, RTRIM(employee_id) AS id_rtrim
FROM SQLTutorial.dbo.EmployeeErrors

--- Using Replace
SELECT last_name, REPLACE(last_name,'- Fired','') AS last_name_fixed
FROM SQLTutorial.dbo.EmployeeErrors

--- Using SUBSTRING
SELECT SUBSTRING(first_name,1,3)
FROM SQLTutorial.dbo.EmployeeErrors

SELECT SUBSTRING(ERRORS.first_name,1,3), DEMO.first_name,SUBSTRING(DEMO.first_name,1,3)
FROM SQLTutorial.dbo.EmployeeErrors AS ERRORS
JOIN SQLTutorial.dbo.EmployeeDemographics AS DEMO
ON SUBSTRING(ERRORS.first_name,1,3) = SUBSTRING(DEMO.first_name,1,3)

--- Using UPPER and LOWER
SELECT first_name, LOWER(first_name)
FROM SQLTutorial.DBO.EmployeeErrors

SELECT first_name, UPPER(first_name)
FROM SQLTutorial.DBO.EmployeeErrors
