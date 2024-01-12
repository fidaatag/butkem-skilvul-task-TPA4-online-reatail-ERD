USE online_retail_tpa4be;

-- lihat semua jasa pengiriman yang tersedia
-- SELECT * FROM shipping_method

-- urutan 3 jasa pengiriman termurah
-- SELECT * FROM shipping_method ORDER BY price_per_weight ASC LIMIT 3

-- urutan jasa pengiriman paling banyak digunakan
SELECT s.vendor, COUNT(c.id_checkout) AS total_orders
FROM shipping_method s
JOIN checkout c ON s.id_shipping = c.id_shipping
GROUP BY s.vendor
ORDER BY total_orders DESC;


