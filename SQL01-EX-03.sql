
--SQL01-EX-03;

SELECT SUBSTR(PHONE_NUMBER,1,3) OPERATOR , COUNT(SUBSTR(PHONE_NUMBER,1,3)) TOTAL 
FROM HR.EMPLOYEES GROUP BY SUBSTR(PHONE_NUMBER,1,3);


SELECT * FROM  (SELECT substr(phone_number,1,3) as OPERATOR, count(*) as TOTAL
FROM HR.employees WHERE phone_number IS NOT NULL
GROUP BY substr(phone_number,1,3)) pivot (sum(TOTAL) for OPERATOR in('515','650','603','590','011'));

------------------------------------------------------------------