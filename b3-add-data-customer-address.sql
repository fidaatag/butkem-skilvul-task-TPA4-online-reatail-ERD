USE online_retail_tpa4be;

-- Insert data into the address table
INSERT INTO address (type_address, city, province, zip_code) VALUES
('home', 'jakarta', 'dki jakarta', 10110),
('office', 'surabaya', 'jawa timur', 60241),
('office', 'bandung', 'jawa barat', 40111),
('office', 'medan', 'sumatera utara', 20111),
('home', 'semarang', 'jawa tengah', 50134),
('home', 'makassar', 'sulawesi selatan', 90222),
('home', 'denpasar', 'bali', 80232),
('office', 'palembang', 'sumatera selatan', 30129),
('home', 'balikpapan', 'kalimantan timur', 76113),
('home', 'manado', 'sulawesi utara', 95111);

-- Insert data into the customer table
INSERT INTO customer (name_customer, phone_number, email, id_address) VALUES
('John Doe', 1234567890, 'john.doe@email.com', 1),
('Jane Smith', 2345678901, 'jane.smith@email.com', 2),
('Bob Johnson', 3456789012, 'bob.johnson@email.com', 3),
('Alice Williams', 4567890123, 'alice.williams@email.com', 4),
('Chris Davis', 5678901234, 'chris.davis@email.com', 5),
('Emma Brown', 6789012345, 'emma.brown@email.com', 6),
('David White', 7890123456, 'david.white@email.com', 7),
('Sophia Miller', 8901234567, 'sophia.miller@email.com', 8),
('Michael Wilson', 9012345678, 'michael.wilson@email.com', 9),
('Olivia Taylor', 1234509876, 'olivia.taylor@email.com', 10);
