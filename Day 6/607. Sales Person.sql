SELECT DISTINCT name 
FROM SalesPerson p
WHERE p.sales_id not in (SELECT
                            o.sales_id
                        FROM
                            orders o
                                LEFT JOIN
                            company c ON o.com_id = c.com_id
                        WHERE
                            c.name = 'RED')
