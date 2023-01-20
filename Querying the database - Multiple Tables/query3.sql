Select first_name, last_name, line1, city, state, zip_code
FROM addresses
INNER JOIN customers 
ON customers.customer_id = addresses.customer_id AND customers.shipping_address_id = addresses.address_id
ORDER BY zip_code ASC