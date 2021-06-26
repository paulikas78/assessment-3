-- categories seeds
INSERT INTO categories (id, category_name)
VALUES (1, 'Living Room');

INSERT INTO categories (id, category_name)
VALUES (2, 'Kitchen');

INSERT INTO categories (id, category_name)
VALUES (3, 'Home Office');

INSERT INTO categories (id, category_name)
VALUES (4, 'Bath Room');

INSERT INTO categories (id, category_name)
VALUES (5, 'Entryway');


-- adresses seeds
INSERT INTO addresses (id, street, street2, city, state_or_province, zip_code, country) 
VALUES (1, '3230 Central Ave.', 'Apt. 1', 'Alameda', 'CA', '94501', 'USA');

INSERT INTO addresses (id, street, street2, city, state_or_province, zip_code, country) 
VALUES (2, '5500 Sunset Blvd.', NULL, 'Hollywood', 'CA', '90036', 'USA');

INSERT INTO addresses (id, street, street2, city, state_or_province, zip_code, country) 
VALUES (3, '2202 W. Baseline Rd.', 'Unit 76', 'Mesa', 'AZ', '86845', 'USA');

INSERT INTO addresses (id, street, street2, city, state_or_province, zip_code, country) 
VALUES (4, '9 Endrus Rd.', 'Lot 1', 'Wasaga Beach', 'ON', 'L0L 2P0', 'CANADA');

INSERT INTO addresses (id, street, street2, city, state_or_province, zip_code, country) 
VALUES (5, '1 Rua Isidio Alves Ribeiro', 'Vila Militar', 'Piraquaria', 'PR', '83304-427', 'BRAZIL');


-- products seeds
INSERT INTO products (id, prod_name, prod_description, prod_price)
VALUES (1, 'Candlestick', 'silver 8 in. / 20 cm. tall Candlestick', 9.99);

INSERT INTO products (id, prod_name, prod_description, prod_price)
VALUES (2, 'Plate Set', '4 Large, Ceramic Plates', 14.99);

INSERT INTO products (id, prod_name, prod_description, prod_price)
VALUES (3, 'Laptop Riser', 'Wooden, 2 in. / 5 cm. Riser For All Laptops', 11.99);

INSERT INTO products (id, prod_name, prod_description, prod_price)
VALUES (4, 'Shaving Mirror', '8 in. / 20 cm. x 4 in. / 10 cm. Mirror w/ Suction Cups / Shower Wall Mounts', 24.99);

INSERT INTO products (id, prod_name, prod_description, prod_price)
VALUES (5, 'Welcome Mat', '20 in. / 51 cm. x 50 in. / 115 cm. Black Carpeted Mat', 19.99);


-- customers seeds
INSERT INTO customers (id, first_name, last_name, contact_phone, address_id, e_mail) 
VALUES (1, 'Henry', 'Rollins', '+1 (312) 545 - 2209', 1,'rollins@blackflag.com');

INSERT INTO customers (id, first_name, last_name, contact_phone, address_id, e_mail) 
VALUES (2, 'Bugs', 'Bunny', '+1 (323) 658 - 3141', 2,'bugs@bunny.com');

INSERT INTO customers (id, first_name, last_name, contact_phone, address_id, e_mail) 
VALUES (3, 'Dark', 'Helmet', '+1 (480) 434 - 2415', 3,'helmet@spaceballs.com');

INSERT INTO customers (id, first_name, last_name, contact_phone, address_id, e_mail) 
VALUES (4, 'John', 'Riggs', '+1 (416) 946 - 2328', 4,'linux4life@gmail.com');

INSERT INTO customers (id, first_name, last_name, contact_phone, address_id, e_mail) 
VALUES (5, 'Lula', 'da Silva', '+55 41 3240 - 5000', 5,'paz_e_amor@gmail.com');


-- product categories seeds
INSERT INTO product_categories (id, product_id, category_id)
VALUES (1, 1, 1);

INSERT INTO product_categories (id, product_id, category_id)
VALUES (2, 2, 2);

INSERT INTO product_categories (id, product_id, category_id)
VALUES (3, 3, 3);

INSERT INTO product_categories (id, product_id, category_id)
VALUES (4, 4, 4);

INSERT INTO product_categories (id, product_id, category_id)
VALUES (5, 5, 5);


-- orders seeds
INSERT INTO orders (id, product_id, customer_id, order_date, delivery_date)
VALUES (1, 1, 1, '2021-06-25', '2021-06-30');

INSERT INTO orders (id, product_id, customer_id, order_date, delivery_date)
VALUES (2, 2, 2, '2020-01-01', '2020-01-04');

INSERT INTO orders (id, product_id, customer_id, order_date, delivery_date)
VALUES (3, 3, 3, '2021-02-26', '2021-02-28');

INSERT INTO orders (id, product_id, customer_id, order_date, delivery_date)
VALUES (4, 4, 4, '2020-11-28', '2020-12-01');

INSERT INTO orders (id, product_id, customer_id, order_date, delivery_date)
VALUES (5, 5, 5, '2019-05-20', '2019-05-24');


-- set val statements
SELECT setval('categories_id_seq', (SELECT MAX(id) FROM categories));
SELECT setval('customers_id_seq', (SELECT MAX(id) FROM customers));
SELECT setval('addresses_id_seq', (SELECT MAX(id) FROM addresses));
SELECT setval('product_categories_id_seq', (SELECT MAX(id) FROM product_categories));
SELECT setval('products_id_seq', (SELECT MAX(id) FROM products));
SELECT setval('orders_id_seq', (SELECT MAX(id) FROM orders));






