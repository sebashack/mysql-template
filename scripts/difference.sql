USE sakila;

SELECT customer_id FROM customer WHERE not exists (SELECT customer_id FROM rental);
SELECT film_id, title, language_id FROM film WHERE not exists (SELECT language_id FROM film WHERE language_id = 3);
