SELECT
  created_at AS "time",
  "bookedBy" AS metric,
  id
FROM resource_bookings
WHERE
  $__timeFilter(created_at)
ORDER BY 1,2