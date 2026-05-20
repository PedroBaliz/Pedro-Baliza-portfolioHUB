-- 1. Titles of all movies from 2008
SELECT title
FROM movies
WHERE year = 2008;

-- 2. Birth year of Emma Stone
SELECT birth
FROM people
WHERE name ='Emma Stone';


-- 3. Titles of all movies since 2018, in alphabetical order
SELECT title
FROM movies
WHERE year >= 2018
ORDER BY title;


-- 4. Number of movies with a 10.0 rating
SELECT count(*)
FROM ratings
WHERE rating = 10.0;


-- 5. Titles and years of all Harry Potter movies, in chronological order (title beginning with "Harry Potter and the ...")
SELECT title, year
FROM movies
WHERE title LIKE 'Harry Potter and the%'
ORDER BY year;


-- 6. Average rating of movies in 2012
SELECT AVG(rating)
FROM ratings
JOIN movies ON movies.id = ratings.movie_id
WHERE year = 2012;


-- 7. All movies and ratings from 2010, in decreasing order by rating (alphabetical for those with same rating)
SELECT title, rating
FROM movies
JOIN ratings
ON movies.id = ratings.movie_id
WHERE year = 2010
ORDER BY rating DESC, title;


-- 8. Names of people who starred in Toy Story
SELECT people.name
FROM people
JOIN stars
ON people.id = stars.person_id
JOIN movies
ON movies.id = stars.movie_id
WHERE movies.title = 'Toy Story';


-- 9. Names of all people who starred in a movie released in 2004, ordered by birth year
-- 9
SELECT DISTINCT people.id, name
FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON movies.id = stars.movie_id
WHERE year = 2004
ORDER BY birth;


-- 10. Names of all directors who have directed a movie that got a rating of at least 9.0
-- 10
SELECT DISTINCT name
FROM people
JOIN directors ON people.id = directors.person_id
JOIN ratings ON directors.movie_id = ratings.movie_id
WHERE rating >= 9.0;


-- 11. Titles of the five highest rated movies (in order) that Chadwick Boseman starred in, starting with the highest rated
-- 11
SELECT title
FROM movies
JOIN ratings ON movies.id = ratings.movie_id
JOIN stars ON movies.id = stars.movie_id
JOIN people ON people.id = stars.person_id
WHERE name = 'Chadwick Boseman'
ORDER BY rating DESC
LIMIT 5;


-- 12. Titles of all of movies in which both Jennifer Lawrence and Bradley Cooper starred
-- 12
SELECT title
FROM movies
JOIN stars s1 ON movies.id = s1.movie_id
JOIN people p1 ON s1.person_id = p1.id
JOIN stars s2 ON movies.id = s2.movie_id
JOIN people p2 ON s2.person_id = p2.id
WHERE p1.name = 'Bradley Cooper'
AND p2.name = 'Jennifer Lawrence';


-- 13. Names of all people who starred in a movie in which Kevin Bacon also starred
-- 13
SELECT DISTINCT p1.name
FROM people p1
JOIN stars s1 ON p1.id = s1.person_id
WHERE s1.movie_id IN (
    SELECT s2.movie_id
    FROM stars s2
    JOIN people p2 ON s2.person_id = p2.id
    WHERE p2.name = 'Kevin Bacon'
)
AND p1.name != 'Kevin Bacon';

