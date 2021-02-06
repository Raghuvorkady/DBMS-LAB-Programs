/* 2. Show the resulting salaries if every employee working on the 'IoT’ project is given a 10
percent raise. */

SELECT E.FNAME, E.LNAME, 1.1*E.SALARY AS INCR_SAL
FROM EMPLOYEE E, WORKS_ON W, PROJECT P
WHERE E.SSN=W.SSN AND
	W.PNO=P.PNO AND
	P.PNAME='IOT';