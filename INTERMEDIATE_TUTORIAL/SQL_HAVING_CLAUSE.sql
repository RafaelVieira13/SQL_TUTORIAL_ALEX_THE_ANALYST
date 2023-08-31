SELECT *
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id


SELECT job_title, COUNT(job_title) 
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id
GROUP BY job_title
HAVING  COUNT(job_title)  > 1

SELECT job_title, AVG(salary) 
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id
GROUP BY job_title
HAVING  AVG(salary)  > 45000 
ORDER BY AVG(salary) 
