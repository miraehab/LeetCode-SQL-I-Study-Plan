SELECT activity_date as day, count(DISTINCT user_id) as active_users
FROM Activity
GROUP BY activity_date
HAVING activity_date <= '2019-07-27' AND activity_date > '2019-06-27'