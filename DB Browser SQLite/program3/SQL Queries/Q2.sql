/* 2. Find the movie names where one or more actors acted in two or more movies. */

SELECT MOV_TITLE
FROM MOVIES M, MOVIE_CAST MV
WHERE M.MOV_ID=MV.MOV_ID AND
	ACT_ID IN (SELECT ACT_ID
				FROM MOVIE_CAST
				GROUP BY ACT_ID
				HAVING COUNT (ACT_ID)>1)
GROUP BY MOV_TITLE
HAVING COUNT (*)>1;
