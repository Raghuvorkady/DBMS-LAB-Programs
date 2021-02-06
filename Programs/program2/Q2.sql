/* 2. Find the name and numbers of all salesmen who had more than one customer. */

SELECT SALESMAN_ID, NAME
FROM SALESMAN A
WHERE (SELECT COUNT (*)
	FROM CUSTOMER C
	WHERE C.SALESMAN_ID=A.SALESMAN_ID) > 1;
