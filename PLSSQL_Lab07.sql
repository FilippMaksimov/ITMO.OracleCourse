Rem Task01.01
SET SERVEROUTPUT ON
DECLARE 
    v_deptno NUMBER:=50;
    CURSOR c_emp_cursor IS
    SELECT last_name, salary, manager_id
    FROM employees
    WHERE department_id = v_deptno;
BEGIN
    FOR emp_record IN c_emp_cursor LOOP
        IF emp_record.salary < 5000 AND emp_record.manager_id IN (101, 124) THEN
            DBMS_OUTPUT.PUT_LINE(emp_record.last_name||' для повышения');
        ELSE
            DBMS_OUTPUT.PUT_LINE(emp_record.last_name||' не для повышения');
        END IF;
    END LOOP;
END;
Rem Task01.02
SET SERVEROUTPUT ON
DECLARE 
    CURSOR c_dept_cursor IS 
    SELECT department_id, department_name 
    FROM departments
    WHERE department_id < 100;
    CURSOR c_emp_cursor(v_deptno NUMBER) IS 
    SELECT last_name, job_id, hire_date, salary
    FROM employees
    WHERE employee_id < 120 AND department_id = v_deptno;
    v_department_id departments.department_id%TYPE;
    v_department_name departments.department_name%TYPE;
    v_last_name employees.last_name%TYPE;
    v_job_id employees.job_id%TYPE;
    v_hire_date employees.hire_date%TYPE;
    v_salary employees.salary%TYPE;
BEGIN
    OPEN c_dept_cursor;
    LOOP 
        FETCH c_dept_cursor INTO v_department_id, v_department_name;
        EXIT WHEN c_dept_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Department Number: '||v_department_id||
        ' Department Name: '||v_department_name);
        IF NOT c_emp_cursor%ISOPEN THEN
            OPEN c_emp_cursor(v_department_id);
        END IF;
        LOOP 
            FETCH c_emp_cursor INTO v_last_name, v_job_id, v_hire_date, v_salary;
            EXIT WHEN c_emp_cursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE(v_last_name||' '||v_job_id||' '||v_hire_date||
            ' '||v_salary);
        END LOOP;
        DBMS_OUTPUT.PUT_LINE(RPAD('-',70,'-'));
        CLOSE c_emp_cursor;
    END LOOP;
    CLOSE c_dept_cursor;
END;
Rem Task02
CREATE TABLE top_salaries (salary NUMBER(8,2));
TRUNCATE TABLE top_salaries;
DECLARE
    v_num NUMBER:= 5;
    v_sal employees.salary%TYPE;
    CURSOR c_emp_cursor IS 
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC;
BEGIN
    OPEN c_emp_cursor;
    LOOP
        FETCH c_emp_cursor INTO v_sal;
        EXIT WHEN c_emp_cursor%ROWCOUNT > v_num OR c_emp_cursor%NOTFOUND;
        INSERT INTO top_salaries(salary) VALUES(v_sal);
    END LOOP;
    CLOSE c_emp_cursor;
    COMMIT;
END;
/
SELECT * FROM top_salaries;