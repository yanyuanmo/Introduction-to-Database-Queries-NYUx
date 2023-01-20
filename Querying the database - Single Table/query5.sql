SELECT item_id, item_price, discount_amount, quantity, item_price*quantity AS price_total, discount_amount*quantity AS discount_total, (item_price*quantity-discount_amount*quantity) AS item_total
FROM order_items
WHERE (item_price*quantity-discount_amount*quantity) > 500
ORDER BY (item_price*quantity-discount_amount*quantity) desc