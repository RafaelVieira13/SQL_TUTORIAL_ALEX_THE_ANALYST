--SELECT *
--FROM EmployeeDemographics

--SELECT first_name, last_name, age,
--CASE
--	WHEN age > 30 THEN 'Old'
--	ELSE 'Young'
--END
--FROM EmployeeDemographics
--WHERE age IS NOT NULL
--ORDER BY age

--SELECT first_name, last_name, age,
--CASE
--	WHEN age > 30 THEN 'Old'
--	WHEN age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--END
--FROM EmployeeDemographics
--WHERE age IS NOT NULL
--ORDER BY age


--SELECT first_name, last_name, age,
--CASE
--	WHEN age = 38 THEN 'Stanley'
--	WHEN age > 30 THEN 'Old'
--	ELSE 'Baby'
--END
--FROM EmployeeDemographics
--WHERE age IS NOT NULL
--ORDER BY age

--SELECT first_name, last_name,job_title, salary,
--CASE 
--	WHEN job_title = 'Salesman' THEN salary + (salary *.10)
--	WHEN job_title = 'Accountant' THEN salary +(salary * .05)
--	WHEN job_title = 'HR' THEN salary +(salary * .000001)
--	ELSE salary + (salary * .03)
--END AS salary_after_raise
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id

