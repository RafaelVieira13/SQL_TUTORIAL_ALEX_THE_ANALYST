USE [SQLTutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 31/08/2023 09:11:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee]
@job_title nvarchar(100)
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
WHERE job_title = @job_title
GROUP BY job_title

SELECT *
FROM #temp_employee