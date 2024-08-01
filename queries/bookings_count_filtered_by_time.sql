SELECT 
  COUNT(ALL id) 
FROM resource_bookings
WHERE
  $__timeFilter(created_at)
ORDER BY 1