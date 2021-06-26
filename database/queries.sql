-- Queries go here
  --1. Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
SELECT first_name, last_name, e_mail
FROM customers as C
WHERE c.e_mail ILIKE '%gmail%';


  --2. Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
SELECT a.street, a.street2, a.city, a.state_or_province, a.zip_code, a.country 
FROM addresses a 
JOIN customers 
ON a.id = customers.address_id 
JOIN orders
ON customers.id = orders.customer_id
WHERE order_date < '2021-01-01' AND order_date  > '2019-12-31';


  --3. Retrieve all product details for products that are under the "Kitchen" category
SELECT *
FROM products
JOIN product_categories
ON products.id = product_categories.product_id
JOIN categories
ON product_categories.category_id = categories.id 
WHERE category_name = 'Kitchen';


  --4. Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"

SELECT p.prod_name, p.prod_price
FROM products p
JOIN orders o
ON o.product_id = p.id
JOIN customers c
ON o.customer_id = c.id
WHERE first_name = 'Bugs' AND last_name = 'Bunny';