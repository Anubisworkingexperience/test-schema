-- 2.2 Количество дочерних элементов первого уровня вложенности
-- для категорий номенклатуры.

SELECT 
  categories.id,
  categories.name AS category_name, 
  COUNT(categories.id) AS child_count
  FROM categories
  LEFT JOIN categories ON categories.parent_id = categories.id
  GROUP BY categories.id, categories.name
  ORDER BY categories.id;
