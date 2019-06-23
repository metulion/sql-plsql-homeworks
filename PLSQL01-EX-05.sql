
--PLSQL01-EX-05;

SELECT LAST_NAME, SALARY, CASE WHEN COMMISSION_PCT IS NULL THEN 'NO' ELSE 'YES' END COMMISSION FROM HR.EMPLOYEES;


------------------------------------------------------------------