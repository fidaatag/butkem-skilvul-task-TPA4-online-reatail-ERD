USE online_retail_tpa4be;

-- Insert data into seller table
INSERT INTO seller (email, phone_number, name_store, city_store, province_store, address_store)
VALUES
('seller1@example.com', 081123123123, 'Store Alexas', 'mamuju', 'sulawesi barat', 'Address A1'),
('seller2@example.com', 088786987678, 'Store BLoea', 'palu', 'sulawesi tengah', 'Address B1'),
('seller3@example.com', 091789567345, 'Store Creas', 'bandung', 'jawa barat', 'Address C1'),
('seller4@example.com', 052798213900, 'Store DKlos', 'semarang', 'jawa tengah', 'Address D1'),
('seller5@example.com', 012234345456, 'Store Exazam', 'surabaya', 'jawa timur', 'Address E1'),
('seller6@example.com', 092354353543, 'Store Freate', 'malang', 'jawa timur', 'Address F1'),
('seller7@example.com', 032423924373, 'Store Gozala', 'palu', 'sulawesi tengah', 'Address G1'),
('seller8@example.com', 023129274393, 'Store Holee', 'jakarta', 'DKI Jakarta', 'Address H1'),
('seller9@example.com', 089123213244, 'Store Ipola', 'malang', 'jawa timur', 'Address I1'),
('seller10@example.com',0912331234322, 'Store Jetto', 'depok', 'jawa barat', 'Address J1');

-- Insert data into product table
INSERT INTO product (name_product, price, weight_product, short_description, long_description, id_seller)
VALUES
('ember jumbo', 50000, 1, 'Short Desc A1', 'Long Desc A1', 1),
('sisir rambut', 1500, 1, 'Short Desc A2', 'Long Desc A2', 1),
('piring kucing', 40000, 5, 'Short Desc A3', 'Long Desc A3', 1),
('kemoceng', 60000, 2, 'Short Desc A4', 'Long Desc A4', 1),
('steker US', 45000, 4, 'Short Desc B1', 'Long Desc B1', 2),
('kabel RJ45', 35000, 5, 'Short Desc B2', 'Long Desc B2', 2),
('lampu remote', 55000, 10, 'Short Desc B3', 'Long Desc B3', 2),
('converter HDMI to VGA', 125000, 5, 'Short Desc B4', 'Long Desc B4', 2),
('baju tidur anak', 7000, 2, 'Short Desc C1', 'Long Desc C1', 3),
('celana kolor', 200000, 1, 'Short Desc C2', 'Long Desc C2', 3),
('selimut', 500, 1, 'Short Desc C3', 'Long Desc C3', 3),
('sarung bantal', 40, 1, 'Short Desc C4', 'Long Desc C4', 3),
('mie lidi', 300000, 1, 'Short Desc D1', 'Long Desc D1', 4),
('seblak instan', 60000, 1, 'Short Desc D2', 'Long Desc D2', 4),
('bakso buatan', 45000, 1, 'Short Desc D3', 'Long Desc D3', 4),
('kerupuk bawang', 35000, 1, 'Short Desc D4', 'Long Desc D4', 4),
('kertas a4', 25000, 1, 'Short Desc E1', 'Long Desc E1', 5),
('amplop coklat', 55000, 1, 'Short Desc E2', 'Long Desc E2', 5),
('kalender custom', 70000, 1, 'Short Desc E3', 'Long Desc E3', 5),
('buku tulis sidu', 20000, 1, 'Short Desc E4', 'Long Desc E4', 5),
('minyak kayu putih', 20000, 1, 'Short Desc F1', 'Long Desc F1', 6),
('minyak mawar', 20000, 1, 'Short Desc F2', 'Long Desc F2', 6),
('minyak jelantah', 20000, 1, 'Short Desc F3', 'Long Desc F3', 6),
('sapu lidi', 75000, 2, 'Short Desc G1', 'Long Desc G1', 7),
('sapu kelapa', 75000, 2, 'Short Desc G2', 'Long Desc G2', 7),
('sapu besi', 75000, 2, 'Short Desc G3', 'Long Desc G3', 7),
('kertas a4', 1000, 1, 'Short Desc H1', 'Long Desc H1', 8),
('kertas a3', 2000, 1, 'Short Desc H2', 'Long Desc H2', 8),
('kertas a5', 3000, 1, 'Short Desc H3', 'Long Desc H3', 9),
('bakso buatan', 2000000, 1, 'Short Desc I1', 'Long Desc I1', 9),
('mie lidi', 10, 1, 'Short Desc J1', 'Long Desc J1', 10);

-- Insert data into images table
INSERT INTO images (image_alt, image_src, id_product)
VALUES
('mie lidi pedas 20kg', 'mielidipedas.jpg', 13),
('mie lidi manis 20kg', 'mielidimanis.jpg', 13),
('mie lidi original 20kg', 'mielidioriginal.jpg', 13),
('ember jumbo biru', 'emberjumbobiru.jpg', 1),
('ember jumbo merah', 'emberjumbomerah.jpg', 1),
('ember jumbo hitam', 'emberjumbohitam.jpg', 1),
('kemoceng plastik', 'kemocengplastik.jpg', 4),
('kemoceng bulu', 'kemocengbulu.jpg', 4),
('kemoceng mix', 'kemocengmix.jpg', 4),
('celana kolor lubang 1', 'celanakolor1.jpg', 10);


-- Insert data into all_category table
INSERT INTO all_category (type_category, tagline, desc_category)
VALUES
('Electronics', 'Explore the latest gadgets and devices', 'Find cutting-edge electronic products for your needs.'),
('Home and Living', 'Furnish your home with style', 'Discover a wide range of home decor and living essentials.'),
('Fashion', 'Stay trendy with our fashion items', 'Explore the latest fashion trends and accessories.'),
('Books and Stationery', 'Fuel your knowledge', 'A collection of books and stationery essentials to enhance your learning experience.'),
('Food and Beverages', 'Delicious treats for every taste', 'Satisfy your cravings with our diverse selection of food and beverages.'),
('Health and Beauty', 'Take care of yourself', 'Discover health and beauty products to enhance your well-being.'),
('Sports and Outdoors', 'Stay active and adventurous', 'Explore sports and outdoor equipment for an active lifestyle.'),
('Toys and Games', 'Fun for all ages', 'A variety of toys and games for entertainment and enjoyment.'),
('Automotive', 'Drive with confidence', 'Find automotive accessories and essentials for your vehicle.'),
('Pet Supplies', 'Caring for your furry friends', 'Discover a range of pet supplies for your beloved pets.');


-- Insert data into all_category table
INSERT INTO category (id_product, id_all_category)
VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 3),
(24, 2),
(25, 2);