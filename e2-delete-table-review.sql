USE online_retail_tpa4be;

-- tabel review dihilangkan karena customer tetap bisa melakukan checkout sesuai dengan flow utama toko online

-- 1. hapus kata kunci 
-- ALTER TABLE review DROP FOREIGN KEY fk_review_customer;
-- ALTER TABLE review DROP FOREIGN KEY fk_review_product;

-- 2. hapus data tabel 
-- DELETE FROM review

-- 3. hapus tabel
-- DROP TABLE review