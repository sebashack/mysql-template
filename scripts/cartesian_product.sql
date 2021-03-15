USE sakila;

-- SELECT first_name, last_name FROM rental, customer order by first_name, last_name;

SELECT first_name, last_name, rental_date
FROM rental, customer
WHERE rental_date BETWEEN '2005-05-01 00:00:00' and '2005-05-31 00:00:00';
