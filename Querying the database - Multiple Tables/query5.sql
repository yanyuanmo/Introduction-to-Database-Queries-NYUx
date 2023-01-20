SELECT order_id, order_date, ship_status FROM
(
    SELECT order_id, order_date, 'SHIPPED' as ship_status
    FROM orders 
    WHERE ship_date IS NOT NULL
    UNION
    SELECT order_id, order_date, 'NOT SHIPPED' as ship_status
    FROM orders
    WHERE ship_date IS NULL
) AS myQuery ORDER BY order_date;