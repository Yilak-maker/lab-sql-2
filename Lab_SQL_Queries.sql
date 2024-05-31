USE sakila;
-- 1.select all the acteros with "Scarlett"
SELECT * FROM actor WHERE first_name = 'Scarlett';

-- 2 select all the actor with 'Johansson'

SELECT * FROM actor WHERE last_name = 'Johansson';

-- 3. how many films are available for rent
Select count(*) from film ;

-- 4 How many films have been rented: 
-- this is not working, elect * from inventory where gcount(inventory_id);

SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;

-- answer = 4580

-- 5 What is the shortest and longest rental period:
SELECT MAX(length) AS max_duration, MIN(length) AS min_duration FROM film;


-- 6 What are the shortest and longest movie duration? Name the values 
Select min(length) as minim_duration, max(length) as max_duration from film;
 
 -- 7 What's the average movie duration:
 select Avg(length) as avarage_movie from film;
 -- 8 What's the average movie duration expressed in format (hours, minutes):
 
 SELECT 
    SEC_TO_TIME(AVG(length) * 60) AS average_duration_formatted
FROM 
    film;

-- 9 Ho w many movies longer than 3 hour
Select count(*) as movie_threehours from film where length > 180;

-- 10 Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org:

SELECT 
    first_name, 
    ' ' AS space1,
    UPPER(last_name) AS last_name_upper, 
    ' - ' AS space2, 
    LOWER(first_name) AS first_name_lower, 
    '.' AS dot, 
    LOWER(last_name) AS last_name_lower, 
    'mary.smith@sakilacustomer.org' AS email_domain
FROM 
    customer;
    
    
    -- 11 What's the length of the longest film title:
SELECT max(length (title)) as longest_film from film;
    
    
 