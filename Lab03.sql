Rem Task01
SELECT sysdate "Date"
FROM sys.dual;
Rem Task02
SELECT employee_id, last_name, salary, ROUND(salary * 1.15, 0) AS "New Salary"
FROM employees;
Rem Task03
SELECT employee_id, last_name, salary, ROUND(salary * 1.15, 0) AS "New Salary",
    ROUND(salary * 1.15, 0) - salary AS "Increase"
FROM employees;
Rem Task04
SELECT INITCAP(last_name) AS "Name", LENGTH(last_name) AS "Lenght"
FROM employees
WHERE SUBSTR(last_name, 1, 1) IN ('J', 'A', 'M');
Rem Task05
SELECT TO_CHAR(hire_date, 'fmDay, "the" ddspth "of" Month, YYYY', 'NLS_DATE_LANGUAGE=american')
FROM employees;
