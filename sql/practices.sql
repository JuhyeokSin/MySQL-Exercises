/*
1. List how many addresses in each city
 -  Name of the city, Number of addresses in that city
*/

SELECT c.city, COUNT(a.address) AS num_addresses
FROM sakila.address a JOIN sakila.city c ON (a.city_id=c.city_id)
GROUP BY c.city
SORT BY COUNT(a.address);

