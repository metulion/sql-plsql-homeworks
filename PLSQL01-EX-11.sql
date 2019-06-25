SET SERVEROUT ON
ACCEPT ROOFCOUNT NUMBER prompt 'How many roof do you want?';

BEGIN
    dbms_output.put_line('Triangle with ' || &ROOFCOUNT || ' roof(s):');
    FOR i IN 1..&roofcount LOOP        
        dbms_output.put_line(RPAD(' ', &roofcount - i) || RPAD('*', i * 2 - 1, '*'));
    END LOOP;
END;
/