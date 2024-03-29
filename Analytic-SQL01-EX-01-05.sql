--AnalyticSQL01-EX-01;

SELECT DEPARTMENT_ID, LISTAGG (FIRST_NAME || ' ' ||LAST_NAME, ', ') 
    WITHIN GROUP (ORDER BY DEPARTMENT_ID) AS EMP_NAMES
    FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
    
--AnalyticSQL01-EX-02;

SELECT EMPLOYEES.*, SUM(SALARY) 
    OVER (PARTITION BY JOB_ID 
        ORDER BY HIRE_DATE 
        ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) TOTAL_SALARY 
FROM EMPLOYEES;
 
--AnalyticSQL01-EX-03;

SELECT EMPLOYEES.*, 
    ROW_NUMBER() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) SEQ_SALARY
FROM EMPLOYEES;
       
--AnalyticSQL01-EX-04;

SELECT EMPLOYEES.*, 
	   ROW_NUMBER() OVER (PARTITION BY DEPARTMENT_ID ORDER BY HIRE_DATE ASC) SEQ_HIRE 
FROM EMPLOYEES;

--AnalyticSQL01-EX-05;

SELECT EMPLOYEES.FIRST_NAME, EMPLOYEES.LAST_NAME, EMPLOYEES.SALARY, 
	LAG(SALARY,1) OVER (PARTITION BY DEPARTMENT_ID ORDER BY HIRE_DATE) PRE_SALARY ,
    LEAD(SALARY,1) OVER (PARTITION BY DEPARTMENT_ID ORDER BY EMPLOYEE_ID) NEXT_SALARY  
FROM EMPLOYEES ORDER BY DEPARTMENT_ID;

