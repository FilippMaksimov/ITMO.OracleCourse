Rem Task01
SELECT employee_id, last_name, salary*12 AS "ANNUAL SALARY" 
FROM employees;
Rem Task02
DESCRIBE departments;

SELECT * 
FROM departments;
Rem Task03
DESCRIBE employees;
Rem Task04
SELECT employee_id, first_name||' '||last_name AS employee_name, job_id, hire_date
FROM employees;
Rem Task05
SELECT DISTINCT job_id
FROM employees;
Rem Task06
SELECT last_name||', '||job_id "Employee and Title"
FROM employees;
Rem Task07
SELECT employee_id||','||first_name||','||last_name||','||email||','||
    phone_number||','||hire_date||','||job_id||','||salary||','||
    commission_pct||','||manager_id||','||department_id AS the_output
FROM employees;
    
