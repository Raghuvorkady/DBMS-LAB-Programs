/* 3. Find the sum of the salaries of all employees of the 'Accounts’ department, as well as
the maximum salary, the minimum salary, and the average salary in this department. */

SELECT SUM (E.SALARY), MAX (E.SALARY), MIN (E.SALARY), AVG (E.SALARY)
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO=D.DNO AND
	D.DNAME='ACCOUNTS';