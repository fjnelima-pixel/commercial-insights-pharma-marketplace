-- Buyer Demand Analysis
SELECT 
    buyer_id,
    COUNT(transaction_id) AS total_orders,
    SUM(quantity * unit_price) AS total_spend
FROM transactions
GROUP BY buyer_id
ORDER BY total_spend DESC
LIMIT 10;

-- Supplier Pricing & Performance
SELECT 
    supplier_id,
    AVG(unit_price) AS avg_price,
    SUM(quantity) AS total_volume
FROM transactions
GROUP BY supplier_id
ORDER BY total_volume DESC;

-- Marketplace Health Metrics
SELECT 
    COUNT(transaction_id) AS total_transactions,
    COUNT(DISTINCT buyer_id) AS unique_buyers,
    COUNT(DISTINCT supplier_id) AS unique_suppliers,
    AVG(quantity * unit_price) AS average_order_value
FROM transactions;
