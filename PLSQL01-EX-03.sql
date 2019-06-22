DECLARE
    CURSOR c_employee_names IS
    SELECT FIRST_NAME,LAST_NAME FROM HR.EMPLOYEES;
    
BEGIN
    FOR employee IN c_employee_names LOOP
        DBMS_OUTPUT.PUT_line('First Name - Last Name = ' || employee.FIRST_NAME || ' ' || employee.LAST_NAME);
    END LOOP;
END;
