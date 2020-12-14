/* 2. Get the particulars of borrowers who have borrowed more than 3 books, but from
Jan 2017 to Jun 2017. */

SELECT CARD_NO, BRANCH_ID, BOOK_ID
FROM BOOK_LENDING
WHERE DATE_OUT BETWEEN '2017-01-01' AND '2017-06-01'
GROUP BY CARD_NO
HAVING COUNT (*)>3;