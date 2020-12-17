** Consider the schema for College Database: **
	STUDENT(USN, SName, Address, Phone, Gender)
	SEMSEC(SSID, Sem, Sec)
	CLASS(USN, SSID)
	COURSE(Subcode, Title, Sem, Credits)
	IAMARKS(USN, Subcode, SSID, Test1, Test2, Test3, FinalIA)

** Write SQL queries to **

1. List all the student details studying in fourth semester ‘C’ section.
2. Compute the total number of male and female students in each semester and in
each section.
3. Create a view of Test1 marks of student USN ‘1BI15CS101’ in all Courses.
4. Calculate the FinalIA (average of best two test marks) and update the
corresponding table for all students.
5. Categorize students based on the following criterion:
	If FinalIA = 17 to 20 then CAT = ‘Outstanding’
	If FinalIA = 12 to 16 then CAT = ‘Average’
	If FinalIA< 12 then CAT = ‘Weak’
Give these details only for 8th semester A, B, and C section students.
