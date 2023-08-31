SELECT *
FROM EmployeeSalary

--- SUBQUERY in SELECT
SELECT employee_id, salary, (SELECT AVG(salary) FROM EmployeeSalary) AS all_avg_salary
FROM EmployeeSalary

--- How to do it with PARTITION BY
SELECT employee_id, salary, AVG(salary) OVER () AS all_avg_salary
FROM EmployeeSalary

--- Why Group By doesn´t work
SELECT employee_id, salary, AVG(salary) AS all_avg_salary
FROM EmployeeSalary
GROUP BY employee_id, salary
ORDER BY 1,2

--- Subquery in From
SELECT a.employee_id, all_avg_salary
FROM (SELECT employee_id, salary, AVG(salary) OVER () AS all_avg_salary
	  FROM EmployeeSalary) AS a

--- Subquery in WHERE
SELECT employee_id, job_title, salary 
FROM EmployeeSalary
WHERE employee_id IN (
		SELECT employee_id
		FROM EmployeeDemographics
		WHERE age > 30)