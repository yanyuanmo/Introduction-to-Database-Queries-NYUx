SELECT first_name, last_name, CONCAT(last_name, ", ", first_name) AS full_name
FROM customers
WHERE left(last_name, 1) >= 'M' AND left(last_name, 1) <= 'Z'
ORDER BY last_name ASC