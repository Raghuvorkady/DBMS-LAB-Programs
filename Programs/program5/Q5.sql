/* 5. For each department that has more than five employees, retrieve the department
number and the number of its employees who are making more than Rs. 6,00,000. */

SELECT E.DNO, COUNT (E.SSN) as "No. oF Employees"
FROM EMPLOYEE E
WHERE	E.SALARY > 600000 AND
	E.DNO IN (SELECT E1.DNO
		  FROM EMPLOYEE E1
		  GROUP BY E1.DNO
		  HAVING COUNT (E1.DNO) > 5 )
GROUP BY E.DNO;