Rem Task01
SELECT last_name, salary, department_id
FROM employees
START WITH last_name = 'Mourgos'
CONNECT BY PRIOR employee_id = manager_id;
Rem Task02
SELECT last_name 
FROM employees 
WHERE last_name <> 'Lorentz'
START WITH last_name = 'Lorentz'
CONNECT BY PRIOR manager_id = employee_id;
Rem Task03
SELECT LPAD(last_name, LENGTH(last_name)+(LEVEL*2)-2,'_') as name,
    manager_id as mgr, department_id as deptno
FROM employees 
START WITH last_name = 'Kochhar'
CONNECT BY PRIOR employee_id = manager_id
ORDER BY LEVEL;
Rem Task04
SELECT last_name, employee_id, manager_id
FROM employees 
WHERE job_id <> 'IT_PROG'
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id
AND last_name <> 'De Haan'
ORDER BY LEVEL;


SELECT * FROM employees;