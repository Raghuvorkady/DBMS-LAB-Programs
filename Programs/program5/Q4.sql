/* 4. Retrieve the name of each employee who works on all the projects Controlled by
department number 5 (use NOT EXISTS operator). */

SELECT E.FNAME, E.LNAME
FROM EMPLOYEE E
WHERE NOT EXISTS(
		(SELECT PNO FROM PROJECT WHERE DNO=5) 
		MINUS
		(SELECT PNO FROM WORKS_ON WHERE E.SSN=SSN)
	);