SELECT
  rb.created_at AS "Creation Date",
  rb.id AS "Booking ID",
  u.full_name AS "Booker Name",
  r.name AS "Resource",
  string_agg(bd."date"::text || '-' || bd."period"::text, ', ') AS "Booked Dates (YY-MM-DD-Period)",
  rb.comments AS "Comments"
FROM resource_bookings rb
JOIN users u ON rb."bookedById" = u.id
JOIN resources r ON rb."resource_id" = r.id
JOIN LATERAL (
    SELECT
      jsonb_array_elements(rb."bookingDates")->>'date' AS "date",
      (jsonb_array_elements(rb."bookingDates")->>'period')::int AS "period"
) bd ON true
WHERE
  $__timeFilter(rb.created_at)
GROUP BY rb.created_at, rb.id, u.full_name, r.name, rb.comments
ORDER BY 1, 2;
