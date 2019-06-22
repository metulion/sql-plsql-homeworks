--PLSQL01-EX-02;

ACCEPT Name1 char prompt 'Enter First Name = ';
ACCEPT Surname1 char prompt 'Enter First Surname = ';
ACCEPT Name2 char prompt 'Enter Second Name = ';
ACCEPT Surname2 char prompt 'Enter Second Name = ';

DECLARE
    Name1  varchar2(40);
    Surname1  varchar2(40);
    Name2  varchar2(40);
    Surname2  varchar2(40);

    BEGIN
        SELECT INITCAP(LOWER('&Name1')) INTO Name1 FROM DUAL;
        SELECT INITCAP(LOWER('&Surname1')) INTO Surname1 FROM DUAL;
        SELECT INITCAP(LOWER('&Name2')) INTO Name2 FROM DUAL;
        SELECT INITCAP(LOWER('&Surname2')) INTO Surname2 FROM DUAL;
        
        DBMS_OUTPUT.PUT_line('Name - Surname = ' || Name1 || ' ' || Surname1);
        DBMS_OUTPUT.PUT_line('Name - Surname = ' || Name2 || ' ' || Surname2);
    END;
    
-------------------------------------------------------------
