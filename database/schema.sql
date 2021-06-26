-- Schema creation goes here
DROP TABLE IF EXISTS categories CASCADE;
create table categories (
  id                SERIAL PRIMARY KEY,
  category_name     VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS addresses CASCADE;
create table addresses (
  id                SERIAL PRIMARY KEY,
  street            VARCHAR(255) NOT NULL,
  street2           VARCHAR(255) NULL,
  city              VARCHAR(255) NOT NULL,
  state_or_province VARCHAR(255) NOT NULL,
  zip_code          VARCHAR(255) NOT NULL,
  country           VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS products CASCADE;
create table products (
  id                SERIAL PRIMARY KEY,
  prod_name         VARCHAR(255) NOT NULL,
  prod_description  VARCHAR(255) NOT NULL,
  prod_price        DECIMAL
);


DROP TABLE IF EXISTS customers CASCADE;
create table customers (
  id                SERIAL PRIMARY KEY,
  first_name        VARCHAR(255) NOT NULL,
  last_name         VARCHAR(255) NOT NULL,
  contact_phone     VARCHAR(30) NOT NULL,
  address_id        INTEGER, -- FK to addresses.id
  e_mail            VARCHAR(255) NOT NULL
);


DROP TABLE IF EXISTS product_categories CASCADE; -- join table for products & categories
create table product_categories (
  id                SERIAL PRIMARY KEY,
  product_id        INTEGER, -- FK reference to products.id
  category_id       INTEGER -- FK reference to categories.id
);


DROP TABLE IF EXISTS orders CASCADE;
create table orders (
  id                SERIAL PRIMARY KEY,
  customer_id       INTEGER, -- FK reference to customers.id
  product_id        INTEGER, -- FK reference to products.id
  order_date        DATE, 
  delivery_date     DATE
);



ALTER TABLE customers
    ADD CONSTRAINT fk_address_id 
    FOREIGN KEY (address_id) 
    REFERENCES addresses;

ALTER TABLE product_categories
  ADD CONSTRAINT fk_product_id
  FOREIGN KEY (product_id)
  REFERENCES products;

ALTER TABLE product_categories
  ADD CONSTRAINT fk_category_id
  FOREIGN KEY (category_id)
  REFERENCES categories;

ALTER TABLE orders
  ADD CONSTRAINT fk_customer_id
  FOREIGN KEY (customer_id)
  REFERENCES customers;

ALTER TABLE orders
  ADD CONSTRAINT fk_product_id
  FOREIGN KEY (product_id)
  REFERENCES products;


