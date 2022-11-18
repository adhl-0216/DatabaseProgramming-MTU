CREATE TABLE  MOVIES
       (ID NUMBER(3),
        TITLE VARCHAR2(30),
        DIRECTOR VARCHAR2(25),
		SYNOPSIS VARCHAR2(60),
	constraint movies_pk primary key(ID) );

INSERT INTO MOVIES VALUES (1, 'Top Gun', 'Tony Scott', 'When Maverick encounters a pair of MiGs...' );
INSERT INTO MOVIES VALUES (2, 'Jaws', 'Steven Spielberg', 'A tale of a white shark!' );

COMMIT;