SET SERVEROUTPUT ON;
CREATE OR REPLACE PACKAGE DISPLAY AS PROCEDURE SHOW_FIRST_NAMES;
END DISPLAY;
/
CREATE OR REPLACE PACKAGE BODY DISPLAY AS
PROCEDURE SHOW_FIRST_NAMES IS
    BEGIN
        FOR EMP IN (SELECT * FROM HR.EMPLOYEES) LOOP
        DBMS_OUTPUT.PUT_LINE(EMP.FIRST_NAME);
        END LOOP;
    END SHOW_FIRST_NAMES;
END DISPLAY;
/
EXECUTE DISPLAY.SHOW_FIRST_NAMES;

