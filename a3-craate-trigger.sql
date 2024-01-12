USE online_retail_tpa4be;

CREATE TRIGGER before_checkout_insert
BEFORE INSERT ON checkout
FOR EACH ROW
SET NEW.create_at = IFNULL(NEW.create_at, CURRENT_TIMESTAMP),
    NEW.update_at = CURRENT_TIMESTAMP;

CREATE TRIGGER before_checkout_update
BEFORE UPDATE ON checkout
FOR EACH ROW
SET NEW.create_at = OLD.create_at;  -- Jangan ubah create_at saat update;

DELIMITER //
CREATE TRIGGER calculate_total_price
BEFORE INSERT ON checkout
FOR EACH ROW
BEGIN
    DECLARE product_price INT;
    DECLARE shipping_price INT;
    DECLARE order_quantity INT;
    DECLARE order_weight INT;

    -- Get product price and weight
    SELECT price, weight_product
    INTO product_price, order_weight
    FROM product
    WHERE id_product = (SELECT id_product FROM orders WHERE id_order = NEW.id_order);

    -- Get shipping price
    SELECT price_per_weight
    INTO shipping_price
    FROM shipping_method
    WHERE id_shipping = NEW.id_shipping;

    -- Get order quantity
    SELECT quantity
    INTO order_quantity
    FROM orders
    WHERE id_order = NEW.id_order;

    -- Calculate total price and update in checkout table
    SET NEW.total_price = (order_quantity * product_price) + (order_quantity * order_weight * shipping_price);
END;
//
DELIMITER ;
