/* 1. Count the customers with grades above Bangalore’s average. */

SELECT COUNT (CUSTOMER_ID)
FROM CUSTOMER
WHERE GRADE > (SELECT AVG(GRADE)
				FROM CUSTOMER
				WHERE CITY='BANGALORE');