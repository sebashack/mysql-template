USE sakila;

SELECT distinct(title)
FROM film f INNER JOIN inventory i ON (f.film_id = i.film_id)
WHERE store_id = 1;

SELECT film FROM film NATURAL JOIN inventory WHERE store_id = 1;
