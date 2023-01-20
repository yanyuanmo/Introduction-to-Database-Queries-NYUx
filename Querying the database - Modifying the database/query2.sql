UPDATE categories 
SET 
    category_name = 'Woodwinds'
WHERE
    category_id = (
select category_id from ( 
select category_id from categories where category_name='drums' )
 as t 
);