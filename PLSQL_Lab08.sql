Rem Task01
TRUNCATE TABLE messages;
ALTER TABLE messages
MODIFY results VARCHAR2(1000);
DECLARE
    v_ename employees.last_name%TYPE;
    v_emp_sal employees.salary%TYPE:= 2000;
BEGIN
    SELECT last_name INTO v_ename
    FROM employees
    WHERE salary = v_emp_sal;
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
        INSERT INTO messages(results)
        VALUES('Нет сотрудника с зарплатой '||v_emp_sal);
    WHEN TOO_MANY_ROWS THEN
        INSERT INTO messages(results)
        VALUES('Более одного сотрудника с зарплатой '||v_emp_sal);
    WHEN OTHERS THEN
        INSERT INTO messages(results)
        VALUES('Возникла другая ошибка');
END;
/
SELECT results FROM messages;
Rem Task02
SET SERVEROUTPUT ON;
DECLARE
    e_childrecord_exists EXCEPTION;
    PRAGMA EXCEPTION_INIT(e_childrecord_exists, -02292);
BEGIN 
    DELETE FROM departments
    WHERE department_id = 40;
    DBMS_OUTPUT.PUT_LINE('Удаление отдела 40........');
EXCEPTION
    WHEN e_childrecord_exists THEN
        DBMS_OUTPUT.PUT_LINE('Невозможно удалить этот отдел. '|| 
        'Есть сотрудники в этом отделе (существует одчерняя запись)');
END;