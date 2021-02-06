**Consider the following schema for Order Database:**

	- SALESMAN(Salesman_id, Name, City, Commission)
	- CUSTOMER(Customer_id, Cust_Name, City, Grade, Salesman_id)
	- ORDERS(Ord_No, Purchase_Amt, Ord_Date, Customer_id, Salesman_id)

**Write SQL queries to**

1. Count the customers with grades above Bangalore’s average.
2. Find the name and numbers of all salesman who had more than one customer.
3. List all the salesman and indicate those who have and don’t have customers in
their cities (Use UNION operation.)
4. Create a view that finds the salesman who has the customer with the highest order
of a day.
5. Demonstrate the DELETE operation by removing salesman with id 1000. All
his orders must also be deleted.
