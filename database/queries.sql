-- Queries go here
  --1. Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
SELECT first_name, last_name, e_mail
FROM customers as C
WHERE c.e_mail ILIKE '%gmail%';


  --2. Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
SELECT *
FROM addresses AND id FROM orders
WHERE order_date ILIKE '2020%';


  --3. Retrieve all product details for products that are under the "Kitchen" category
SELECT *
FROM products
JOIN categories
ON products.category_id = category.id 
AND category.category_name = 'Kitchen'; 


  --4. Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"