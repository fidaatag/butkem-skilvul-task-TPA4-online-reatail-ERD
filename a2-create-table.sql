USE online_retail_tpa4be;

CREATE TABLE seller (
    id_seller INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    phone_number BIGINT NOT NULL,
    name_store VARCHAR(50) NOT NULL,
    city_store VARCHAR(50) NOT NULL,
    province_store VARCHAR(50) NOT NULL,
    address_store TEXT NOT NULL,
    PRIMARY KEY (id_seller)
);

CREATE TABLE product (
    id_product INT NOT NULL AUTO_INCREMENT,
    name_product VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    weight_product INT NOT NULL,
    short_description TEXT NOT NULL,
    long_description TEXT NOT NULL,
    id_seller INT NOT NULL,
    PRIMARY KEY (id_product),
    CONSTRAINT fk_product_seller FOREIGN KEY (id_seller) REFERENCES seller(id_seller)
);

CREATE TABLE images (
    id_image INT NOT NULL AUTO_INCREMENT,
    image_alt VARCHAR(100) NOT NULL,
    image_src TEXT NOT NULL,
    id_product INT NOT NULL,
    PRIMARY KEY (id_image),
    CONSTRAINT fk_images_product FOREIGN KEY (id_product) REFERENCES product(id_product)
);

CREATE TABLE all_category (
    id_all_category INT NOT NULL AUTO_INCREMENT,
    type_category VARCHAR(50) NOT NULL,
    tagline TEXT,
    desc_category TEXT,
    PRIMARY KEY (id_all_category)
);

CREATE TABLE category (
    id_category INT NOT NULL AUTO_INCREMENT,
    id_product INT NOT NULL,
    id_all_category INT NOT NULL,
    PRIMARY KEY (id_category),
    CONSTRAINT fk_category_product FOREIGN KEY (id_product) REFERENCES product(id_product),
    CONSTRAINT fk_category_all_catagory FOREIGN KEY (id_all_category) REFERENCES all_category(id_all_category)
);

CREATE TABLE address (
    id_address INT NOT NULL AUTO_INCREMENT,
    type_address ENUM('home', 'office') NOT NULL DEFAULT 'home',
    city VARCHAR(50) NOT NULL,
    province VARCHAR(50) NOT NULL,
    zip_code INT(5) NOT NULL,
    PRIMARY KEY (id_address)
);

CREATE TABLE customer (
    id_customer INT NOT NULL AUTO_INCREMENT,
    name_customer VARCHAR(100) NOT NULL,
    phone_number BIGINT NOT NULL,
    email VARCHAR(50) NOT NULL,
    id_address INT NOT NULL,
    PRIMARY KEY (id_customer),
    CONSTRAINT fk_customer_address FOREIGN KEY (id_address) REFERENCES address(id_address)
);

CREATE TABLE review (
    id_review INT NOT NULL AUTO_INCREMENT,
    id_product INT NOT NULL,
    id_customer INT NOT NULL,
    comment VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_review),
    CONSTRAINT fk_review_product FOREIGN KEY (id_product) REFERENCES product(id_product),
    CONSTRAINT fk_review_customer FOREIGN KEY (id_customer) REFERENCES customer(id_customer)
);

CREATE TABLE orders (
    id_order INT NOT NULL AUTO_INCREMENT,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    quantity INT NOT NULL,
    id_product INT NOT NULL,
    id_customer INT NOT NULL,
    PRIMARY KEY (id_order),
    CONSTRAINT fk_order_product FOREIGN KEY (id_product) REFERENCES product(id_product),
    CONSTRAINT fk_order_customer FOREIGN KEY (id_customer) REFERENCES customer(id_customer)
);

CREATE TABLE shipping_method (
    id_shipping INT NOT NULL AUTO_INCREMENT,
    vendor VARCHAR(50) NOT NULL,
    type_vendor VARCHAR(50) NOT NULL,
    price_per_weight INT NOT NULL,
    PRIMARY KEY (id_shipping)
);

CREATE TABLE payment_method (
    id_payment INT NOT NULL AUTO_INCREMENT,
    method VARCHAR(50) NOT NULL,
    vendor VARCHAR(50) NOT NULL,
    hold_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_payment)
);

CREATE TABLE checkout (
    id_checkout INT NOT NULL AUTO_INCREMENT,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    id_order INT NOT NULL,
    id_shipping INT NOT NULL,
    id_payment INT NOT NULL,
    total_price INT,
    PRIMARY KEY (id_checkout),
    CONSTRAINT fk_checkout_order FOREIGN KEY (id_order) REFERENCES orders(id_order),
    CONSTRAINT fk_checkout_shipping FOREIGN KEY (id_shipping) REFERENCES shipping_method(id_shipping),
    CONSTRAINT fk_checkout_payment FOREIGN KEY (id_payment) REFERENCES payment_method(id_payment)
);