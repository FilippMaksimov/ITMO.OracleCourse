Rem Task01
SET SERVEROUTPUT ON
DECLARE 
    v_countryid countries.country_id%TYPE:= 'CA';
    v_country_record countries%ROWTYPE;
BEGIN    
    SELECT * INTO v_country_record
    FROM countries 
    WHERE country_id = v_countryid;
    DBMS_OUTPUT.PUT_LINE('Country Id: '||v_country_record.country_id||
    ' Country Name: '||v_country_record.country_name||
    'Region: '||v_country_record.region_id);
END;
Rem Task02
SET SERVEROUTPUT ON
DECLARE 
    TYPE dept_table_type IS TABLE OF 
    departments.department_name%TYPE
    INDEX BY PLS_INTEGER;
    f_loop_count NUMBER:= 10;
    v_deptno NUMBER:= 0;
    dept_table dept_table_type;
BEGIN
    FOR i IN 1..f_loop_count LOOP
        v_deptno:= v_deptno + 10;
        SELECT department_name INTO dept_table(i) 
        FROM departments 
        WHERE department_id = v_deptno;
    END LOOP;    
    FOR item IN dept_table.FIRST..dept_table.LAST LOOP
        DBMS_OUTPUT.PUT_LINE(dept_table(item));
    END LOOP;
END;
Rem Task03
SET SERVEROUTPUT ON
DECLARE 
    TYPE dept_table_type IS TABLE OF 
    departments%ROWTYPE INDEX BY PLS_INTEGER;
    f_loop_count NUMBER:= 10;
    v_deptno NUMBER:= 0;
    dept_table dept_table_type;
BEGIN
    FOR i IN 1..f_loop_count LOOP
        v_deptno:= v_deptno + 10;
        SELECT * INTO dept_table(i) 
        FROM departments 
        WHERE department_id = v_deptno;
    END LOOP;    
    FOR item IN dept_table.FIRST..dept_table.LAST LOOP
        DBMS_OUTPUT.PUT_LINE('Department Number: '||dept_table(item).department_id||
            ' Department Name: '||dept_table(item).department_name||
            ' Manager Id: '||dept_table(item).manager_id||
            ' Location Id: '||dept_table(item).location_id);
    END LOOP;
END;
    
DESCRIBE countries;
DESCRIBE departments;