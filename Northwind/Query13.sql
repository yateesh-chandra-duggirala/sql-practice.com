-- Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken, and a column called "Shipped" that displays "On Time" if the order shipped_date is less or equal to the required_date, "Late" if the order shipped late. Order by employee last_name, then by first_name, and then descending by number of orders.
select first_name, last_name, count(orders.employee_id) as 'num_of_orders',
CASE
WHEN orders.shipped_date <= required_date
THEN 'On Time'
ELSE 'Late'
END
AS 'Shipped'

FROM employees INNER JOIN orders
ON employees.employee_id = orders.employee_id
Group by orders.employee_id, Shipped
order by employees.last_name, employees.first_name, num_of_orders desc;