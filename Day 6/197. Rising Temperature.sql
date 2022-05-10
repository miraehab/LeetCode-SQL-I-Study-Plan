SELECT w1.id
FROM Weather w1, Weather w2
WHERE w1.temperature > w2.temperature and DATEDIFF(w1.recordDate, w2.recordDate) = 1
