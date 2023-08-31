WITH CTE_Employee AS 
(SELECT first_name, last_name, gender, salary,
	COUNT(gender) OVER (PARTITION BY gender) AS total_gender,
	AVG(salary) OVER (PARTITION BY gender) AS avg_salary
FROM SQLTutorial.dbo.EmployeeDemographics AS EMP
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
	ON EMP.employee_id = SAL.employee_id
WHERE salary > '45000')
SELECT first_name, avg_salary
FROM CTE_Employee

