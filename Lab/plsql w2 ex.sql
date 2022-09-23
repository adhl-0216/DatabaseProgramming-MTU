--e5
set serveroutput on
set verify on
DECLARE
   v_radius NUMBER := &sv_radius;
   c_pi CONSTANT NUMBER := 3.14;
   v_area NUMBER;
   
BEGIN
   v_area := c_pi*v_radius**2; 
   DBMS_OUTPUT.PUT_LINE ('The value of v_area is: '||v_area);
END;

--e7
SET SERVEROUTPUT ON
DECLARE
   v_name VARCHAR2(30); 
   v_dob DATE; 
   v_us_citizen BOOLEAN; 
BEGIN
   DBMS_OUTPUT.PUT_LINE(COALESCE(v_name, 'No Name ')||'born on'||COALESCE(v_name, ' No Name.'));
END; 

--e8
SET SERVEROUTPUT ON;
DECLARE
exception1 VARCHAR2(15);
BEGIN
exception1 := 'This is a test';
DBMS_OUTPUT.PUT_LINE(exception1);
END;

--e9
SET SERVEROUTPUT ON;
DECLARE
v_var1 NUMBER(3) := 123;
v_var2 NUMBER(3) := 123;
v_var3 NUMBER(10,3) := 123456.123;
BEGIN
DBMS_OUTPUT.PUT_LINE('v_var1: '||v_var1);
DBMS_OUTPUT.PUT_LINE('v_var2: '||v_var2);
DBMS_OUTPUT.PUT_LINE('v_var3: '||v_var3);
END;

--e10
SET SERVEROUTPUT ON
DECLARE
v_fname instructor.first_name%TYPE;
v_lname instructor.last_name%TYPE;
v_instructor_id instructor.INSTRUCTOR_ID%TYPE := &sv_instructor_id;
BEGIN
SELECT first_name, last_name
INTO v_fname, v_lname
FROM instructor
WHERE INSTRUCTOR_ID = v_instructor_id;

DBMS_OUTPUT.PUT_LINE(NVL(v_fname, 'No First Name ')||' '||NVL(v_lname, 'No Last Name.'));
END;

--e14
set SERVEROUTPUT ON;

DECLARE
    v_str VARCHAR2(50) := 'Introduction to Oracle PL/SQL';
    v_nom NUMBER(8,2) := 987654.55;
    v_const CONSTANT VARCHAR(4) := '603D';
    v_bool BOOLEAN;
    v_dmy DATE := SYSDATE+7;
BEGIN
    DBMS_OUTPUT.PUT_LINE(
                            'This is a size 50 string '||str||CHR(13)||CHR(13)||
                            'This is a size 8 number with 2 decimals only '||nom||CHR(13)||CHR(13)||
                            'This is a size 4 constant string '||const||CHR(13)||CHR(13)||
                            'The date a week from now is '||to_char(dmy,'DD/MM/YYYY')
                        );
    --nom = 987654.55
END;
