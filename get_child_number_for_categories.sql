-- 2.2 Количество дочерних элементов первого уровня вложенности
-- для категорий номенклатуры.

SELECT 
  c.id,
  c.name AS category_name, 
  COUNT(sub.id) AS child_count
  FROM categories c
  LEFT JOIN categories sub ON sub.parent_id = c.id
  GROUP BY c.id, c.name
  ORDER BY c.id;
