CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    age INTEGER
    height INTEGER 
    city VARCHAR(200),
    favorite_color VARCHAR(200)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES
('amber', 39, 65, 'phoenix', 'purple'),
('nick', 40, 67, 'phoenix', 'black'),
('cora', 7, 48, 'phoenix', 'red'),
('kinley', 5, 20, 'heaven', 'purple'),
('scarlet', 3, 34, 'phoenix', 'rainbow');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person 
ORDER BY height ASC;

SELECT * FROM person 
ORDER BY age ASC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person 
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 AND age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color = 'red';

SELECT * FROM person
WHERE favorite_color != 'red' and favorite_color != 'blue';

SELECT * FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange','green','blue');

SELECT * FROM person
WHERE favorite_color IN ('purple','yellow');

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL REFERENCES person(person_id),
    product_name VARCHAR(200),
    product_price INTEGER,
    quantity INTEGER
);
INSERT INTO orders (person_id, product_name, product_price, quantity) 
VALUES 
(1, 'pizza', 5, 1),
(2, 'meatballs', 7, 4),
(3, 'candy', 1, 3),
(4, 'clothes', 100, 5),
(5, 'water', 99, 2);

SELECT * FROM orders;

SELECT SUM(quantity)
FROM orders;

SELECT SUM(product_price)
FROM order;

SELECT SUM(quantity * product_price)
FROM orders
WHERE person_id = 1;

INSERT INTO artist (name)
VALUES 
('chibi'),
('rainbow');

SELECT * FROM artist
ORDER BY name DESC LIMIT 10; 

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name 
ILIKE 'Black%'

SELECT * FROM artist
WHERE name 
ILIKE '%Black%'

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee 
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = "Lethbridge"

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice 
WHERE  total > 5;

SELECT COUNT(*) FROM invoice 
WHERE  total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;





