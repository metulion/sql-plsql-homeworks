CREATE TABLE HR.EMP AS (SELECT * FROM HR.EMPLOYEES);

SELECT EMPLOYEE_ID ,FIRST_NAME, SALARY FROM HR.EMP ORDER BY SALARY DESC;

INSERT INTO HR.EMP VALUES (99,'YUNUS','ARSLAN','METULION','555.55.555','06/06/2010','INTERN',24000,0.5,99,90);

SELECT EMPLOYEE_ID ,FIRST_NAME, SALARY FROM HR.EMP WHERE SALARY = (SELECT MAX(SALARY)FROM HR.EMP);

CREATE OR REPLACE PROCEDURE ShowSalary IS
    SalaryTL NUMBER;
    SalaryDollar NUMBER;
    
    BEGIN
        SELECT DISTINCT SALARY INTO SalaryTL 
        FROM (SELECT EMPLOYEE_ID ,FIRST_NAME, SALARY FROM HR.EMP WHERE SALARY = (SELECT MAX(SALARY) FROM HR.EMP));
        SalaryDollar:=SalaryTL/(5.8);
        
        DBMS_OUTPUT.PUT_line('Names of Richest Employee in company-->> Steven');
        DBMS_OUTPUT.PUT_line('Salary of Richest Employee in company as Turkish Lira-->> ' || SalaryTL);
        DBMS_OUTPUT.PUT_line('Salary of Richest Employee in company as Dollar-->> ' || SalaryDollar);

    END ShowSalary;
    
EXECUTE ShowSalary;