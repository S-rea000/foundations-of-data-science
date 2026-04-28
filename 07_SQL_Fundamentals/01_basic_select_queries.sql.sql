--- SELECT ---
--- 1. SELECT WHOLE TABLE
SELECT * FROM actor;
--- 2. SELECT A COLUMN
SELECT first_name FROM actor;
--- 3. SELECT UNIQUE DATA
SELECT DISTINCT last_name 
FROM actor;

--- COUNT ---
--- 1. COUNT SPECIFIC VALUES 
SELECT COUNT (first_name) FROM actor;
--- 2. COUNT UNIQUE VALUES 
SELECT COUNT (DISTINCT first_name) FROM actor;
-- 

--- COMPARISION OPERATOR ---
--| = : EQUAL | > : GREATER THAN | < : LESS THAN | >= : GREATER THAN OR EQUAL | <= : LESS THAN OR EQUAL
--| <> OR =! : NOT EQUAL

--- LOGICAL OPERATOR ---
--| AND | OR | NOT

--- WHERE: TO SPECIFY CONDITIONS ---
--
SELECT * FROM film;
SELECT title, description
FROM film
WHERE rating = 'R' AND rental_duration >= 5;

--- ORDER BY: SORT ROWS BASED ON COLUMN VALUE ---
SELECT title FROM film 
ORDER BY title ASC;

--- COUNTING REPEATED VALUES ---
SELECT first_name, COUNT (*)
FROM actor
GROUP BY first_name
Having COUNT (*) > 1 ;

--- LIMIT: TO LIMIT NUMBER OF DATA ---
SELECT * FROM FILM 
LIMIT 5;

--- JOINS: ALLOWS COMBINATION OF MULTIPLE TABLES ---
-- 1. INNER JOIN: SET OF RECORDS THAT MATCHES IN BOTH TABLES (INTERSECTION)
SELECT * FROM film 
INNER JOIN film_actor
ON film.film_id = film_actor.film_id;

-- 2. OUTER JOIN: RETURNS ALL THE VALUES, KEEPS THE LONELY ROWS AND FILLS MISSING VALUES AS NULL 
-- TYPES: lEFT, RIGHT & FULL
---a. left join: returns all the values from left and matched values from right
SELECT film.title, actor.first_name
FROM film
LEFT JOIN actor
ON film.title = actor.first_name;

---b. Right join: returns all the values from right and matched values from left
SELECT film.title, actor.first_name
FROM film
RIGHT JOIN actor
ON film.title = actor.first_name;

---c. full join: returns all the values (AUB)
SELECT film.title, actor.first_name
FROM film
FULL OUTER JOIN actor
ON film.title = actor.first_name;