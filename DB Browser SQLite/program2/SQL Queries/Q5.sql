/* 5. Demonstrate the DELETE operation by removing salesman with id 1000. All his orders must also be deleted.

Use ON DELETE CASCADE at the end of foreign key definitions while creating child table
orders and then execute the following:

Use ON DELETE SET NULL at the end of foreign key definitions while creating child table
customers and then executes the following: */

DELETE FROM SALESMAN WHERE SALESMAN_ID=1000;

SELECT * FROM SALESMAN;

SELECT * FROM ORDERS;