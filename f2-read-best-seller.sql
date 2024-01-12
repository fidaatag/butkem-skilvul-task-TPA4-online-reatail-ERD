USE online_retail_tpa4be;

SELECT p.name_product, COUNT(o.id_order) AS order_count
FROM product p
JOIN orders o ON p.id_product = o.id_product
GROUP BY p.id_product
ORDER BY order_count DESC
LIMIT 3;
