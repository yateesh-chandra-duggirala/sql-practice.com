-- Show the city, company_name, contact_name from the customers and suppliers table merged together. Create a column which contains 'customers' or 'suppliers' depending on the table it came from.
SELECT city, company_name, contact_name, 'customers' AS source_type
FROM customers
UNION
SELECT city, company_name, contact_name, 'suppliers' AS source_type
FROM suppliers;