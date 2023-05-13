Rem Task01 Check!!!
SELECT a.last_name, a.department_id, a.salary
FROM employees a
WHERE EXISTS 
    (SELECT NULL
    FROM employees b
    WHERE a.department_id = b.department_id
        AND a.salary = b.salary 
        AND a.commission_pct IS NOT NULL);
Rem Task02 Check!
SELECT e.last_name, d.department_name, e.salary
FROM employees e LEFT JOIN departments d
ON (e.department_id = d.department_id)
WHERE (e.salary, e.commission_pct) IN
    (SELECT salary, commission_pct
    FROM employees
    WHERE department_id IN
        (SELECT department_id 
        FROM departments
        WHERE location_id = 1700));
Rem Task03 Edit Date Format
SELECT e.last_name, e.hire_date, e.salary
FROM employees e 
WHERE (e.hire_date, e.salary) IN 
    (SELECT b.hire_date, b.salary
    FROM employees b 
    WHERE EXISTS 
        (SELECT NULL
        FROM employees c 
        WHERE c.last_name = 'Kochhar' AND b.salary = c.salary)
        AND b.last_name <> 'Kochhar');
Rem Task04
SELECT a.last_name, a.job_id, a.salary
FROM employees a
WHERE a.salary > ANY
    (SELECT b.salary
    FROM employees b
    WHERE job_id = 'SA_MAN')
ORDER BY a.salary DESC;
Rem Task05
SELECT employee_id, last_name, department_id
FROM employees 
WHERE department_id IN 
    (SELECT department_id 
    FROM departments
    WHERE location_id IN
        (SELECT location_id 
        FROM locations
        WHERE city LIKE 'T%'));
Rem Task06
SELECT a.last_name as ename, a.salary, a.department_id as deptno,
    (SELECT ROUND(AVG(b.salary), 4) 
    FROM employees b
    WHERE b.department_id = a.department_id) as dept_avg
FROM employees a
WHERE a.salary > 
    (SELECT AVG(b.salary)
    FROM employees b
    WHERE b.department_id = a.department_id)
ORDER BY dept_avg;
Rem Task07
SELECT a.last_name 
FROM employees a
WHERE NOT EXISTS 
    (SELECT NULL
    FROM employees b
    WHERE b.manager_id = a.employee_id);
Rem Task08
SELECT a.last_name
FROM employees a
WHERE a.employee_id NOT IN
    (SELECT b.manager_id
    FROM employees b);
Rem Using NOT IN for this query is not applicable!
Rem Task09
SELECT a.last_name 
FROM employees a 
WHERE a.salary <
    (SELECT AVG(b.salary)
    FROM employees b
    WHERE b.department_id = a.department_id);
Rem Task10
SELECT a.last_name 
FROM employees a 
WHERE EXISTS 
    (SELECT NULL
    FROM employees b
    WHERE b.department_id = a.department_id
        AND b.hire_date > a.hire_date
        AND b.salary > a.salary);
Rem Task11
SELECT e.employee_id, e.last_name,
    (SELECT d.department_name 
    FROM departments d 
    WHERE d.department_id = e.department_id) as department
FROM employees e;


SELECT * FROM employees;

        