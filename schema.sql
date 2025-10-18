CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(500) NOT NULL,
  parent_id INT REFERENCES categories(id)
);

CREATE TABLE nomenclature (
  id SERIAL PRIMARY KEY,
  name VARCHAR(500) NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  category_id INT REFERENCES categories(id)
);

CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(500) NOT NULL,
  address VARCHAR(500) NOT NULL
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  client_id INT REFERENCES clients(id),
  order_date DATE
);

CREATE TABLE order_items (
  id SERIAL PRIMARY KEY,
  order_id INT REFERENCES orders(id),
  nomenclature_id INT REFERENCES nomenclature(id),
  quantity INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL
);

