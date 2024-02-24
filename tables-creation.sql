create table customer (
  customer_id integer primary key,
  age integer
);

create table sales (
  sales_id integer primary key,
  customer_id integer,
  foreign key (customer_id) references customer(customer_id)
);

create table items (
  item_id integer primary key,
  item_name text
);

create table orders (
  order_id integer primary key,
  sales_id integer,
--   item_id integer,
  foreign key (sales_id) references sales(sales_id)
);

create table sales_items (
  order_id integer,
  item_id integer,
  quantity integer,
  foreign key (order_id) references orders(order_id),
  foreign key (item_id) references items(item_id)
);
