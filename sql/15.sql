/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

select category.name, count(*) as "sum" from category, film_category, film, language
where category.category_id = film_category.category_id and
      film_category.film_id = film.film_id and
      film.language_id = language.language_id and
      language.name = 'English'
group by category.name;
