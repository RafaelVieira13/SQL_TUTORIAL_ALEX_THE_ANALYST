SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT first_name + ' ' + last_name AS full_name
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT AVG(age) AS avg_age
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT DEMO.employee_id, SAL.salary
--FROM SQLTutorial.dbo.EmployeeDemographics AS DEMO
--JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
--	ON DEMO.employee_id = SAL.employee_id

--SELECT DEMO.employee_id, DEMO.first_name, SAL.job_title, WARE.age
--FROM SQLTutorial.dbo.EmployeeDemographics AS DEMO
--LEFT JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
--	ON DEMO.employee_id = SAL.employee_id
--LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics AS WARE
--	on DEMO.employee_id = WARE.employee_id