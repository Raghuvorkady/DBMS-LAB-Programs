/* 1. List the titles of all movies directed by 'Hitchcock'. */

SELECT MOV_TITLE
FROM MOVIES
WHERE DIR_ID IN (SELECT DIR_ID
		 FROM DIRECTOR
		 WHERE DIR_NAME = 'HITCHCOCK');

/*or*/

select mov_title
from movies m, director d
where m.dir_id = d.dir_id and
	d.dir_name = 'HITCHCOCK';