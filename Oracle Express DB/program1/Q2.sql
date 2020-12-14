/* 2. Get the particulars of borrowers who have borrowed more than 3 books, but from
Jan 2017 to Jun 2017. */

select CARD_NO from book_lending  where DATE_OUT between '01-JAN-17' and '01-JUL-17'  group by(CARD_NO) having count(CARD_NO)>3 ;