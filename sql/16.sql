/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

select title, sum(amount) as profit from inventory
join film using (film_id)
join rental using (inventory_id)
join payment using (rental_id)
group by title
order by profit desc
