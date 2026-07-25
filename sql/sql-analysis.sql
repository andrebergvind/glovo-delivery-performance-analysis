
-- SQL EXPLORATION & ANALYSIS - GLOVO DATASET


-- Objective:
-- Identify key factors influencing delivery delays and understand their impact on customer satisfaction


-- 1. DELIVERY TIME SUMMARY
-- Reason: Understanding overall delivery performance and lateness of orders.

SELECT
    MIN(delivery_time_minutes) AS min_delivery_time,
    MAX(delivery_time_minutes) AS max_delivery_time,
    ROUND(AVG(delivery_time_minutes), 2) AS avg_delivery_time
FROM glovo_clean

-- Insight: Deliveries are on average late, with delays reaching up to 30 minutes.


-- 2. DELIVERY PERFORMANCE DISTRIBUTION
-- Reason: To understand how deliveries are distributed across performance categories

SELECT
    delivery_performance,
    COUNT(*) AS total_orders,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM glovo_clean
GROUP BY delivery_performance

-- Insight: Approximately half of all orders are delivered later than expected.



-- 3. DISTANCE VS DELIVERY PERFORMANCE
-- Testing whether distance affects lateness

SELECT
    delivery_performance,
    ROUND(AVG(distance_km), 2) AS avg_distance_km
FROM glovo_clean
GROUP BY delivery_performance

-- Insight: Distance is nearly identical across all categories indicating that its not a driver of delays



-- 4. TIME OF DAY ANALYSIS
-- Checking if certain hours have more late deliveries

SELECT 
    EXTRACT(HOUR FROM order_date) AS hour,
    COUNT(*) AS total_orders,
    COUNT(*) FILTER (WHERE delivery_performance = 'Late') AS late_orders,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE delivery_performance = 'Late') / COUNT(*),
        2
    ) AS late_percentage
FROM glovo_clean
GROUP BY hour
ORDER BY hour

-- Insight:
-- Late deliveries remain consistently high throughout the day (47–51%). As no big difference can be drawn, time of day is not a major driver.


-- 5. DAY OF WEEK ANALYSIS
-- Checking if specific days perform worse

SELECT
    TRIM(TO_CHAR(order_date, 'Day')) AS day_name,
    COUNT(*) AS total_orders,
    ROUND(
        AVG(CASE WHEN delivery_performance = 'Late' THEN 1 ELSE 0 END) * 100,
        2
    ) AS pct_late
FROM glovo_clean
GROUP BY day_name
ORDER BY pct_late DESC

-- Insight:
-- All days fall within a very narrow range (48–50% late), indicating no meaningful day level variation



-- 6. MONTH VS RATINGS (LATE ORDERS)
-- Checking if customer ratings change over time

SELECT
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(AVG(rating), 2) AS avg_rating_late_orders,
    COUNT(*) AS total_late_orders
FROM glovo_clean
WHERE delivery_performance = 'Late'
GROUP BY month
ORDER BY month

-- Insight:
-- Ratings for late deliveries are stable across months and therefore, no seasonal pattern is observed as a driver of lower customer rating.


-- 7. ORDER SIZE VS DELIVERY PERFORMANCE
-- Testing whether larger orders cause delays

SELECT 
    delivery_performance,
    ROUND(AVG(total_quantity), 2) AS avg_items
FROM glovo_clean
GROUP BY delivery_performance

-- Insight: Order size is almost identical across categories indicating that it iss not a driver of delays



-- 8. AREA PERFORMANCE (LATE DELIVERY RATE)
-- Identifying underperforming locations

SELECT 
    area,
    COUNT(*) AS total_orders,
    COUNT(*) FILTER (WHERE delivery_performance = 'Late') AS late_orders,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE delivery_performance = 'Late') / COUNT(*),
        2
    ) AS late_percentage
FROM glovo_clean
GROUP BY area
HAVING COUNT(*) > 100
ORDER BY late_percentage DESC
LIMIT 10

-- Insight: Some areas exceed 57–60% late deliveries and the overall falls in at approximately 49%, indicating that area plays a key role


-- 9. AREA DELAY SEVERITY
-- Examining which areas experience the most severe delays

SELECT
    area,
    ROUND(AVG(
        CASE 
            WHEN delivery_performance = 'Late' 
            THEN EXTRACT(EPOCH FROM (actual_delivery_time - promised_delivery_time)) / 60
        END
    )::numeric, 2) AS avg_late_delay_minutes
FROM glovo_clean
GROUP BY area
HAVING COUNT(*) > 100
ORDER BY avg_late_delay_minutes DESC
LIMIT 10;

-- Insight: All areas presented showcase 12 minutes plus, way above the average 4.37 delay average.



-- 10. DELIVERY PARTNER ANALYSIS
-- Attempting to evaluate partner performance

SELECT 
    delivery_partner_id,
    COUNT(*) AS total_orders
FROM glovo_clean
GROUP BY delivery_partner_id;

-- Check uniqueness of partner ID

SELECT 
    COUNT(DISTINCT delivery_partner_id) AS distinct_partners,
    COUNT(*) AS total_rows
FROM glovo_clean

-- Insight:
-- Each partner ID is unique and can therefore not evaluate performance as field behaves like an order identifier


-- 11. DELIVERY PERFORMANCE VS RATINGS
-- Measuring impact on customer satisfaction

SELECT 
    delivery_performance,
    ROUND(AVG(rating), 2) AS avg_rating,
    COUNT(*) AS total_orders
FROM glovo_clean
GROUP BY delivery_performance

-- Insight:
-- Late deliveries have significantly lower ratings (3.58 vs 4.50) indicating a strong negative impact on customer satisfaction



-- FINAL CONCLUSION

-- Delivery delays are NOT explained by:
-- - Distance
-- - Time of day
-- - Day of week
-- - Order size

-- However:
-- - Certain areas consistently underperform.
-- - The frequency of delays is a major problem in some areas, in other areas, the severity of the delays is worse.
-- - Late deliveries reduce customer satisfaction.

-- As no contributing factor analysed show significant impact on delays, findings suggest that these are likely caused by operational or systemic inefficiencies not captured in the dataset.


