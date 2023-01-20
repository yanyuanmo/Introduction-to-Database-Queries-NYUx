Select first_name, last_name, line1, city, state, zip_code
FROM addresses
INNER JOIN customers 
ON customers.customer_id = addresses.customer_id
WHERE customers.email_address = 'allan.sherwood@yahoo.com'
ORDER BY zip_code ASC