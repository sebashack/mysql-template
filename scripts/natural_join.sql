USE sakila;

SELECT first_name, last_name, return_date
FROM customer c INNER JOIN rental r ON (c.customer_id = r.customer_id)
WHERE return_date BETWEEN '2005-05-01 00:00:00' and '2005-05-31 00:00:00';

SELECT f.title, cat.name
FROM film f INNER JOIN film_category fcat ON (f.film_id  = fcat.film_id)
            INNER JOIN category cat ON (fcat.category_id = cat.category_id)
ORDER BY f.film_id;

SELECT f.title, cat.name
FROM film f INNER JOIN film_category fcat USING (film_id)
            INNER JOIN category cat ON (fcat.category_id = cat.category_id)
ORDER BY f.film_id;

SELECT cat.name, f.title, f.description, f.release_year
FROM film f INNER JOIN film_category fcat ON (f.film_id  = fcat.film_id)
            INNER JOIN category cat ON (fcat.category_id = cat.category_id)
ORDER BY f.film_id;
