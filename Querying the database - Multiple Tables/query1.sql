Select category_name, product_name, list_price
FROM products
INNER JOIN categories 
ON categories.category_id = products.category_id
ORDER BY category_name ASC, product_name ASC