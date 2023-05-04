USE sakila;
/*¿Cuántos apellidos de actores distintos hay?*/
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;
/*  ¿En cuántos idiomas diferentes se produjeron las películas?  */
SELECT COUNT(DISTINCT language_id) AS distinct_languages
FROM film;

/* ¿Cuántas películas se lanzaron con la calificación "PG-13"?   */
SELECT COUNT(*) AS pg13_movies
FROM film
WHERE rating = 'PG-13';

/* Obtener las 10 películas más largas de 2006. */
SELECT title, length
FROM film
WHERE release_year = 2006
ORDER BY length DESC
LIMIT 10;

/*  ¿Cuántos días ha estado operando la compañía? (usando la función DATEDIFF())  */
SELECT DATEDIFF(MAX(payment_date), MIN(payment_date)) AS days_operating
FROM payment;

/* Mostrar información de alquiler con columnas adicionales de mes 
y día de la semana. Obtener 20.   */
SELECT rental_id, rental_date, MONTH(rental_date) AS month, DAYNAME(rental_date) AS weekday
FROM rental
LIMIT 20;

/*  Agregar una columna adicional 'day_type' con valores 'weekend'
 y 'workday' según el día de la semana del alquiler.  */
 SELECT rental_id, rental_date, MONTH(rental_date) AS month, DAYNAME(rental_date) AS weekday,
CASE 
    WHEN DAYOFWEEK(rental_date) IN (1,7) THEN 'weekend'
    ELSE 'workday'
END AS day_type
FROM rental
LIMIT 20;

/* ¿Cuántos alquileres hubo en el último mes de actividad?   */
SELECT COUNT(*) AS rentals_last_month
FROM rental
WHERE rental_date BETWEEN DATE_SUB(NOW(), INTERVAL 1 MONTH) AND NOW();

/*    */
/*    */