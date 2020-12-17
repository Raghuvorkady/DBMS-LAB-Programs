** Consider the schema for Movie Database: **
	ACTOR(Act_id, Act_Name, Act_Gender)
	DIRECTOR(Dir_id, Dir_Name, Dir_Phone)
	MOVIES(Mov_id, Mov_Title, Mov_Year, Mov_Lang, Dir_id)
	MOVIE_CAST(Act_id, Mov_id, Role)
	RATING(Mov_id, Rev_Stars)

** Write SQL queries to **

1. List the titles of all movies directed by ‘Hitchcock’.
2. Find the movie names where one or more actors acted in two or more movies.
3. List all actors who acted in a movie before 2000 and also in a movie after 2015 (use JOIN operation).
4. Find the title of movies and number of stars for each movie that has at least one
rating and find the highest number of stars that movie received. Sort the result by movie title.
5. Update rating of all movies directed by ‘Steven Spielberg’ to 5.
