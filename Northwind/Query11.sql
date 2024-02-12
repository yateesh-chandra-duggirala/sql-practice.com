-- Show the category_name and the average product unit price for each category rounded to 2 decimal places.
select category_name, round(avg(unit_price),2)
FROM products INNER JOIN categories
ON products.category_id = categories.category_id
group by categories.category_name;