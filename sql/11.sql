/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

select film_id, title, count(inventory_id) from film
join inventory using (film_id) where title ilike 'h%'
group by film_id
order by title desc
