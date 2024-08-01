SELECT 
  COUNT(ALL id) 
FROM users
WHERE
  $__timeFilter(created_at)
ORDER BY 1