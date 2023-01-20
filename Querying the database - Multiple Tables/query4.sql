Select last_name, first_name, order_date, product_name, item_price, discount_amount, quantity
FROM customers c
NATURAL JOIN orders 
NATURAL JOIN order_items
NATURAL JOIN products 
ORDER BY last_name, order_date, product_name