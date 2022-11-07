select * from actor, film, customer;
#Select all the actors with the first name ‘Scarlett’.
select * from sakila.actor
where first_name = 'SCARLETT';
#2. Select all the actors with the last name ‘Johansson’.
select * from sakila.actor
where last_name = 'JOHANSSON';
#How many films (movies) are available for rent?
select * from sakila.inventory; # There are 1000 films available
#How many films have been rented?
select * from sakila.rental;
#What is the shortest and longest rental period?
select max(rental_date) from sakila.rental;
select min(rental_date) from sakila.rental;
#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration from sakila.film;
select min(length) as  min_duration from sakila.film;
#What's the average movie duration?
select * from sakila.film;
select (avg(length)) from sakila.film; # the average duration is 115,27 min
# What's the average movie duration expressed in format (hours, minutes)?
select (avg(length))/60 
from sakila.film; #is expressed in minutes, so the avarage is 1 hour and 92 minutes
#How many movies longer than 3 hours?
# 3 hours=180 min
select * from sakila.film 
where length > 180 
order by length asc;
#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select* from  sakila.customer;
select*, LOWER(email) 
from sakila.customer;
#What's the length of the longest film title?
select* from  sakila.film_text;
select *, length(title) as 'Title_length' from sakila.film_text;
select max(length(title)) as max_length from sakila.film_text; # the longest film title has 27 characters. 