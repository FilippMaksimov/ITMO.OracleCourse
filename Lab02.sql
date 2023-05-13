Rem Task01
SELECT last_name, salary
FROM employees 
WHERE salary < 12000
ORDER BY salary DESC;
Rem Task02
SELECT last_name, department_id 
FROM employees 
WHERE employee_id = 176;
Rem Task03
SELECT last_name, salary
FROM employees 
WHERE salary NOT BETWEEN 5000 AND 12000;
Rem Task04
SELECT last_name, job_id, hire_date
FROM employees 
WHERE hire_date BETWEEN '20.02.1998' AND '01.05.1998' 
ORDER BY hire_date ASC;
Rem Task05
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name ASC;
Rem Task06
SELECT last_name AS "Employee", salary AS "Mounthly Salary"
FROM employees
WHERE department_id IN (20, 50) 
    AND salary BETWEEN 5000 AND 12000;
Rem Task07
SELECT last_name, hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1994;
Rem Task08
SELECT last_name, job_id 
FROM employees
WHERE manager_id IS NULL;
Rem Task09
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;
Rem Task10
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';
Rem Task11
SELECT last_name
FROM employees
WHERE (last_name LIKE '%a%' OR last_name LIKE 'A%')
    AND (last_name LIKE '%e%' OR last_name LIKE 'E%');
Rem Task12
SELECT last_name, job_id, salary
FROM employees 
WHERE job_id IN ('ST_CLERK','SA_REP') 
    AND salary NOT IN (2500, 3500, 7000);
Rem Task13
SELECT last_name AS "Employee", salary AS "Mounthly Salary", commission_pct
FROM employees
WHERE commission_pct > 0.2;