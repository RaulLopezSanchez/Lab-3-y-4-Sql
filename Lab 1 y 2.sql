USE sakila;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;


SELECT DISTINCT language.name AS language 
FROM language 
JOIN film ON language.language_id = film.language_id;

SELECT COUNT(*) AS 'cantidad de tiendas' FROM store;
SELECT COUNT(*) AS 'cantidad de empleados' FROM staff;
SELECT first_name FROM staff;

SELECT * FROM actor WHERE first_name = 'Scarlett';
SELECT * FROM actor WHERE last_name = 'Johansson';
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM rental;

SELECT 
    MIN(DATEDIFF(return_date, rental_date)) AS shortest_duration, 
    MAX(DATEDIFF(return_date, rental_date)) AS longest_duration 
FROM 
    rental;

SELECT MIN(length) AS min_duration, MAX(length) AS max_duration FROM film;

SELECT AVG(length) AS average_duration FROM film;

SELECT CONCAT(FLOOR(AVG(length) / 60), ' hours, ', AVG(length) MOD 60, ' minutes') AS average_duration FROM film;

SELECT COUNT(*) FROM film WHERE length > 180;
SELECT CONCAT(first_name, ' ', last_name, ' - ', LOWER(email)) AS name_and_email FROM customer;
SELECT MAX(LENGTH(title)) AS longest_title_length FROM film;