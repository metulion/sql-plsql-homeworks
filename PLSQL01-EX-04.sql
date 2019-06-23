
--PLSQL01-EX-04;

SELECT FIRST_NAME FROM HR.EMPLOYEES WHERE EMPLOYEE_ID=(SELECT MAX(EMPLOYEE_ID) FROM HR.EMPLOYEES);


------------------------------------------------------------------