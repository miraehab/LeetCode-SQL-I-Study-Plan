SELECT product_id,'store1' as store, store1 as price 
FROM products 
WHERE store1 is not null

UNION

SELECT product_id,'store2' as store, store2 as price 
FROM products 
WHERE store2 is not null

UNION

SELECT product_id,'store3' as store, store3 as price 
FROM products 
WHERE store3 is not null