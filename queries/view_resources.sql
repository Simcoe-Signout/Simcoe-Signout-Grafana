SELECT
  r.id AS "Resource ID",
  r.name AS "Resource Name",
  c.title AS "Category Name"
FROM resources r
JOIN categories c ON r.category_id = c.id
ORDER BY 1, 2;
