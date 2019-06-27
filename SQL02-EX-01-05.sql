--SQL02-EX-01;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, ROUND(MONTHS_BETWEEN(SYSDATE,HIRE_DATE),2) MONTHS FROM HR.EMPLOYEES;

--SQL02-EX-02;

SELECT LAST_NAME, JOB_ID, DECODE (JOB_ID,   'AD_PRES',  'A',
                                            'ST_MAN',   'B',
                                            'IT_PROG',  'C',
                                            'SA_REP',   'D',
                                            'ST_CLERK', 'E',
                                            '0') GRADE FROM HR.EMPLOYEES;
                                
--SQL02-EX-03;

SELECT LAST_NAME, JOB_ID, CASE JOB_ID WHEN 'AD_PRES'  THEN 'A'
                                      WHEN 'ST_MAN'   THEN 'B'
                                      WHEN 'IT_PROG'  THEN 'C'
                                      WHEN 'SA_REP'   THEN 'D'
                                      WHEN 'ST_CLERK' THEN 'E'
                          ELSE                             '0' END GRADE FROM HR.EMPLOYEES;
                          
                          
--SQL02-EX-04;

SELECT EMPLOYEE_ID, LAST_NAME FROM HR.EMPLOYEES 
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM HR.EMPLOYEES WHERE LAST_NAME LIKE '%i%') 
ORDER BY EMPLOYEE_ID;


--SQL02-EX-05;

CREATE TABLE MY_EMP_TABLE ("ID" NUMBER(3), LAST_NAME VARCHAR2(50), FIRST_NAME VARCHAR2(50), SALARY NUMBER(5));

INSERT INTO MY_EMP_TABLE VALUES (1, 'Black','John',1100);
INSERT INTO MY_EMP_TABLE VALUES (2, 'White','Kent',1300);
INSERT INTO MY_EMP_TABLE VALUES (3, 'Orange','David',1700);
INSERT INTO MY_EMP_TABLE VALUES (4, 'Pink','Alissa',1900);

UPDATE MY_EMP_TABLE A SET A.SALARY=(1.1)*A.SALARY;

DELETE FROM MY_EMP_TABLE WHERE FIRST_NAME='David';
DROP TABLE MY_EMP_TABLE;
