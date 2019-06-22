
--Finding even number from 1 to 20;

BEGIN
    
    FOR i IN 1..20 LOOP
            IF i mod 2 =0 THEN DBMS_OUTPUT.PUT_LINE(i);
            END IF;
    END LOOP;
END;

-------------------------------------------