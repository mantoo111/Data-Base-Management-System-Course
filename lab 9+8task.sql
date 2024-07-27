SELECT f.title, c.name AS category
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;

SELECT f.title, l.name AS language
FROM film f
JOIN language l ON f.language_id = l.language_id;

SELECT a.first_name, a.last_name, f.title
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id;

SELECT r.rental_id, c.first_name, c.last_name, r.rental_date
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id;

SELECT p.payment_id, c.first_name, c.last_name, p.amount
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id;
SELECT f.title, f.rental_rate
FROM film f
JOIN inventory i ON f.film_id = i.film_id;


SELECT c.name AS category, COUNT(fc.film_id) AS film_count
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name;
---lab 8
create view actor_film as 
SELECT a.actor_id, a.first_name, a.last_name, f.title AS film_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id;

create VIEW total_category AS
SELECT c.name AS category, COUNT(fc.film_id) AS film_count
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name;


CREATE SEQUENCE odd_sequence
START WITH 1
INCREMENT BY 2
MINVALUE 1
MAXVALUE 999999999999999999999999999
NOCYCLE;

CREATE TABLE studentsdata
( 
ID number(10),
NAME char(20)
);
INSERT into studentsdata VALUES
(odd_sequence.nextval,'ALIYA');
INSERT into studentsdata VALUES
(odd_sequence.nextval,'Aman');
INSERT into studentsdata VALUES
(odd_sequence.nextval,'Hadiya');
INSERT into studentsdata VALUES
(odd_sequence.nextval,'Ansa');
select * from studentsdata;






 
