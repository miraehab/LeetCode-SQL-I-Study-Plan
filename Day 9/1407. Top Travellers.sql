SELECT u.name, coalesce(SUM(r.distance),0) as "travelled_distance"
FROM users as u
LEFT JOIN rides as r
ON u.id = r.user_id
GROUP BY u.name
ORDER BY travelled_distance DESC, u.name