USE sakila;

-- SELECT COUNT(*) FROM x
-- WHERE att4 = 'Triste';

-- SELECT COUNT(at4) FROM tablaX
-- WHERE at4 = 'Triste';

-- SELECT SUM(salario) FROM salarios;
-- SELECT AVG(salario) FROM salarios;

-- SELECT customer_id as customer, COUNT(*) as total_rentals FROM rental
-- GROUP BY customer_id
-- ORDER BY customer_id
-- LIMIT 10;

-- SELECT a.first_name, a.last_name
-- FROM film f INNER JOIN film_actor fa ON (f.film_id  = fa.film_id)
--             INNER JOIN actor a ON (a.actor_id = fa.actor_id)

-- WHERE f.title = 'ACADEMY DINOSAUR';

-- Mostrar el nombre y apellido de los clientes con el total de rentas


-- SELECT customer_id as customer, COUNT(*) as total_rentals FROM rental
-- GROUP BY customer_id
-- ORDER BY customer_id;

-- SELECT c.first_name, c.last_name, COUNT(*) as total_rentals
-- FROM rental r INNER JOIN customer c ON (c.customer_id  = r.customer_id)
-- GROUP BY r.customer_id;

-- SELECT c.first_name, c.last_name, COUNT(*) as total_rentals
-- FROM rental r INNER JOIN customer c ON (c.customer_id  = r.customer_id)
-- GROUP BY r.customer_id;


-- SELECT a.first_name, a.last_name, COUNT(*)
-- FROM film f INNER JOIN film_actor fa ON (f.film_id  = fa.film_id)
--             INNER JOIN actor a ON (a.actor_id = fa.actor_id)
-- GROUP BY fa.actor_id;

-- SELECT a.first_name, a.last_name, COUNT(*)
-- FROM actor a INNER JOIN film_actor fa ON (a.actor_id  = fa.actor_id)
-- GROUP BY fa.actor_id;

-- Nested SELECT
-- SELECT x.first_name, x.last_name, COUNT(*)
-- FROM (
--   SELECT fa.actor_id, a.first_name, a.last_name FROM actor a INNER JOIN film_actor fa ON (a.actor_id  = fa.actor_id)
-- ) AS x GROUP BY x.actor_id;

-- -- HAVING
-- SELECT c.first_name, c.last_name, COUNT(*) as total_rentals
-- FROM rental r INNER JOIN customer c ON (c.customer_id  = r.customer_id)
-- WHERE c.store_id = 1
-- GROUP BY r.customer_id
-- having total_rentals > 6;

CREATE VIEW doodle2 IF NOT EXISTS
AS
SELECT fa.actor_id as c
FROM actor a INNER JOIN film_actor fa ON (a.actor_id  = fa.actor_id)
GROUP BY fa.actor_id
HAVING COUNT(*) > 10;

-- Nested SELECT
SELECT actor.first_name, actor.last_name, COUNT(*)
FROM actor
WHERE actor.actor_id IN (SELECT * FROM doodle2);
