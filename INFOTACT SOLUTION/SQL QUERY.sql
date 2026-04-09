use infotact;
-- 💰 Total Revenue
select * from consumer_shopping_trends;
SELECT 
    SUM(avg_online_spend + avg_store_spend) AS total_revenue
FROM consumer_shopping_trends;

-- 👥 Total Customers
SELECT COUNT(*) AS total_customers
FROM consumer_shopping_trends;

-- 💎 Customer Segmentation
SELECT 
    CASE 
        WHEN (avg_online_spend + avg_store_spend) > 5000 THEN 'High Value'
        WHEN (avg_online_spend + avg_store_spend) BETWEEN 2000 AND 5000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment,
    COUNT(*) AS total_customers
FROM consumer_shopping_trends
GROUP BY customer_segment;


-- 💰 Income Group vs Average Spending
SELECT 
    CASE 
        WHEN monthly_income > 200000 THEN 'High Income'
        WHEN monthly_income BETWEEN 50000 AND 200000 THEN 'Medium Income'
        ELSE 'Low Income'
    END AS income_group,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY income_group;


-- 🛒 Shopping Behavior Analysis
SELECT 
    shopping_preference,
    AVG(monthly_online_orders) AS avg_online_orders,
    AVG(monthly_store_visits) AS avg_store_visits
FROM consumer_shopping_trends
GROUP BY shopping_preference;

-- 📱 Tech Score Impact
SELECT 
    tech_savvy_score,
    AVG(monthly_online_orders) AS avg_orders
FROM consumer_shopping_trends
GROUP BY tech_savvy_score
ORDER BY tech_savvy_score;

-- 🧠 Impulse Buying vs Spending
SELECT 
    impulse_buying_score,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY impulse_buying_score
ORDER BY impulse_buying_score;


-- 🚚 Delivery Delay Impact
SELECT 
    avg_delivery_days,
    AVG(return_frequency) AS avg_returns
FROM consumer_shopping_trends
GROUP BY avg_delivery_days
ORDER BY avg_delivery_days;

-- 🏙️ City Tier Analysis
SELECT 
    city_tier,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY city_tier;

-- 👩 Gender Analysis
SELECT 
    gender,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY gender;

-- 🔄 Repeat Customers
SELECT 
    CASE 
        WHEN monthly_online_orders > 5 THEN 'High Repeat'
        WHEN monthly_online_orders BETWEEN 2 AND 5 THEN 'Medium Repeat'
        ELSE 'Low Repeat'
    END AS repeat_category,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY repeat_category
ORDER BY avg_spend DESC;

--  📦  Discount Sensitivity Impact
SELECT 
    discount_sensitivity,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY discount_sensitivity
ORDER BY discount_sensitivity;

--  Returns Vs Spending
SELECT 
    return_frequency,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY return_frequency
ORDER BY return_frequency;

--   Psychological Behavior
SELECT 
    need_touch_feel_score,
    AVG(avg_store_spend) AS store_spend,
    AVG(avg_online_spend) AS online_spend
FROM consumer_shopping_trends
GROUP BY need_touch_feel_score
ORDER BY need_touch_feel_score;


--  🌱 Environmental Awareness Impact
SELECT 
    environmental_awareness,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY environmental_awareness
ORDER BY environmental_awareness;



--  🧠 Hybrid Customer Behavior
SELECT 
    shopping_preference,
    AVG(tech_savvy_score) AS avg_tech,
    AVG(impulse_buying_score) AS avg_impulse,
    AVG(avg_online_spend + avg_store_spend) AS avg_spend
FROM consumer_shopping_trends
GROUP BY shopping_preference;




