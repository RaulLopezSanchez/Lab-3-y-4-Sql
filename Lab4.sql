USE sakila;
/*  Obtener las calificaciones de las películas.  */
SELECT DISTINCT rating
FROM film;

/*   Obtener los años de lanzamiento. */

/*Obtener todas las películas con "ARMAGEDDON" en el título.    */
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';

/* Obtener todas las películas con "APOLLO" en el título.   */
SELECT *
FROM film
WHERE title LIKE '%APOLLO%';

/* Obtener todas las películas cuyo título termina con "APOLLO".   */
SELECT *
FROM film
WHERE title LIKE '%APOLLO';

/*Obtener todas las películas con la palabra "DATE" en el título.    */
SELECT *
FROM film
WHERE title LIKE '%DATE%';

/* Obtener las 10 películas con el título más largo.   */
SELECT *
FROM film
ORDER BY LENGTH(title) DESC
LIMIT 10;

/* Obtener las 10 películas más largas.   */
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

/* ¿Cuántas películas incluyen contenido "Detrás de escena"?   */
SELECT COUNT(*) as cantidad
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

/* Listar las películas ordenadas por año de lanzamiento y título en orden alfabético.   */
SELECT *
FROM film
ORDER BY release_year, title;
