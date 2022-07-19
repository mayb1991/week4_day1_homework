-- 1. How many actors are there with the last name ‘Wahlberg’?
-- ANSWER: 2
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99?
-- ANSWER: 4764
SELECT COUNT(amount)
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)
-- ANSWER: Film_ID 1000 ANSWER 2.0: Film name is Zorro Ark
SELECT MAX(film_id)
FROM inventory;
SELECT MAX(title)
FROM film;


-- 4. How many customers have the last name ‘William’?
-- ANSWER: 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';


-- 5. What store employee (get the id) sold the most rentals?
-- ANSWER: Employee ID 2
SELECT MAX(staff_id)
FROM rental;

-- 6. How many different district names are there?
-- ANSWER: 603
SELECT COUNT(district)
FROM address;


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- ANSWER: 1000
SELECT MAX(film_id)
FROM film_actor;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- ANSWER: 10
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '___es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- ANSWER: 941
SELECT COUNT(amount), rental_id
FROM payment
WHERE amount >= 4.99 AND rental_id > 250
GROUP BY customer_id, amount, rental_id
HAVING customer_id BETWEEN 380 AND 430;

SELECT rental_date
FROM rental, payment
WHERE amount >= 4.99;


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- ANSWER: 5 different ratings, NC-17 has the most movies
SELECT  MAX(rating)
FROM film;
-- GROUP BY rating, film_id
-- ORDER BY MAX(rating);