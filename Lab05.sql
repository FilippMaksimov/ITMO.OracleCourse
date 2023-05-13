Rem Task01
SELECT last_name, department_id, department_name
FROM employees LEFT JOIN departments
USING (department_id);
Rem Task02
SELECT DISTINCT(e.job_id) job_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
AND e.department_id = 80;
Rem Task03
SELECT e.last_name, d.department_name, d.location_id, l.city
FROM employees e LEFT JOIN departments d
ON e.department_id = d.department_id
LEFT JOIN locations l
ON d.location_id = l.location_id
WHERE e.commission_pct IS NOT NULL;
Rem Task04
SELECT e.last_name, d.department_name
FROM employees e LEFT JOIN departments d
ON (e.department_id = d.department_id)
WHERE e.last_name LIKE '%a%';
Rem Task05
SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id
WHERE l.city = 'Toronto';
Rem Task06
SELECT worker.last_name "Employee", worker.employee_id "EMP#", 
    mng.last_name "Manager", mng.employee_id "Mgr#"
FROM employees worker JOIN employees mng
ON (worker.manager_id = mng.employee_id);
Rem Task07
SELECT worker.last_name "Employee", worker.employee_id "EMP#", 
    mng.last_name "Manager", mng.employee_id "Mgr#"
FROM employees worker LEFT JOIN employees mng
ON (worker.manager_id = mng.employee_id)
ORDER BY worker.employee_id ASC;
Rem Task08
SELECT worker.department_id AS department, worker.last_name AS employee, 
    colleague.last_name AS colleague
FROM employees worker RIGHT JOIN employees colleague 
ON (worker.department_id = colleague.department_id)
WHERE worker.last_name <> colleague.last_name
ORDER BY worker.department_id ASC;  
Rem Task09
DESCRIBE job_grades;
SELECT e.last_name, e.job_id, d.department_name, e.salary, j.grade_level
FROM employees e LEFT JOIN departments d 
ON (e.department_id = d.department_id)
JOIN job_grades j
ON e.salary BETWEEN j.lowest_sal AND j.highest_sal;
Rem Task10
SELECT e.last_name, TO_CHAR(e.hire_date, 'DD-MON-YY') AS hire_date
FROM employees e CROSS JOIN employees davies
WHERE davies.last_name = 'Davies' AND e.hire_date > davies.hire_date;
Rem Task11
SELECT e.last_name "Employee", TO_CHAR(e.hire_date, 'DD-MON-YY') "Emp Hired",
    mng.last_name "Manager", TO_CHAR(mng.hire_date, 'DD-MON-YY') "Mgr Hired"
FROM employees e LEFT JOIN employees mng
ON (e.manager_id = mng.employee_id)
WHERE e.hire_date < mng.hire_date;
Rem Task12
SELECT d.department_id, d.department_name, d.location_id, COUNT(e.employee_id)
FROM departments d LEFT JOIN employees e
ON (d.department_id = e.department_id)
GROUP BY d.department_id, d.department_name, d.location_id
ORDER BY d.department_id ASC;
Rem Task13
SELECT e.job_id, COUNT(e.employee_id) AS frequency
FROM employees e LEFT JOIN departments d
ON (e.department_id = d.department_id)
WHERE d.department_name IN ('Administration','Executive')
GROUP BY e.job_id
ORDER BY frequency DESC;
Rem Task14
SELECT e.last_name, mng.last_name, mng.salary, j.grade_level
FROM employees e LEFT JOIN employees mng
ON (e.manager_id = mng.employee_id)
LEFT JOIN job_grades j
ON (mng.salary BETWEEN j.lowest_sal and j.highest_sal)
WHERE mng.salary > 15000
ORDER BY mng.salary DESC;
    
Rem commands for checking     
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM job_grades;
SELECT hire_date FROM employees WHERE last_name = 'Davies';