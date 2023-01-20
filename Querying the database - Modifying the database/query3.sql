DELETE FROM categories 
WHERE
    category_id = (
select category_id from ( 
select category_id from categories where category_name='keyboards' )
 as t 
);