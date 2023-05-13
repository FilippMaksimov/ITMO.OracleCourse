SET SERVEROUTPUT ON

DECLARE
    NUMBER# VARCHAR(2):= 't';
BEGIN
    DBMS_OUTPUT.PUT_LINE(NUMBER#);
END;

DECLARE
v_fname VARCHAR2(20);
v_lname VARCHAR2(15) DEFAULT 'fernandez';
BEGIN
DBMS_OUTPUT.PUT_LINE(v_fname ||' '|| v_lname);
END;

Rem Task04
SET SERVEROUTPUT ON
DECLARE 
    v_hworld VARCHAR(20):= 'Hello World';
    v_today DATE:= SYSDATE;
    v_tommorow v_today%TYPE;
BEGIN
    v_tommorow:= v_today + 1;
    DBMS_OUTPUT.PUT_LINE(v_hworld);
    DBMS_OUTPUT.PUT_LINE('TODAY IS : '|| TO_CHAR(v_today, 'DD-Mon-YY', 
        'NLS_DATE_LANGUAGE=american')); 
    DBMS_OUTPUT.PUT_LINE('TOMORROW IS : '|| TO_CHAR(v_tommorow, 'DD-Mon-YY', 
        'NLS_DATE_LANGUAGE=american'));
END;

Rem Task05
SET SERVEROUTPUT ON;
VARIABLE b_basic_percent NUMBER;
VARIABLE b_pf_percent NUMBER;
DECLARE 
    v_hworld VARCHAR(20):= 'Hello World';
    v_today DATE:= SYSDATE;
    v_tommorow v_today%TYPE;
BEGIN
    :b_basic_percent:= 45;
    :b_pf_percent:= 12;
    v_tommorow:= v_today + 1;
    DBMS_OUTPUT.PUT_LINE(v_hworld);
    DBMS_OUTPUT.PUT_LINE('TODAY IS : '|| TO_CHAR(v_today, 'DD-Mon-YY', 
        'NLS_DATE_LANGUAGE=american')); 
    DBMS_OUTPUT.PUT_LINE('TOMORROW IS : '|| TO_CHAR(v_tommorow, 'DD-Mon-YY', 
        'NLS_DATE_LANGUAGE=american'));
END;
/
PRINT b_basic_percent
PRINT b_pf_percent