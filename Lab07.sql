Rem Task01
SELECT last_name, TO_CHAR(hire_date, 'DD-MON-YY') AS hire_date
FROM employees
WHERE department_id = 
    (SELECT department_id 
    FROM employees 
    WHERE last_name = 'Zlotkey') AND last_name <> 'Zlotkey';
Rem Task02
SELECT employee_id, last_name, salary
FROM employees
WHERE salary > 
    (SELECT AVG(salary) FROM employees)
ORDER BY salary;
Rem Task03
SELECT employee_id, last_name
FROM employees
WHERE department_id IN 
    (SELECT department_id
    FROM employees 
    WHERE last_name LIKE '%u%' OR last_name LIKE 'U%');
Rem Task04
SELECT last_name, department_id, job_id
FROM employees
WHERE department_id IN 
    (SELECT department_id 
    FROM  departments 
    WHERE location_id = 1700);
Rem Task05
SELECT last_name, salary
FROM employees
WHERE manager_id = ANY
    (SELECT employee_id 
    FROM employees
    WHERE last_name = 'King');
Rem Task06
SELECT department_id, last_name, job_id
FROM employees
WHERE department_id = 
    (SELECT department_id 
    FROM departments
    WHERE department_name = 'Executive');
Rem Task07
SELECT employee_id, last_name, salary
FROM employees
WHERE department_id IN 
    (SELECT department_id
    FROM employees 
    WHERE last_name LIKE '%u%' OR last_name LIKE 'U%')
    AND salary > ALL
        (SELECT AVG(salary) FROM employees);
Rem Task08
SELECT department_id, MIN(salary)
FROM employees
WHERE department_id = 
    (SELECT department_id
    FROM employees
    WHERE salary = 
        (SELECT MAX(salary) FROM employees)) 
GROUP BY department_id;
Rem Task09
SELECT *
FROM departments
WHERE department_id <> ANY
    (SELECT department_id 
    FROM employees
    WHERE job_id = 'SA_REP');