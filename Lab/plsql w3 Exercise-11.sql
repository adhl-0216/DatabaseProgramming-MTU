DECLARE
    v_char VARCHAR(1) := '&sv_char';
    
BEGIN
    IF REGEXP_LIKE(v_char,'^[A-Za-z]+$') 
    THEN
        DBMS_OUTPUT.PUT_LINE(v_char || ' is a letter.');
    ELSIF REGEXP_LIKE(v_char,'^[0-9]+$')
    THEN
        DBMS_OUTPUT.PUT_LINE(v_char || ' is a digit.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_char || ' is not a letter nor a digit.');
    END IF;
END;