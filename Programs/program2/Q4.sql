5/* 4. Create a view that finds the salesman who has the customer with the highest order of a day. */

-- DROP VIEW HighestOrder;

CREATE VIEW HighestOrder
AS SELECT s.SALESMAN_ID, s.NAME, o.ORD_DATE, o.PURCHASE_AMT
FROM SALESMAN s, ORDERS o
WHERE (o.SALESMAN_ID = s.SALESMAN_ID) and 
	o.PURCHASE_AMT = (SELECT MAX (PURCHASE_AMT) FROM ORDERS);
						
SELECT * FROM HighestOrder;
