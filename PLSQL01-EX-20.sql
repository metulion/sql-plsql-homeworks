SET SERVEROUTPUT ON;
CREATE OR REPLACE PACKAGE PALETTE_PACKAGE IS
PROCEDURE PUT_DOTS(line_number  IN INT );
PROCEDURE PUT_SPACES(line_number  IN INT, total_lines IN INT );
PROCEDURE PALETTE(pin_max_dots IN NUMBER);
END PALETTE_PACKAGE;

CREATE OR REPLACE PACKAGE BODY PALETTE_PACKAGE
IS
    PROCEDURE PUT_DOTS(line_number  IN INT ) 
    IS
    BEGIN
    FOR i IN 1..line_number
    LOOP
        dbms_output.put('*');
    END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END PUT_DOTS;
    
    PROCEDURE PUT_SPACES(line_number  IN INT, total_lines IN INT ) 
    IS
    BEGIN
        FOR i IN 1..total_lines-line_number
        LOOP
         dbms_output.put(' ');
        END LOOP;
    END PUT_SPACES;

    PROCEDURE PALETTE(pin_max_dots IN NUMBER) 
    IS
        counter INT := 0;
    BEGIN
        WHILE counter < pin_max_dots
        LOOP
             PALETTE_PACKAGE.PUT_SPACES(counter,pin_max_dots);
             PALETTE_PACKAGE.PUT_DOTS(2*counter - 1);
             counter := counter + 1;
        END LOOP;
        counter := 0;
        WHILE counter < pin_max_dots
        LOOP
             PALETTE_PACKAGE.PUT_SPACES(pin_max_dots - counter,pin_max_dots);
             PALETTE_PACKAGE.PUT_DOTS(2*pin_max_dots - 2*counter - 1);
             counter := counter + 1;
        END LOOP;

    END;
    
END PALETTE_PACKAGE;

BEGIN
    palette_package.palette(9);
END;