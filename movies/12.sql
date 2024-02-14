SELECT title
  FROM people
  JOIN stars
    ON people.id = stars.person_id
  JOIN movies
    ON movies.id = stars.movie_id
 WHERE name = 'Bradley Cooper' OR name = 'Jennifer Lawrence'
 GROUP BY title
HAVING COUNT(*) > 1;
