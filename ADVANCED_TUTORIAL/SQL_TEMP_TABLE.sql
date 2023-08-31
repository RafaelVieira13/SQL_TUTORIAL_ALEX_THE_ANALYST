CREATE TABLE #temp_Employee (
employee_id int,
job_title varchar(100),
salary int)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES
('1001','HR','45000')

INSERT INTO #temp_Employee
SELECT * 
FROM SQLTutorial.dbo.EmployeeSalary


---- TEMP TABEL ACESS AND CREATION
DROP TABLE IF EXISTS #temp_employee2
CREATE TABLE #temp_employee2 (
job_title varchar(50),
employees_per_job int,
avg_age int,
avg_salary int)

INSERT INTO #temp_employee2
SELECT job_title, COUNT(job_title), AVG(age), AVG(salary)
FROM SQLTutorial.dbo.EmployeeDemographics AS DEMO
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
ON DEMO.employee_id = SAL.employee_id
GROUP BY job_title

SELECT *
FROM #temp_employee2