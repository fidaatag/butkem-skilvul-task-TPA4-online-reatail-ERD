USE online_retail_tpa4be;

-- ceritanya : 
-- Heli mau beli kemoceng(4), kertas a5(29), sapu besi(26)
-- Heli mau pakai jasa pengiriman sicepat (id_shipping = 6)
-- Heli mau bayar pake e-wallet OVO (id_payment = 6)

-- 1. daftarkan Heli jadi customer
-- INSERT INTO customer (name_customer, phone_number, email, id_address) 
-- VALUES ('Heli Guguguk', 081567234567, 'heliguguguk@email.com', 6);



-- 2. customer memilih produk yang mau dibeli
-- INSERT INTO orders (quantity, id_product, id_customer)
-- VALUES
-- (1, 4, (SELECT id_customer FROM customer WHERE name_customer = 'Heli Guguguk' LIMIT 1)),
-- (1, 29, (SELECT id_customer FROM customer WHERE name_customer = 'Heli Guguguk' LIMIT 1)),
-- (1, 26, (SELECT id_customer FROM customer WHERE name_customer = 'Heli Guguguk' LIMIT 1));



-- 3. customer melakukan checkout (memilih jasa pengiriman + metode pembayaran)
-- INSERT INTO checkout (id_order, id_shipping, id_payment) 
-- VALUES 
-- ((SELECT id_order FROM orders WHERE id_customer = (SELECT id_customer FROM customer WHERE name_customer = 'Heli Guguguk') LIMIT 1), 6, 6),
-- ((SELECT id_order FROM orders WHERE id_customer = (SELECT id_customer FROM customer WHERE name_customer = 'Heli Guguguk') LIMIT 1 OFFSET 1), 6, 6),
-- ((SELECT id_order FROM orders WHERE id_customer = (SELECT id_customer FROM customer WHERE name_customer = 'Heli Guguguk') LIMIT 1 OFFSET 2), 6, 6);


-- 4. customer melihat struk pembelian lengkap dengan data order dan checkout
SELECT
    c.name_customer,
    o.id_order,
    p.name_product,
    o.quantity,
    s.vendor AS shipping_vendor,
    pmt.method AS payment_method,
    ch.total_price AS price_product,
    SUM(ch.total_price) OVER () AS total_price_all_products
FROM
    customer c
JOIN
    orders o ON c.id_customer = o.id_customer
JOIN
    product p ON o.id_product = p.id_product
JOIN
    checkout ch ON o.id_order = ch.id_order
JOIN
    shipping_method s ON ch.id_shipping = s.id_shipping
JOIN
    payment_method pmt ON ch.id_payment = pmt.id_payment
WHERE
    c.name_customer = 'Heli Guguguk';
