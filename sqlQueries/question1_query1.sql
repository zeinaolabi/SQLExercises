/*Getting name and rank of the movie after joining the tables and making sure
there isn't duplicates by ordering them in ascending order by earnings rank
and getting the first row only, hence the one with the best rank*/
SELECT movies.name, movies.earnings_rank
FROM movies, oscars
WHERE movies.id == oscars.movie_id and oscars.type == "Best-Picture";
ORDER BY earnings_rank asc limit 1;

