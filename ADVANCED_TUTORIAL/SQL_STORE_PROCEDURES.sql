CREATE PROCEDURE TEST
AS
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

EXEC TEST

---- ANOTER STORED PROCEDURE
CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee (
job_title varchar(100),
employee_per_job int,
avg_age int,
avg_salary int)

INSERT INTO #temp_employee
SELECT job_title, COUNT(job_title), avg(age), avg(salary)
FROM SQLTutorial.dbo.EmployeeDemographics AS DEMO
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
ON DEMO.employee_id = SAL.employee_id
GROUP BY job_title

SELECT *
FROM #temp_employee

EXEC Temp_Employee @job_title = 'Salesman'