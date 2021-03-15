USE sakila;

SELECT email, store_id FROM customer WHERE first_name='Mary' and last_name='Smith';

SELECT rental_id, rental_date FROM rental WHERE return_date >='2005-05-01 00:00:00' and return_date <= '2005-05-31 00:00:00';
SELECT rental_id, rental_date FROM rental WHERE return_date BETWEEN '2005-05-01 00:00:00' and '2005-05-31 00:00:00';
