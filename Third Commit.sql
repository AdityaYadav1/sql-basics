use prints;# Assignment 3
CREATE VIEW Under_100 AS SELECT items.item_id, title, artist, unit_price, order_qty FROM items, orderline WHERE items.item_id = orderline.item_id AND unit_price < 100; 
CREATE VIEW Allen AS SELECT customers.customer_id, customer_name, customer_phone, title, artist FROM customers, items, orderline, orders WHERE customers.customer_id = orders.customer_id AND orders.order_id = orderline.order_id AND orderline.item_id = items.item_id;
CREATE VIEW orders AS SELECT items.item_id, title, artist, unit_price, order_qty, order_date FROM ((items JOIN orderline ON items.item_id = orderline.item_id) JOIN orders ON orders.order_id = orderline.order_id) WHERE orders.order_date BETWEEN '2014-01-01' AND '2014-02-28';
CREATE VIEW zip_27 AS SELECT customer_name, customer_phone, title, artist, ship_date FROM customers, items, orders, orderline WHERE customers.customer_id = orders.customer_id AND orders.order_id = orderline.order_id AND orderline.item_id = items.item_id AND customer_zip LIKE '27%';
CREATE INDEX customer_id ON customers (customer_id);
CREATE INDEX name ON customers (customer_name);
CREATE INDEX shipped ON orders (customer_id, ship_date);
DROP INDEX name ON customers;
ALTER TABLE items ADD CHECK (unit_price > 35);
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
ALTER TABLE orderline ADD FOREIGN KEY (item_id) REFERENCES items(item_id);
ALTER TABLE items ADD type CHARACTER(1);
UPDATE items SET type = 'M' WHERE Title = 'Skies Above';
ALTER TABLE items MODIFY COLUMN artist CHARACTER(30);
# drop table orders; to delete the orders table from the prints database