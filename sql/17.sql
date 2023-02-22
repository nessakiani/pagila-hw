/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

select country, sum(amount) as profit from customer
join rental using (customer_id)
join payment using (rental_id)
join address using (address_id)
join city using (city_id)
join country using (country_id)
group by country
order by country asc
