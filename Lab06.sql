Rem Task01
SELECT ROUND(MAX(salary)) "Maximum", ROUND(MIN(salary)) "Minimum", 
    ROUND(SUM(salary)) "Sum", ROUND(AVG(salary)) "Avarage"
FROM employees;
Rem Task02
SELECT job_id, ROUND(MAX(salary)) "Maximum", ROUND(MIN(salary)) "Minimum", 
    ROUND(SUM(salary)) "Sum", ROUND(AVG(salary)) "Avarage"
FROM employees
GROUP BY job_id;
Rem Task03
SELECT job_id, COUNT(*)
FROM employees 
GROUP BY job_id;
Rem Task04
Rem v1
SELECT COUNT(DISTINCT manager_id) "Number of Managers"
FROM employees;
Rem v2
SELECT COUNT(COUNT(manager_id))
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;
Rem Task05
SELECT (MAX(salary)-MIN(salary)) AS difference
FROM employees;
Rem Task06
SELECT manager_id, MIN(salary)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary)>6000
ORDER BY MIN(salary) DESC;
Rem Task07 skip with join
SELECT d.department_name "Name", d.location_id "Location",
    COUNT(e.employee_id), ROUND(AVG(e.salary), 0) "Salary"
FROM departments d LEFT JOIN employees e
ON (d.department_id = e.department_id)
GROUP BY d.department_id, d.department_name, d.location_id
HAVING ROUND(AVG(e.salary)) IS NOT NULL;
Rem Task08
SELECT COUNT(*) total, 
    SUM(DECODE(TO_CHAR(hire_date,'YYYY'), 1995, 1)) AS "1995",
    SUM(DECODE(TO_CHAR(hire_date,'YYYY'), 1996, 1)) AS "1996",
    SUM(DECODE(TO_CHAR(hire_date,'YYYY'), 1997, 1)) AS "1997",
    SUM(DECODE(TO_CHAR(hire_date,'YYYY'), 1998, 1)) AS "1998"
FROM employees;    
Rem Task09
SELECT job_id AS "Job",
    SUM(DECODE(department_id, 20, salary)) AS "Dept20",
    SUM(DECODE(department_id, 50, salary)) AS "Dept50",
    SUM(DECODE(department_id, 80, salary)) AS "Dept80",
    SUM(DECODE(department_id, 90, salary)) AS "Dept90",
    SUM(salary) AS "Total"
FROM employees
GROUP BY job_id;

SELECT * FROM employees;
