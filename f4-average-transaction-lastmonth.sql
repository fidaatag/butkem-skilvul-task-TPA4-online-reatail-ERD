USE online_retail_tpa4be;

SELECT AVG(total_price) AS average_transaction_amount
FROM checkout
WHERE create_at >= NOW() - INTERVAL 1 MONTH;
