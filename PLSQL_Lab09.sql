Rem Task01
SET SERVEROUTPUT ON
CREATE PROCEDURE greet IS
  v_today DATE := SYSDATE;
  v_tommorow v_today%TYPE;
BEGIN
  v_tommorow := v_today +1;
  DBMS_OUTPUT.PUT_LINE('Hello, World');
  DBMS_OUTPUT.PUT_LINE('TODAY IS: '||v_today);
  DBMS_OUTPUT.PUT_LINE('TOMMOROW IS: '||v_tommorow);
END;
/
BEGIN
    greet;
END;
Rem task02
DROP PROCEDURE greet;
SET SERVEROUTPUT ON;
CREATE PROCEDURE greet(v_name IN VARCHAR2)  IS 
    v_today DATE:= SYSDATE;
    v_tommorow v_today%TYPE;
BEGIN
    v_tommorow:= v_today +1;
    DBMS_OUTPUT.PUT_LINE('Hello, '||v_name);
    DBMS_OUTPUT.PUT_LINE('TODAY IS: '||v_today);
    DBMS_OUTPUT.PUT_LINE('TOMMOROW IS: '||v_tommorow);
END;
/
BEGIN
    greet('Filipp');
END;