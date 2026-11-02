CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name TEXT,
    category TEXT,
    size TEXT,
    price REAL,
    stock_quantity INTEGER
);

INSERT INTO products (id, name, category, size, price, stock_quantity) VALUES
(1, 'Cotton T-Shirt', 'Tops', 'M', 29.99, 50),
(2, 'Blue Jeans', 'Bottoms', '32', 59.99, 30),
(3, 'Wool Sweater', 'Tops', 'L', 89.99, 20),
(4, 'Sneakers', 'Footwear', '42', 99.99, 15),
(5, 'Leather Jacket', 'Outerwear', 'XL', 199.99, 8),
(6, 'Silk Scarf', 'Accessories', 'One Size', 49.99, 25);