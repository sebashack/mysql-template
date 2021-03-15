USE sakila;

SELECT f.film_id, f.title, fa.actor_id
FROM film f LEFT JOIN film_actor fa ON (f.film_id = fa.film_id)
UNION
SELECT f.film_id, f.title, fa.actor_id
FROM film_actor fa RIGHT JOIN film f ON (f.film_id = fa.film_id)
ORDER BY actor_id ASC
LIMIT 10;

SELECT f.film_id, f.title, fa.actor_id
FROM film f LEFT JOIN film_actor fa ON (f.film_id = fa.film_id)
WHERE f.film_id IS NULL
UNION
SELECT f.film_id, f.title, fa.actor_id
FROM film_actor fa RIGHT JOIN film f ON (f.film_id = fa.film_id)
WHERE fa.film_id IS NULL;

SELECT * FROM (
  SELECT f.film_id, f.title, fa.actor_id
  FROM film f LEFT JOIN film_actor fa ON (f.film_id = fa.film_id)
  UNION
  SELECT f.film_id, f.title, fa.actor_id
  FROM film_actor fa RIGHT JOIN film f ON (f.film_id = fa.film_id)
) AS u
WHERE u.actor_id IS NULL
ORDER BY actor_id ASC;
