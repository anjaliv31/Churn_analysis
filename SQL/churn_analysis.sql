CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  join_date DATE,
  region VARCHAR(50),
  plan_type VARCHAR(20)
);

CREATE TABLE usage (
  customer_id INT,
  last_active_date DATE,
  sessions INT
);

CREATE TABLE transactions (
  customer_id INT,
  transaction_date DATE,
  amount NUMERIC
);

INSERT INTO customers VALUES
(1, '2024-01-10', 'South', 'Basic'),
(2, '2024-02-15', 'North', 'Premium'),
(3, '2024-03-01', 'East', 'Basic'),
(4, '2024-03-20', 'West', 'Premium');

INSERT INTO usage VALUES
(1, '2024-02-05', 3),
(2, '2024-04-01', 15),
(3, '2024-03-25', 1),
(4, '2024-04-10', 20);

INSERT INTO transactions VALUES
(1, '2024-01-15', 500),
(2, '2024-02-20', 1200),
(3, '2024-03-05', 300),
(4, '2024-03-25', 1500);

SELECT * FROM customers;

SELECT * FROM usage;

SELECT * FROM transactions;


SELECT
  customer_id,
  CASE
    WHEN last_active_date < CURRENT_DATE - INTERVAL '30 days'
    THEN 'Churned'
    ELSE 'Active'
  END AS status
FROM usage;

SELECT
  c.plan_type,
  COUNT(*) AS churned_customers
FROM customers c
JOIN usage u
ON c.customer_id = u.customer_id
WHERE u.last_active_date < CURRENT_DATE - INTERVAL '30 days'
AND c.join_date >= CURRENT_DATE - INTERVAL '60 days'
GROUP BY c.plan_type;

SELECT
  c.plan_type,
  SUM(t.amount) AS revenue_lost
FROM customers c
JOIN usage u ON c.customer_id = u.customer_id
JOIN transactions t ON c.customer_id = t.customer_id
WHERE u.last_active_date < CURRENT_DATE - INTERVAL '30 days'
GROUP BY c.plan_type;

SELECT
  c.customer_id,
  c.plan_type,
  c.join_date,
  u.last_active_date,
  (u.last_active_date - c.join_date) AS days_active
FROM customers c
JOIN usage u
ON c.customer_id = u.customer_id
WHERE u.last_active_date < CURRENT_DATE - INTERVAL '30 days';

SELECT
  c.plan_type,
  COUNT(*) AS churned_customers
FROM customers c
JOIN usage u
ON c.customer_id = u.customer_id
WHERE u.last_active_date < CURRENT_DATE - INTERVAL '30 days'
GROUP BY c.plan_type;

SELECT
  c.plan_type,
  SUM(t.amount) AS revenue_lost
FROM customers c
JOIN usage u ON c.customer_id = u.customer_id
JOIN transactions t ON c.customer_id = t.customer_id
WHERE u.last_active_date < CURRENT_DATE - INTERVAL '30 days'
GROUP BY c.plan_type;

