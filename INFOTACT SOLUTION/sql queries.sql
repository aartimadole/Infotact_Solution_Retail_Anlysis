use infotact

select * from consumer_shopping_trends;

-- 📊 1. Preference Distribution
SELECT shopping_preference, COUNT(*) AS count
FROM consumer_shopping_trends
GROUP BY shopping_preference;

-- 💰 2. Income Analysis
SELECT 
    shopping_preference,
    AVG(avg_income) AS avg_income
FROM (
    SELECT 
        shopping_preference,
        AVG(monthly_income) AS avg_income
    FROM consumer_shopping_trends
    GROUP BY shopping_preference
) t
GROUP BY shopping_preference;

-- 🌐 3. Internet Usage Impact
SELECT 
    shopping_preference,
    AVG(daily_internet_hours) AS avg_internet
FROM consumer_shopping_trends
GROUP BY shopping_preference;

-- 📱 4. Tech Savvy Analysis
SELECT 
    shopping_preference,
    AVG(tech_savvy_score) AS avg_tech
FROM consumer_shopping_trends
GROUP BY shopping_preference;


-- 🛒 5. Spending Behavior
SELECT 
    shopping_preference,
    AVG(avg_online_spend) AS online_spend,
    AVG(avg_store_spend) AS store_spend
FROM consumer_shopping_trends
GROUP BY shopping_preference;


-- 🎯 6. Discount Sensitivity
SELECT 
    shopping_preference,
    AVG(discount_sensitivity) AS discount_score
FROM consumer_shopping_trends
GROUP BY shopping_preference;


-- 🚀 7. Top Influencing Factors
SELECT 
    shopping_preference,
    AVG(impulse_buying_score) AS impulse,
    AVG(brand_loyalty_score) AS loyalty,
    AVG(time_pressure_level) AS time_pressure
FROM consumer_shopping_trends
GROUP BY shopping_preference;