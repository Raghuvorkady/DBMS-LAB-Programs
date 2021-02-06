/* 4. Partition the BOOK table based on year of publication. Demonstrate its working with a simple query. */

CREATE VIEW YEAR AS
SELECT PUB_YEAR
FROM BOOK;

SELECT * FROM YEAR;