Rem Task01
CREATE TABLE messages 
(results NUMBER(3) NULL);
BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN i IN (6, 8);
        INSERT INTO messages(results)
        VALUES(i);
    END LOOP;
    COMMIT;
END;
/
SELECT * FROM messages;
Rem Task02
CREATE TABLE emp
    AS (SELECT * FROM employees);
ALTER TABLE emp
    ADD stars VARCHAR2(50);
DECLARE 
    v_empno emp.employee_id%TYPE:=176;
    v_asterisk emp.stars%TYPE;
    v_sal emp.salary%TYPE;
BEGIN
    SELECT salary INTO v_sal
    FROM emp
    WHERE employee_id = v_empno;
    FOR i IN 1..ROUND(v_sal/1000) LOOP
        v_asterisk:=v_asterisk||'*';
    END LOOP;
    UPDATE emp
    SET stars = v_asterisk
    WHERE employee_id = v_empno;
    COMMIT;
END;
/
SELECT employee_id, salary, stars
FROM emp
WHERE employee_id = 176;
    



DESCRIBE employees;
SELECT * FROM emp