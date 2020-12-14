/* 5. For each department that has more than five employees, retrieve the department
number and the number of its employees who are making more than Rs. 6,00,000. */

SELECT D.DNO, COUNT (*) as 'No. of Employees'
FROM DEPARTMENT D, EMPLOYEE E
WHERE D.DNO=E.DNO AND
	E.SALARY>600000 AND
	D.DNO IN (	SELECT E1.DNO
				FROM EMPLOYEE E1
				GROUP BY E1.DNO
				HAVING COUNT (*)>5 )
GROUP BY D.DNO;