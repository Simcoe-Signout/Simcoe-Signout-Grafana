SELECT
  created_at AS "time",
  id
FROM users
WHERE
  $__timeFilter(created_at)
ORDER BY 1