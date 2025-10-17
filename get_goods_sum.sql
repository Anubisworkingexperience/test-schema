-- 2.1 Получение информации о сумме товаров заказанных под каждого клиента
-- (Наименование клиента, сумма)

SELECT clients.name AS client_name,
 SUM(order_items.quantity * order_items.price) AS goods_sum FROM clients
 JOIN orders ON clients.id = orders.client_id
 JOIN order_items ON order_items.order_id = orders.id
 GROUP BY clients.name
 ORDER BY goods_sum DESC; 