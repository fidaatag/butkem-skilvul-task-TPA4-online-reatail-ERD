USE online_retail_tpa4be;

-- pastikan dulu, order yang dihapus itu yang tidak di checkout
-- SELECT * FROM orders
-- WHERE id_order NOT IN (SELECT id_order FROM checkout);

-- delete order yang tidak di checkout 
DELETE FROM orders
WHERE NOT EXISTS (SELECT * FROM checkout WHERE checkout.id_order = orders.id_order )