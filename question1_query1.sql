SELECT name, earnings_rank
FROM movies, oscars
WHERE movies.id == oscars.movie_id and oscars.type == "Best-Picture";
ORDER BY earnings_rank asc limit 1;

