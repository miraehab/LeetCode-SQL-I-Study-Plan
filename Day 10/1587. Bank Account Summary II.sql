SELECT u.name, SUM(t.amount) as balance
FROM Users as u, Transactions as t
WHERE u.account = t.account
GROUP BY t.account
HAVING SUM(t.amount) > 10000