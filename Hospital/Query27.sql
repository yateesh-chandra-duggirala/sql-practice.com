-- Show all allergies ordered by popularity. Remove NULL values from query.
select allergies, count(allergies) from patients where allergies is not null group by allergies having count(allergies) order by count(allergies) desc;