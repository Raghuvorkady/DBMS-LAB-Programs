/* 4. Find the title of movies and number of stars for each movie that has at least one
rating and find the highest number of stars that movie received. Sort the result by
movie title. */

SELECT MOV_TITLE, COUNT (REV_STARS)
FROM MOVIES
INNER JOIN RATING 
USING (MOV_ID)
GROUP BY MOV_TITLE
HAVING MAX (REV_STARS)>0
ORDER BY MOV_TITLE; 
