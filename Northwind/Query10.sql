-- Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table

select product_name, company_name, category_name 
from products INNER JOIN suppliers
on products.supplier_id = suppliers.supplier_id
INNER JOIN categories
ON products.category_id = categories.category_id;