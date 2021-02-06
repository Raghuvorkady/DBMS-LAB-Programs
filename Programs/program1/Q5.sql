/* 5. Create a view of all books and its number of copies that are currently available in the Library. */

CREATE VIEW V_BOOKS AS
SELECT B.BOOK_ID, B.TITLE, C.NO_OF_COPIES
FROM BOOK B, BOOK_COPIES C
WHERE B.BOOK_ID=C.BOOK_ID;

SELECT * FROM V_BOOKS;