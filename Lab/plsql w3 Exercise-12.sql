DECLARE
    v_marks NUMBER := &sv_marks;
    v_grade VARCHAR(1);
BEGIN
    IF (v_marks>=90)
    THEN
        v_grade := 'A';
    ELSIF (v_marks BETWEEN 80 AND 89)
    THEN
        v_grade := 'B';
    ELSIF (v_marks BETWEEN 70 AND 79)
    THEN
        v_grade := 'C';
    ELSIF (v_marks BETWEEN 60 AND 69)
    THEN
        v_grade := 'D';
    ELSE
        v_grade := 'F';
    END IF;
    DBMS_OUTPUT.PUT_LINE('Grade: '||v_grade);
END;