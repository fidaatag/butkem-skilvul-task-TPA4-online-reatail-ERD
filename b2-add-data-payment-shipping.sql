USE online_retail_tpa4be;

-- Insert data into the shipping_method table
INSERT INTO shipping_method (vendor, type_vendor, price_per_weight) 
VALUES
('jnt', 'Express', 10000),
('jnt', 'Standard', 5000),
('wahana', 'Priority', 15000),
('wahana', 'Standard', 6000),
('wahana', 'Regular', 1000),
('sicepat', 'Express', 12000),
('tiki', 'Standard', 8000),
('tiki', 'Regular', 5000),
('jne', 'NextDay', 98000),
('jne', 'Express', 19000),
('jne', 'Regular', 12000);

-- Insert data into the payment_method table
INSERT INTO payment_method (method, vendor, hold_name) 
VALUES
('Bank Transfer', 'BCA', 'nama empunya aplikasi'),
('Bank Transfer', 'BNI', 'nama empunya aplikasi'),
('Bank Transfer', 'DANAMON', 'nama empunya aplikasi'),
('Bank Transfer', 'JAGO', 'nama empunya aplikasi'),
('Bank Transfer', 'BRI', 'nama empunya aplikasi'),
('E-wallet', 'OVO', 'nama empunya aplikasi'),
('E-wallet', 'DANA', 'nama empunya aplikasi'),
('E-wallet', 'GOPAY', 'nama empunya aplikasi'),
('E-wallet', 'SHOPEPAY', 'nama empunya aplikasi'),
('Virtual Account', 'BRIVA', 'nama empunya aplikasi'),
('Virtual Account', 'BNIVA', 'nama empunya aplikasi'),
('Virtual Account', 'BCAVA', 'nama empunya aplikasi');
