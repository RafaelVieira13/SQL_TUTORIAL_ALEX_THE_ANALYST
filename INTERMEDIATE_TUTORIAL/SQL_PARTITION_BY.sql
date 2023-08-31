--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics AS DEMO
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
ON DEMO.employee_id = SAL.employee_id

SELECT first_name, last_name, gender, salary, 
	COUNT(gender) OVER (PARTITION BY gender) AS total_gender
FROM SQLTutorial.dbo.EmployeeDemographics AS DEMO
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
ON DEMO.employee_id = SAL.employee_id

SELECT  gender, COUNT(gender) AS total_gender
FROM SQLTutorial.dbo.EmployeeDemographics AS DEMO
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
ON DEMO.employee_id = SAL.employee_id
GROUP BY  gender


