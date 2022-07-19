
-- INTRO TO SQL SELECT ALL FROM ACTOR TABLE
SELECT * FROM ACTOR;

-- QUERY FOR THE FRIST AND LAST NAME CREATE
SELECT first_name, last_name
FROM actor;

SELECT last_name
FROM actor
WHERE first_name = 'Nick';

SELECT last_name
FROM actor
WHERE first_name LIKE 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K___';

SELECT first_name
FROM actor
WHERE first_name LIKE 'K__%';

SELECT *
FROM payment;

SELECT customer_id, amount
FROM payment
WHERE amount > 10;

SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 10.99 AND 14.99;

SELECT customer_id, amount, payment_date
FROM payment
WHERE amount > 10
ORDER BY amount DESC;

SELECT customer_id, amount
FROM payment
WHERE amount > 10
ORDER BY payment_date DESC;

SELECT customer_id, amount
FROM payment
WHERE amount <> 10.99
ORDER BY amount;

SELECT sum(amount)
FROM payment
WHERE amount >= 5.99;

SELECT AVG(amount)
FROM payment
WHERE amount >= 5.99;

SELECT COUNT(amount)
FROM payment
WHERE amount >= 5.99;

SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount >= 5.99;

SELECT MIN(amount) AS min_amount_paid
FROM payment
WHERE amount >= 0;

SELECT MAX(amount)
FROM payment;

SELECT amount 
FROM payment
WHERE amount = 7.99;

SELECT customer_id
FROM payment;

SELECT customer_id, COUNT(amount)
FROM payment
WHERE amount = 7.99
GROUP BY customer_id;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 10;

SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id > 60
GROUP BY customer_id
HAVING SUM(amount) < 1000
ORDER BY SUM(amount) DESC
LIMIT 10;

SELECT *
FROM customer

SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'J__.w%'
GROUP BY customer_id;


