SELECT p.product_id, p.product_name
FROM Product as p
WHERE p.product_id not in
    (SELECT product_id
    FROM sales
    WHERE sale_date <'2019-01-01'OR sale_date>'2019-03-31')