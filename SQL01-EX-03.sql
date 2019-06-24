
--SQL01-EX-03;

SELECT SUBSTR(PHONE_NUMBER,1,3) OPERATOR , COUNT(SUBSTR(PHONE_NUMBER,1,3)) TOTAL 
FROM HR.EMPLOYEES GROUP BY SUBSTR(PHONE_NUMBER,1,3);


SELECT * FROM  (SELECT SUBSTR(PHONE_NUMBER,1,3) OPERATOR, COUNT(*) TOTAL
FROM HR.EMPLOYEES WHERE PHONE_NUMBER IS NOT NULL
GROUP BY SUBSTR(PHONE_NUMBER,1,3)) PIVOT (SUM(TOTAL) FOR OPERATOR IN ('515','650','603','590','011'));

------------------------------------------------------------------