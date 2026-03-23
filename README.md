# Glovo Delivery Performance Analysis

## Project Overview

This project analyzes delivery performance data from Glovo India to identify key operational issues affecting delivery reliability and customer satisfaction.

The objective is to uncover patterns in late deliveries, assess their impact on customer ratings, and identify specific areas where operational improvements can be made.

## Business Problem

Glovo aims to improve delivery performance and customer satisfaction.

A significant proportion of deliveries are delayed, which may negatively impact customer experience. Understanding the root causes and identifying where delays occur most frequently is essential for improving operational efficiency.

This analysis answers the following question:

**How can Glovo reduce late deliveries and improve overall delivery performance?**

## Dataset

The dataset contains 50,000 delivery records and includes information such as:

- Order details: order_id, order_date
- Customer information: customer_id, customer_segment
- Delivery data: promised vs actual delivery time, delivery performance
- Operational metrics: distance, delivery time in minutes, area
- Customer feedback: rating, sentiment, feedback category

## Tools Used

- SQL: Data cleaning and analysis
- Tableau: Data visualization 
- Excel / CSV: Data handling and initial exploration

## Key Insights

- ~49% of deliveries are late, indicating a major operational issue  
- Late deliveries significantly reduce customer ratings: 4.5 → 3.58
- Some areas show consistently high late delivery rates 
- Other areas experience less frequent but more severe delays

 ## Dashboard

The Tableau dashboard provides a comprehensive overview of delivery performance, including:

- KPI summary: Total Orders, Late Delivery Rate, Average Delay, Average Rating
- Distribution of delivery performance: Early, On Time, Late
- Impact of delays on customer ratings
- Identification of areas with highest late delivery rates
- Identification of areas with highest delay duration

![Dashboard Screenshot](your-image-path.png)


## Recommendations

###Increase courier allocation in areas with high late delivery rates to improve reliability###
  Increase driver supply in underperforming zones. Use demand forecasting to pre-position drivers
  
- Optimize routing and dispatching strategies in underperforming areas  
- Monitor and address areas with extreme delay durations separately  
- Incorporate customer ratings as a key performance indicator for delivery operations  
