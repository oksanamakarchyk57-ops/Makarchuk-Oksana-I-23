# Explanation of Column Type Choices for `products` Table

## `id` — INTEGER
The `id` column uses the INTEGER type because it serves as the primary key and represents unique identifiers for each product row. In SQLite, INTEGER columns have INTEGER type affinity, meaning the database will attempt to convert values to integers for storage. Using INTEGER ensures proper primary key behavior with automatic rowid assignment and efficient sorting/comparison operations.

## `name` — TEXT
The `name` column uses TEXT type because product names are variable-length character strings. Text values like "Cotton T-Shirt" or "Blue Jeans" naturally fit the TEXT affinity, which stores data as-is without type coercion. SQLite's TYPE affinity allows TEXT columns to store any type of value, but using TEXT explicitly ensures proper string operations (concatenation, pattern matching) and clear semantic meaning.

## `category` — TEXT
The `category` column uses TEXT type because product categories are descriptive labels such as "Tops", "Bottoms", "Footwear", etc. Like `name`, these are variable character strings that benefit from TEXT affinity. The category values need to support string operations for filtering and grouping queries, which TEXT type optimizes.

## `size` — TEXT
The `size` column uses TEXT type even though sizes represent numeric values (like "M", "L", "32", "42"). In practice, clothing sizes are alphanumeric labels (M, L, XL, S, 32, 34, 42, etc.) rather than pure numbers. Using TEXT preserves the exact size representation as provided by the retailer. If sizes were stored as INTEGER, a size like "M" would fail conversion, and sizes like "32" would lose their label context. TEXT affinity allows SQLite to store any size format while still supporting comparison operations.

## `price` — REAL
The `price` column uses REAL type because it stores monetary values that require decimal precision. REAL (floating-point) affinity ensures that values like 29.99, 59.99, 89.99 are stored as numbers, enabling arithmetic operations (addition, subtraction, multiplication for taxes, discounts). Using INTEGER would truncate the decimal portion, losing cents information. REAL type affinity allows SQLite to convert numeric strings to floating-point numbers for accurate price calculations.

## `stock_quantity` — INTEGER
The `stock_quantity` column uses INTEGER type because it represents countable quantities of items in stock. INTEGER affinity is appropriate here because stock quantities are whole numbers — you cannot have 5.5 T-shirts in stock. The lecture concept of type affinity explains that INTEGER columns are optimized for whole-number storage and operations. Using TEXT for stock_quantity would be semantically incorrect and would prevent numeric operations like "SUM of all stock" or "WHERE stock > 10" queries, which require INTEGER type for proper comparison and aggregation.