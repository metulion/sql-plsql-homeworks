
--SQL01-EX-04;

CREATE TABLE HR.EMP AS (SELECT * FROM HR.EMPLOYEES);

INSERT INTO HR.EMP VALUES (500, 'Yunus', 'Arslan', 'metulion', '555.55.5555', '17/04/1999', 'CENG', '5000', NULL , 150, 142);

UPDATE HR.EMP SET HR.EMP.PHONE_NUMBER='555.555.555' , HR.EMP.SALARY=HR.EMP.SALARY*2;

DELETE FROM HR.EMP WHERE EMAIL = 'metulion';

SELECT * FROM HR.EMP;

DROP TABLE HR.EMP;

--------------------------------------------------------------
