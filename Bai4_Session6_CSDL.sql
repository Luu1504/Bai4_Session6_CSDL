SELECT 
    hotel_id, 
    COUNT(*) AS total_completed_bookings,
    AVG(total_price) AS avg_revenue
FROM 
    Bookings
WHERE 
    status = 'COMPLETED'  
GROUP BY 
    hotel_id
HAVING 
    COUNT(*) >= 50 
    AND AVG(total_price) > 3000000;