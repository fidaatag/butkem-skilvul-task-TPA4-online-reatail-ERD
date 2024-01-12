USE online_retail_tpa4be;

SELECT ac.type_category, COUNT(p.id_product) AS total_products
FROM all_category ac
JOIN category c ON ac.id_all_category = c.id_all_category
JOIN product p ON c.id_product = p.id_product
GROUP BY ac.id_all_category
ORDER BY total_products DESC
LIMIT 1;
