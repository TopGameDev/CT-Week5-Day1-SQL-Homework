
-- Question 1. How many actors are there with the last name ‘Wahlberg’?
SELECT *
FROM actor
WHERE last_name = 'Wahlberg'

-- Answer: 2

-- Question 2. How many payments were made between $3.99 and $5.99?
SELECT count(*) 
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99

-- Answer: 5,607

-- Question 3. What films have exactly 7 copies? (search in inventory)
SELECT count(*), film_id 
FROM inventory
GROUP BY film_id 
HAVING count(*) = 7
ORDER BY count DESC


-- Answer: 116 films have 7 copies

-- Question 4. How many customers have the first name ‘Willie’
SELECT *
FROM customer
WHERE first_name = 'Willie'

-- Answer:2

-- Question 5. What store employee (get the id) sold the most rentals (use the rental table)?
SELECT staff_id, COUNT(*) AS rental_count 
FROM rental
GROUP BY staff_id 
ORDER BY rental_count DESC;


-- Answer: Mike

-- Question 6. How many unique district names are there?
SELECT count(DISTINCT district)
FROM address;

-- Answer: 378

-- Question 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT count(film_id) AS films, film_id
FROM film_actor
GROUP BY film_id
ORDER BY films DESC

-- Answer: Lambs Cincinatti

-- Question 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT count(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- Answer: 13

-- Question 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
			-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount, count(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(*) > 250;

-- Answer: 3 payment amounts

-- Question 10. Within the film table, how many rating categories are there? And what rating has the most
			--movies total?
SELECT count(*), rating
FROM film
GROUP BY rating 
ORDER BY rating DESC;

-- Answer: 5 Rating Categories, PG-13 has the most movies

-- SYNTAX ORDER: (SELECT and FROM are the only mandatory)

-- SELECT (columns from table)
-- FROM (table name)

-- WHERE (row filter)
-- GROUP BY (aggregations)
-- HAVING (filter aggregations)
-- ORDER BY (column value ASC or DESC)
-- OFFSET (number of rows to skip)
-- LIMIT (max number of rows to display)