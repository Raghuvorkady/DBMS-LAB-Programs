/* 2. Find the name and numbers of all salesmen who had more than one customer. */

SELECT SALESMAN_ID, NAME
FROM SALESMAN A
WHERE 1 < (SELECT COUNT (*)
			FROM CUSTOMER
			WHERE SALESMAN_ID=A.SALESMAN_ID);
