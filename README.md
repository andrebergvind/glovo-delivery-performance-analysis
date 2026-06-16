# Glovo Delivery Performance Analysis

## Project Overview

This project presents an operations and logistics performance analysis. The reason behind it was based on a strong interest in understanding how data can be used to identify operational challenges and uncover opportunities to improve business performance.

Using delivery data from Glovo (India market), sourced from Kaggle, i explore operational patterns with the objective of providing inisghts into the factors driving late deliveries and lower customer ratings.

**The scenario used for the project is hypothetical and was developed solely for educational and portfolio purposes**


## Project Structure

[Introduction](#introduction)

[Business Problem](#business-problem)

[Dataset](#dataset)

[Tools Used](#tools-used)

[Data Cleaning & Transformation](#data-cleaning--transformation)

[Dashboard](#dashboard)

[Key Insights](#key-insights)

[Analysis](#analysis)

[Conclusion](#conclusion)

[Recommendations](#recommendations)

[Limitations & Further Analysis Opportunities](#limitations--further-analysis-opportunities)

## Introduction

In highly competitive, time sensitive marketplaces, delivery reliability is a critical driver of customer satisfaction and platform performance. Even small inefficiencies in operations can scale rapidly, leading to delays, decreased service quality, and potential customer churn.

As a leading Q-Commerce platform, Glovo relies heavily on efficient logistics and timely deliveries to maintain a strong customer experience.
Yet, maintaining consistent delivery performance at scale remains a significant operational challenge, particularly in complex and high demand urban environments, as showcased in this analysis.

## Business Problem

### Scenario

Despite the importance of timely deliveries, Glovo has found themselves in a situation where a substantial share of orders are completed after promised delivery time. 

The operations manager has become concerned about the increasing numbers of late deliveries fearing they could reduce customer ratings and ultimately lead to higher customer churn.
She has therefore requested my help to identify the key factors driving these issues and provide recommendations to improve delivery reliability and customer experience.

To address this challenge, it was essential to move beyond surface level metrics and understand where delays occur most frequently, how severe they are, and what underlying factors contribute to them.

### The analysis was guided by the following main question:

**How can Glovo reduce late deliveries while ensuring a positive customer experience?**

To facilitate this, the analysis incorporated three supporting questions:

- How do delivery delays impact customer ratings?
- Which areas experience the highest share of late deliveries?
- Which operational patterns are most associated with delayed deliveries?


## Tools Used

- Excel / CSV: Data handling and initial exploration
- SQL: Data cleaning, transformation, and analysis
- Tableau: Data visualization

## Data Cleaning & Transformation

**Excel**

The dataset was sourced from Kaggle and downloaded as a CSV file. Excel was used for initial inspection of the data, including reviewing column structures, checking for inconsistencies, and performing a high level exploration including filtering, aggregations, and pivot tables before moving into a more robust analysis environment.

The original dataset can be accessed and downloaded here: [Raw Data](https://github.com/andrebergvind/glovo-delivery-performance-analysis/blob/main/orders_details_raw_data.csv)

**SQL** 

Following the initial inspection, SQL was used to prepare the data for analysis. Using PostgreSQL, the dataset was cleaned by correcting data types and removing duplicate columns.
In addition, to facilitate the analysis, new columns were created, such as delivery time differences and delivery performance categories, (Early, On Time, Late).
The full SQL cleaning and transformation process can be accessed here: [SQL Cleaning](https://github.com/andrebergvind/glovo-delivery-performance-analysis/blob/main/sql-cleaning.sql)

The transformed dataset can be accessed and downloaded here:
[Clean Data](https://github.com/andrebergvind/glovo-delivery-performance-analysis/blob/main/glovo_analysis_clean_data.csv)


With the data cleaned and transformed, SQL was also used to perform exploratory analysis, aggregations, and segmentations to identify patterns in delivery performance to uncover key operational insights. Among other factors, the analysis examined the impact of time of day, day of week, and order size on delivery performance. The full SQL analysis queries can be accessed here: [SQL Analysis](https://github.com/andrebergvind/glovo-delivery-performance-analysis/blob/main/sql-analysis.sql)

**Tableau**

Ultimately, the dataset was transferred into Tableau, which was used to build interactive dashboards that visualise delivery performance and key metrics.
The tool enabled the creation of KPI summaries, distribution charts, and geographic comparisons, allowing for clear communication of insights.
Following the discoveries made through the SQL analysis, the dashboard focuses on highlighting the operational areas most greatly affecting delivery performance at this time.


 ## Dashboard

![Glovo Dashboard](glovo-dashboard.png)


[View Interactive Dashboard](https://public.tableau.com/views/GlovoE-CommerceAnalysis/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)


## Key Insights

- Approximately 49% of orders are delivered later than promised.
- Late deliveries inevitably affect customer ratings negatively
- While late deliveries represent an overall problem for Glovo, analysis reveals that some areas experience them more frequently, while others suffer from more severe delays.

## Analysis

Glovos current delivery performance is evidentially far below its expectations. Out of 50,000 orders, approximately 49% were recorded as late, meaning that almost one in every second customer receives their order later than promised. 

As a result of late deliveries, the average customer rating inevitably declines. Although no significant changes in customer retention could be detected from the SQL analysis, orders received after promised delivery time consistantly received lower ratings than orders received early or on time.

In order to identify potential drivers behind these delays, the analysis explored several operational dimensions, including time of day, day of week, order size and travel distances, however without revealing any significant patterns.
While some variation was observed across time periods and order characteristics, these factors did not reveal sufficiently strong or consistent patterns to explain the overall scale of delays.

Instead, the most meaningful insights derived from the geographic analysis examining delivery performance on an area basis.
Two distinct patterns were became apparent, highlighting that delay issues are not universal but occur in different ways depending on the location.

Primarily, some areas showcased a consistent high share of late deliveries, suggesting persistent operational inefficiencies rather than isolated incidents. This outcome raised the question of structural challenges such as courier supply imbalances and inefficient delivery coverage. However, since courier IDs were identifiers that seemingly were generated for each delivery, these imbalances could not be investigated further.

In contrast, other areas displayed lower frequencies of late deliveries but instead significantly higher average delay durations when delays did occur. The result suggested that some operational issues may not occur frequently, but when they do, they create severe disruptions to delivery performance. Factors may include traffic congestion, routing inefficiencies, or temporary overload during peak demand periods. 

Unable to pursue the potential factors causing these issues due to limitation of data, the severity of delays was merely concluded to occur within these areas, yet without being able to determine exactly what they depend on.


## Conclusion

Following the analysis, findings demonstrate that late deliveries represent a significant operational challenge for Glovo with approximately 49% of all orders being delivered after promised time. Given the time sensitive nature of Q-Commerce, it comes as no surprise that customer ratings are directly affected by late deliveries, seeing numbers decline as delivery performance worsens.

As customer ratings decline, delivery delays evolve from being purely an operational inefficiency into a broader business risk, which could directly affect customer retention, brand perception, and long-term revenue potential.

However, while customer return behavior was explored, no significant churn was observed from customers receiving their orders late. 
Although this insight suggests that late deliveries may not immediately impact short-term repeat purchases, potential long term behavioral effects should not be dismissed, and would require a more lonngitudinal analysis, examining data over an extended period of time.

Notable, is that some areas are experiencing delays more frequently than others, contributing to a larger share of the late deliveries.
At the same time, there are areas experiencing deliveries less frequently, but when they do occur, they are more severe. 

Although, without being able pinpoint exactly what is causing these delays, no definitive operational driver could be identified.
Nonetheless, the analysis does present useful insights into areas in which Glovo should focus its improvements efforts.

However, as different areas appear to experience different types of operational challenges, presumably, delivery performance issues cannot be approached through a single generalised solution. 

Therefore, these areas should be targeted separately when developing strategies to prevent future delays.
To determine what these strategies should be, additional analysis could be beneficial, as further investigation may help uncover the underlying factors contributing to poor delivery performance.



## Recommendations

The following recommendations are based on the identified delivery performance patterns and aim to improve both reliability and customer satisfaction.

Although, without successfully defining the key factors driving the delays, recommendations attempt to provide suggestions for potential issues while also encouraging further investigation.

### Areas with Frequently Ocurring Delays
- Increase courier allocation in high late frequency delivery areas to ensure sufficient supply for the demand.
- Pre position drivers in high demand zones to reduce waiting times and improve delivery punctuality. Improving on-time performance is expected to increase customer satisfaction and ratings.


### Areas with Severe Delays
-  Optimise routing and dispatching strategies in underperforming areas.
Although dispatch level data was not available in this dataset, improving routing and dispatch logic is a key operational lever in delivery performance. Assigning orders to the closest available driver, incorporating real time traffic conditions, and introducing buffer times can help reduce delays and improve delivery reliability.
- Provide training for all drivers to ensure they are proficient and efficient when delivering orders.


### Continuous Monitoring & General Courtesy
- Monitor delivery performance metrics on a regular basis to avoid similar problems in the future.
- If severe delays occur, provide affected customer with discounted prices or vouchers.
 


## Limitations & Further Analysis Opportunities

- **Driver level performance could not be evaluated**  
  While it would be valuable to assess whether certain drivers consistently underperform, the dataset assigns a unique identifier to each delivery instance rather than a persistent driver ID. This prevents tracking individual driver performance over time.

- **Dispatching process could not be analysed**  
  The dataset does not include information on dispatch timing, assignment logic, or driver allocation. As a result, it was not possible to evaluate how dispatch decisions impact delivery delays.

- **Short-term retention analysis limitations**  
  As the dataset only contained 50.000 rows, where no customer had made more than three purchases, customer behaviour following late deliveries provides little intel on customer churn in long-term
  To fully assess customer churn, a longitudinal analysis would be required, using data over derived from an extended period of time.


