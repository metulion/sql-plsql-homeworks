--PLSQL01-EX-07;

SELECT DEPARTMENT_ID , FIRST_NAME, SALARY , COUNT(SALARY) 
OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY) SALARY_RANK FROM HR.EMPLOYEES;


-----------------------------------------------------------------