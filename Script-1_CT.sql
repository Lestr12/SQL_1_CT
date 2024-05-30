-- 1
SELECT COUNT(*)
FROM actor
WHERE last_name = 'Wahlberg';

--2 wrong
SELECT COUNT(*)
FROM payment p 
WHERE CAST(amount AS TEXT) BETWEEN '3.99' AND '5.99';


--3 wrong
SELECT film_id, COUNT(*) AS total_inventory_count
FROM inventory
GROUP BY film_id
ORDER BY total_inventory_count DESC
LIMIT 1;




--4 
SELECT COUNT(*)
FROM customer
WHERE last_name = 'William';

--5
SELECT staff_id, COUNT(rental_id) AS total_rentals
FROM rental
GROUP BY staff_id
ORDER BY total_rentals DESC
LIMIT 1;

--6
SELECT COUNT(DISTINCT district)
FROM address;

--7
SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;

--8
SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--9 wrong
SELECT amount, COUNT(r.rental_id) AS rental_count
FROM payment p
JOIN rental r ON p.customer_id = r.customer_id
WHERE p.amount IN (4.99, 5.99)
  AND p.customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(r.rental_id) > 250;



--10
SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;






