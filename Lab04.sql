Rem Task01
SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date), 0) as month_worked
FROM employees
ORDER BY ROUND(MONTHS_BETWEEN(SYSDATE, hire_date), 0);
Rem Task02
SELECT CONCAT(last_name, 
    CONCAT(' зарабатывает $', 
        CONCAT(salary, 
            CONCAT( ' в мес€ц, но желает $', salary*3))))
    AS "Dream Salaries"
FROM employees;
Rem Task03
SELECT last_name, LPAD(salary, 15, '$') AS salary
FROM employees;
Rem Task04
SELECT last_name, hire_date, 
    TO_CHAR(hire_date, 'fmDay, "the" ddspth "of" Month, YYYY', 
        'NLS_DATE_LANGUAGE=american') AS review
FROM employees;
Rem Task05
SELECT last_name, hire_date, TO_CHAR(hire_date, 'fmDay') AS day
FROM employees;
Rem Task06
SELECT last_name, NVL2(commission_pct, TO_CHAR(commission_pct), 'No Comission') AS comm
FROM employees;
Rem Task07
SELECT job_id, 
    DECODE(job_id, 'AD_PRES', 'A',
                   'ST_MAN', 'B',
                   'IT_PROG', 'C',
                   'SA_REP', 'D',
                   'ST_CLERK', 'E',
            '0') AS g
FROM employees;
Rem Task08
SELECT job_id,
    (CASE job_id WHEN 'AD_PRES' THEN 'A'
                 WHEN 'ST_MAN' THEN 'B'
                 WHEN 'IT_PROG' THEN 'C'
                 WHEN 'SA_REP' THEN 'D'
                 WHEN 'ST_CLERK' THEN 'E'
    ELSE '0' END) AS g
FROM employees;