USE sakila;

SELECT f.film_id, f.title, fa.actor_id
FROM film f LEFT JOIN film_actor fa ON (f.film_id = fa.film_id)
ORDER BY fa.actor_id ASC
LIMIT 10;

SELECT f.film_id, f.title, fa.actor_id
FROM film f LEFT JOIN film_actor fa ON (f.film_id = fa.film_id)
WHERE fa.film_id IS NULL;
