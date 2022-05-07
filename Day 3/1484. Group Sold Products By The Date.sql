SELECT a.sell_date, count(a.product) as num_sold, string_agg(a.product,',') within group (order by a.product) as products
From (
        SELECT DISTINCT sell_date, product 
        FROM Activities
    ) as a
GROUP BY a.sell_date
ORDER BY a.sell_date
