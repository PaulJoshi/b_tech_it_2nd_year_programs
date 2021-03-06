
CREATE VIEW C_VIEW AS SELECT EMPID, EMPNAME, JOB, MANAGER FROM EMPLOYEE;

UPDATE C_VIEW SET JOB='SENIOR CLERK' WHERE JOB='CLERK';

DELETE FROM C_VIEW WHERE EMPNAME='KEVIN';

DROP VIEW C_VIEW;



CREATE TABLE EMPLOYEE_2(
    FNAME VARCHAR2(15),
    MNIT CHAR(2),
    LNAME VARCHAR2(15),
    SSN NUMBER(10, 1),
    BDATE DATE,
    ADDRESS VARCHAR2(30),
    SEX CHAR(2),
    SALARY NUMBER(10, 1),
    SUPERSSN NUMBER(11, 1),
    DNO NUMBER(2)
);

INSERT INTO EMPLOYEE_2 VALUES('JOHN', 'B', 'SMITH', 123456789, '09-JAN-1965', '731 HOUSTON TX', 'M', 30000, 3336445555, 5);
INSERT INTO EMPLOYEE_2 VALUES('FRANKLIN', 'T', 'WONG', 333445555, '06-DEC-1955', '638 HOUSTON TX', 'M', 40000, 888885555, 5);
INSERT INTO EMPLOYEE_2 VALUES('ALICIA', 'J', 'ZELAYA', 999667777, '19-JUL-1966', '3321 SPRING TX', 'F', 25000, 967654321, 4);
INSERT INTO EMPLOYEE_2 VALUES('JENNIFER', 'S', 'WALACE', 967654321, '29-JUN-1941', '291 BELAIRE TX', 'F', 43000, 888555555, 4);
INSERT INTO EMPLOYEE_2 VALUES('RAMESH', 'K', 'NARAYAN', 888884444, '15-SEP-1962', '975 HUMBLE TX', 'M', 38000, 333645555, 5);
INSERT INTO EMPLOYEE_2 VALUES('JOYCE', 'A', 'ENGLISH', 453453453, '31-JUL-1972', '5631 HOUSTON TX', 'F', 25000, 333645555, 5);
INSERT INTO EMPLOYEE_2 VALUES('AHMAD', 'V', 'JABBAR', 967967967, '29-MAR-1959', '960 HOUSTON TX', 'M', 25000, 967654321, 4);
INSERT INTO EMPLOYEE_2 VALUES('JAMES', 'E', 'BONG', 888555555, '11-OCT-1937', '450 HOUSTON TX', 'M', 55000, NULL, 1);

CREATE VIEW VIEW_1 AS SELECT FNAME, LNAME, BDATE, SALARY, DNO FROM EMPLOYEE_2 WITH CHECK OPTION;
CREATE VIEW VIEW_2 AS SELECT FNAME, LNAME, BDATE, SALARY, DNO FROM EMPLOYEE_2;

SELECT * FROM VIEW_1 WHERE BDATE > 01-JAN-1965;

DROP VIEW VIEW_1;



SELECT POWER(16, 5) FROM DUAL;

SELECT LENGTH('APPLICATION') FROM DUAL;

SELECT LAST_DAY(SYSDATE) FROM DUAL;

SELECT TO_CHAR(65432, '$99999') FROM DUAL;

SELECT SYSTIMESTAMP FROM DUAL;

SELECT TO_CHAR(HIRDATE, 'YYYY') HIRDATE FROM EMPLOYEE;

SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE(HIRDATE)) AS HIRDATE FROM EMPLOYEE;

SELECT COUNT(DISTINCT(DEPTNAME)) FROM DEPARTMENT;

SELECT TO_CHAR(HIRDATE, 'DY, DDTH MONTH, YYYY') FROM EMPLOYEE;

SELECT ASCII('P') FROM DUAL;

SELECT LOWER('Paul') FROM DUAL;

SELECT UPPER('Paul') FROM DUAL;