CREATE TABLE customer (
  customer_id INTEGER PRIMARY KEY,
  age INTEGER
);

CREATE TABLE sales (
  sales_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE items (
  item_id INTEGER PRIMARY KEY,
  item_name TEXT
);

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  sales_id INTEGER,
--   item_id INTEGER,
  FOREIGN KEY (sales_id) REFERENCES sales(sales_id)
);

CREATE TABLE sales_items (
  order_id INTEGER,
  item_id INTEGER,
  quantity INTEGER,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (item_id) REFERENCES items(item_id)
);