Rem Task01
SET SERVEROUTPUT ON
DECLARE 
    v_weight NUMBER(3):= 600;
    v_message VARCHAR2(255):= 'Product 10012';
BEGIN
    DECLARE
        v_weight NUMBER(3):= 1;
        v_message VARCHAR(255):= 'Product 11001';
        v_new_locn VARCHAR2(50):= 'Europe';
    BEGIN
        v_weight:= v_weight + 1;
        v_new_locn:= 'Western '||v_new_locn;
        DBMS_OUTPUT.PUT_LINE('Position 1');
        DBMS_OUTPUT.PUT_LINE(v_weight);
        DBMS_OUTPUT.PUT_LINE(v_new_locn);
    END;
    v_weight:= v_weight + 1;
    v_message:= v_message||' is in stock';
    v_new_locn:= 'Western '||v_new_locn;
    DBMS_OUTPUT.PUT_LINE(v_weight);
    DBMS_OUTPUT.PUT_LINE(v_message);
    DBMS_OUTPUT.PUT_LINE(v_new_locn);
END;

Rem Task02
SET SERVEROUTPUT ON
DECLARE 
    v_customer VARCHAR2(50):= 'Womansport';
    v_credit_rating VARCHAR2(50):= 'EXCELLENT';
BEGIN
    DECLARE 
        v_customer NUMBER(7):= 201;
        v_name VARCHAR2(25):= 'Unitsports';
    BEGIN
        v_credit_rating:='GOOD';
    END;
END;

Rem Task03
SET SERVEROUTPUT ON;
--VARIABLE b_basic_percent NUMBER;
--VARIABLE b_pf_percent NUMBER;
DECLARE
    b_basic_percent NUMBER(3):= 45;
    b_pf_percent NUMBER(3):= 12;
    v_fname VARCHAR2(15);
    v_emp_sal NUMBER(10);
    v_contrib NUMBER(4,1);
    v_hworld VARCHAR(20):= 'Hello';
    v_today DATE:= SYSDATE;
    v_tommorow v_today%TYPE;
BEGIN
    /*
    :b_basic_percent:= 45;
    :b_pf_percent:= 12;
    */
    SELECT first_name, salary INTO v_fname, v_emp_sal
    FROM employees 
    WHERE employee_id = 110;
    --v_tommorow:= v_today + 1;
    v_contrib:= (v_emp_sal*b_basic_percent/100)*b_pf_percent/100;
    DBMS_OUTPUT.PUT_LINE(v_hworld||' '||v_fname);
    /*DBMS_OUTPUT.PUT_LINE('TODAY IS : '|| TO_CHAR(v_today, 'DD-Mon-YY', 
        'NLS_DATE_LANGUAGE=american')); 
    DBMS_OUTPUT.PUT_LINE('TOMORROW IS : '|| TO_CHAR(v_tommorow, 'DD-Mon-YY', 
        'NLS_DATE_LANGUAGE=american'));*/
    DBMS_OUTPUT.PUT_LINE('YOUR SALARY IS: '||v_emp_sal);
    DBMS_OUTPUT.PUT_LINE('YOUR CONTRIBUTION TOWARD PF: '||v_contrib);
END;
/
--PRINT b_basic_percent
--PRINT b_pf_percent