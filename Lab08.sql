Rem Task01
SELECT department_id
FROM employees
WHERE department_id IS NOT NULL
MINUS 
SELECT department_id
FROM employees
WHERE job_id = 'ST_CLERK';
Rem Task02
SELECT country_id, country_name
FROM countries
MINUS 
SELECT country_id, country_name
FROM countries 
WHERE country_id IN 
    (SELECT country_id FROM locations);
Rem Task03
SELECT DISTINCT(job_id), department_id
FROM
    (SELECT job_id, department_id
    FROM employees
    WHERE department_id IN (10,20)
    UNION ALL
    SELECT job_id, department_id 
    FROM employees
    WHERE department_id = 50)
ORDER BY DECODE(department_id, 10,1, 50,2, 20,3);
Rem Task04
SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;
Rem Task05 Check!!!
SELECT employee_id, department_id, TO_CHAR(NULL) department_name
FROM employees 
UNION
SELECT TO_NUMBER(NULL) employee_id, department_id, department_name
FROM departments;


SELECT * FROM countries;
SELECT * FROM regions;
SELECT * FROM locations;
SELECT * FROM job_history;
SELECT * FROM jobs;
DESCRIBE departments;
DESCRIBE employees; 