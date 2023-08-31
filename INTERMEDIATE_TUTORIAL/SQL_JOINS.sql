SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

SELECT *
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id


SELECT *
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id

SELECT *
FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id

SELECT EmployeeDemographics.employee_id, first_name, last_name, job_title, salary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id


SELECT EmployeeSalary.employee_id, last_name, job_title, salary
From EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id

SELECT EmployeeDemographics.employee_id, last_name, job_title, salary
From EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id

SELECT EmployeeDemographics.employee_id, first_name, last_name, salary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id
WHERE first_name <> 'Michael' AND last_name <> 'Scott'
ORDER BY salary DESC

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id

SELECT  job_title, AVG(salary) AS average_salesman_salary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.employee_id = EmployeeSalary.employee_id
WHERE job_title = 'Salesman'
GROUP BY job_title

