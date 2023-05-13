Rem Task01
SET SERVEROUTPUT ON
DECLARE 
    v_max_deptno NUMBER(3);
BEGIN
    SELECT MAX(department_id) INTO v_max_deptno
    FROM departments;
    DBMS_OUTPUT.PUT_LINE('The maximum department_id is: '||v_max_deptno);
END;

Rem Task02
SET SERVEROUTPUT ON
DECLARE 
    v_max_deptno NUMBER(3);
    v_dept_name departments.department_name%TYPE:= 'Education';
    v_dept_id NUMBER(3);
BEGIN
    SELECT MAX(department_id) INTO v_max_deptno
    FROM departments;
    v_dept_id:= v_max_deptno + 10;
    INSERT INTO departments(department_id, department_name, manager_id, location_id)
    VALUES(v_dept_id, v_dept_name, NULL, NULL);
    DBMS_OUTPUT.PUT_LINE('The maximum department_id is: '||v_max_deptno);
    DBMS_OUTPUT.PUT_LINE('SQL%ROWCOUNT gives '||SQL%ROWCOUNT);
END;
/
SELECT * FROM departments
WHERE department_id = 
    (SELECT MAX(department_id) FROM departments);

Rem Task03
SET SERVEROUTPUT ON
DECLARE 
    v_max_deptno NUMBER(3);
    v_dept_name departments.department_name%TYPE:= 'Education';
    v_dept_id NUMBER(3);
BEGIN
    SELECT MAX(department_id) INTO v_max_deptno
    FROM departments;
    v_dept_id:= v_max_deptno + 10;
    INSERT INTO departments(department_id, department_name, manager_id, location_id)
    VALUES(v_dept_id, v_dept_name, NULL, NULL);
    DBMS_OUTPUT.PUT_LINE('The maximum department_id is: '||v_max_deptno);
    DBMS_OUTPUT.PUT_LINE('SQL%ROWCOUNT gives '||SQL%ROWCOUNT);
END;
/
BEGIN
    UPDATE departments
    SET location_id = 3000
    WHERE department_id = 280;
END;
/
SELECT * FROM departments
WHERE ROWNUM = 1
ORDER BY department_id DESC;
BEGIN
    DELETE FROM departments 
    WHERE department_id = 280;
END;


SELECT * FROM departments;