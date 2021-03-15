USE sakila;

SELECT customer_id as customer, COUNT(*) as total_rentals FROM rental
GROUP BY customer_id
ORDER BY customer_id
LIMIT 10;

SELECT customer_id, COUNT(*) as total_rentals FROM rental
GROUP BY customer_id
having total_rentals > 30
LIMIT 10;

SELECT customer_id as customer, avg(amount) as mean FROM payment
GROUP BY customer_id
ORDER BY customer_id
LIMIT 10;
