USE online_retail_tpa4be;

-- lihat semua product
-- SELECT * FROM product

-- lihat produk dari yang termurah
-- SELECT * FROM product ORDER BY price

-- lihat produk yang dari jakarta
-- SELECT p.*
-- FROM product p
-- JOIN seller s ON p.id_seller = s.id_seller
-- JOIN address a ON s.id_seller = a.id_address
-- WHERE a.city = 'Jakarta';

-- lihat product yang reviewnya paling banyak
SELECT p.id_product, p.name_product, COUNT(r.id_review) AS total_review
FROM product p
LEFT JOIN review r ON p.id_product = r.id_product
GROUP BY p.id_product, p.name_product
ORDER BY total_review DESC