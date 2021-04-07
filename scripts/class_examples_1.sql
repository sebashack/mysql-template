USE sakila;

-- SELECT rental_id, rental_date FROM rental
-- WHERE return_date BETWEEN '2005-05-01 00:00:00' and '2005-05-31 00:00:00';

-- SELECT first_name, last_name FROM rental, customer
-- WHERE rental_date BETWEEN '2005-05-01 00:00:00' and '2005-05-31 00:00:00'
-- ORDER BY first_name, last_name;

-- SELECT title FROM film, rental
-- WHERE rental_date BETWEEN '2005-05-01 00:00:00' and '2005-05-31 00:00:00'
-- ORDER BY title;

-- SELECT actor.first_name, actor.last_name FROM film, film_actor, actor
-- WHERE film.title='ACADEMY DINOSAUR' AND film.film_id=film_actor.film_id AND actor.actor_id=film_actor.actor_id;

-- SELECT first_name, last_name, return_date
-- FROM customer c INNER JOIN rental r ON (c.customer_id = r.customer_id)
-- WHERE return_date BETWEEN '2005-05-01 00:00:00' and '2005-05-31 00:00:00';

-- SELECT a.first_name, a.last_name
-- FROM film f INNER JOIN film_actor fa ON (f.film_id  = fa.film_id)
--             INNER JOIN actor a ON (a.actor_id = fa.actor_id)
-- WHERE f.title = 'ACADEMY DINOSAUR';

-- SELECT COUNT(f.film_id) as c, f.title
-- FROM film f INNER JOIN film_category fcat ON (f.film_id  = fcat.film_id)
--             INNER JOIN category cat ON (fcat.category_id = cat.category_id)
-- GROUP BY f.film_id;

SELECT film_id, COUNT(film_id) as num_cats FROM film_category
GROUP BY film_id;

-- Review mysql JSON data type and how to store categories in it.
