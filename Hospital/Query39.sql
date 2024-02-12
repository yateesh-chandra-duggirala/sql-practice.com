-- display the first name, last name and number of duplicate patients based on their first name and last name.
-- Ex: A patient with an identical name can be considered a duplicate.

select first_name, last_name, count(first_name) from patients group by first_name, last_name having count(first_name) > 1 order by count(first_name);