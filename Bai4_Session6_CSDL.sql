-- c1
SELECT hotel_id
FROM Bookings
GROUP BY hotel_id
HAVING SUM(CASE WHEN status = 'COMPLETED' THEN 1 ELSE 0 END) >= 50
   AND SUM(CASE WHEN status = 'COMPLETED' THEN total_price ELSE 0 END) / 
       SUM(CASE WHEN status = 'COMPLETED' THEN 1 ELSE 0 END) > 3000000;
       
-- c2
SELECT hotel_id
FROM Bookings
WHERE status = 'COMPLETED'
GROUP BY hotel_id
HAVING COUNT(id) >= 50
   AND AVG(total_price) > 3000000;