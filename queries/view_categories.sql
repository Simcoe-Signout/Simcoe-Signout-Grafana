SELECT
  c.id AS "Category ID",
  c.title AS "Category Name",
  c.description AS "Category Description",
  c.deleted AS "Deletion Status"
FROM categories c
ORDER BY 1;
