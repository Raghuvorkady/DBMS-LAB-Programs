/* 1. Make a list of all project numbers for projects that involve an employee whose last
name is 'Scott', either as a worker or as a manager of the department that controls the
project. */

	SELECT DISTINCT P.PNO
	FROM PROJECT P, DEPARTMENT D, EMPLOYEE E
	WHERE P.DNO=D.DNO AND 
		D.MGRSSN=E.SSN AND
		E.LNAME='SCOTT'
UNION
	SELECT DISTINCT W.PNO
	FROM WORKS_ON W, EMPLOYEE E1
	WHERE	E1.SSN=W.SSN AND
		E1.LNAME='SCOTT';