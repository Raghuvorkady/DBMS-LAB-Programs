/*1. Retrieve details of all books in the library – id, title, name of publisher, authors, 
number of copies in each branch, etc. */

SELECT B.BOOK_ID, B.TITLE, B.PUBLISHER_NAME, A.AUTHOR_NAME, C.NO_OF_COPIES, L.BRANCH_ID
FROM BOOK B, BOOK_AUTHORS A, BOOK_COPIES C, LIBRARY_BRANCH L
WHERE B.BOOK_ID=A.BOOK_ID AND
	B.BOOK_ID=C.BOOK_ID AND
	L.BRANCH_ID=C.BRANCH_ID;