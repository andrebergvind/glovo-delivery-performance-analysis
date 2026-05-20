# Glovo Delivery Performance Analysis

## Project Overview

An operations and logistics performance analysis, developed based on a strong interest in understanding real world business operations and how data can be leveraged for identifying opportunities to improve efficiency and performance. The scenario is hypothetical, and the dataset used in this analysis was sourced from Kaggle.

The analysis focuses on delivery performance data from Glovo (India market), with the objective of identifying key operational challenges affecting delivery reliability and customer satisfaction.

Based on the insights derived from the analysis, data-driven recommendations were developed to support operational improvements and performance optimization.

## Introduction

In highly competitive, time sensitive marketplaces, delivery reliability is a critical driver of customer satisfaction and platform performance. Even small inefficiencies in operations can scale rapidly, leading to delays, decreased service quality, and potential customer churn.

As a leading Q-Commerce platform, Glovo relies heavily on efficient logistics and timely deliveries to maintain a strong customer experience.
Yet, maintaining consistent delivery performance at scale remains a significant operational challenge, particularly in complex and high demand urban environments.

## Business Problem

Despite the importance of timely deliveries, Glovo has found themselves in a situation where a substantial share of orders are completed after the promised time, indicating potential inefficiencies within the delivery process. These delays do not only impact immediate service quality but can also weaken customer satisfaction and long term platform performance.

To address this challenge, it is essential to move beyond surface level metrics and understand where delays occur most frequently, how severe they are, and what underlying factors contribute to them.

This analysis is guided by the following key question:

**How can Glovo reduce late deliveries and improve overall delivery performance?**

To answer this, the analysis focuses on three supporting questions:

- Where do late deliveries occur most frequently?
- How severe are delays across different areas?
- What impact do delivery delays have on customer ratings?

## Dataset

The dataset contains 50,000 delivery records and includes information such as:

- Order details: order_id, order_date
- Customer information: customer_id, customer_segment
- Delivery data: promised vs actual delivery time, delivery performance
- Operational metrics: distance, delivery time in minutes, area
- Customer feedback: rating, sentiment, feedback category

## Tools Used

- Excel / CSV: Data handling and initial exploration

The dataset was sourced from Kaggle and downloaded as a CSV file. Excel was used for initial inspection of the data, including reviewing column structures, checking for inconsistencies, and performing a high level exploration before moving into a more robust analysis environment.
   
- SQL: Data cleaning, transformation, and analysis

SQL was used as the primary tool for data preparation and analysis. Using PostgreSQL, the dataset was cleaned by correcting data types, and removing inconsistencies.
In addition, new calculated fields were created, such as delivery time differences and delivery performance categories, Early, On Time, Late.
SQL was also used to perform exploratory analysis, aggregations, and segmentation to identify patterns in delivery performance and uncover key operational insights.

- Tableau: Data visualization

Tableau was used to build interactive dashboards that visualize delivery performance and key metrics.
The tool enabled the creation of KPI summaries, distribution charts, and geographic comparisons, allowing for clear communication of insights.


## Key Insights

- ~49% of deliveries are late, indicating a major operational issue  
- Late deliveries significantly reduce customer ratings: 4.5 to 3.58
- Some areas show consistently high late delivery rates 
- Other areas experience less frequent but more severe delays

The analysis revealed two distinct patterns in delivery performance. Some areas experience a high frequency of late deliveries, indicating reliability issues. Other areas show lower late delivery rates but significantly higher delay durations when delays occur, suggesting occasional but severe operational breakdowns.

 ## Dashboard

The Tableau dashboard provides a comprehensive overview of delivery performance, including:

- KPI summary: Total Orders, Late Delivery Rate, Average Delay, Average Rating
- Distribution of delivery performance: Early, On Time, Late
- Impact of delays on customer ratings
- Identification of areas with highest late delivery rates
- Identification of areas with highest delay duration

![Glovo Dashboard](glovo-dashboard.png)


[View Interactive Dashboard](https://public.tableau.com/views/GlovoE-CommerceAnalysis/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)



## Conclusion

The analysis demonstrates that late deliveries represent a significant operational challenge for Glovo, with approximately 49% of all orders are being delivered after the promised time. 
This high delay rate has a clear negative impact on customer satisfaction, as reflected in the drop in average ratings from 4.5 on-time/early deliveries to 3.58 late deliveries.

As customer satisfaction declines, delivery delays evolve from being purely an operational inefficiency into a broader business risk, which could directly affect customer retention, brand perception, and long term revenue potential.

Following the analysis, two distinct patterns in delivery performance were identified. First, certain areas experience consistently high rates of late deliveries, indicating ongoing reliability issues likely driven by structural inefficiencies such as poor courier allocation or demand imbalances. Second, other areas show lower delay frequency but significantly longer delay durations, suggesting occasional but severe operational breakdowns, potentially linked to routing inefficiencies or peak-time overload.

These findings showcase that delivery performance issues are not identical and therefore can not be addressed through a single solution. Instead, improving delivery performance requires a targeted approach that considers both the frequency and severity of delays across several different areas.

To effectively improve operational performance, Glovo must first pinpoint which areas are underperforming and understand the underlying nature of the issue in each case, as highlighted in the dashboard. This enables more precise and targeted interventions.

Overall, the results suggest that by focusing on high risk areas and addressing the underlying operational inefficiencies, Glovo has a strong opportunity to improve delivery reliability, enhance customer satisfaction, and strengthen overall service quality.


## Recommendations

The following recommendations are based on the identified delivery performance patterns and aim to improve both reliability and customer satisfaction.

- ### Increase courier allocation in high late frequency delivery areas to improve reliability
  Use demand forecasting to better align courier supply with peak order volumes. Pre position drivers in high demand zones to reduce waiting times and improve delivery punctuality. Improving On Time performance is expected to increase customer satisfaction and ratings.

- ### Optimize routing and dispatching strategies in underperforming areas
  Although dispatch level data was not available in this dataset, improving routing and dispatch logic is a key operational lever in delivery performance. Assigning orders to the closest available driver, incorporating real time traffic conditions, and introducing buffer times during peak hours can help reduce delays and improve delivery reliability.

- ### Address areas with high delay severity through targeted operational interventions
  Areas with extreme delay durations should be analyzed separately to identify root causes such as long distances, traffic bottlenecks, or operational inefficiencies. Implement targeted solutions such as route optimization, delivery zone adjustments, or driver training.

- ### Operationalize customer ratings as a leading performance signal, not just an outcome metric
  Customer ratings should be actively integrated into operational decision making, rather than used solely as a post delivery feedback metric. 
  Delivery delays are clearly associated with poorer ratings, according to the data, suggesting that operational performance has a direct impact on customer satisfaction. Glovo could leverage this to detect high risk areas early and prioritise targeted interventions by connecting ratings with delivery time data at the area and time level.



## Limitations & Further Analysis Opportunities

- **Driver level performance could not be evaluated**  
  While it would be valuable to assess whether certain drivers consistently underperform, the dataset assigns a unique identifier to each delivery instance rather than a persistent driver ID. This prevents tracking individual driver performance over time.

- **Dispatching process could not be analyzed**  
  The dataset does not include information on dispatch timing, assignment logic, or driver allocation. As a result, it was not possible to evaluate how dispatch decisions impact delivery delays.

- **Short-term retention analysis limitations**  
  While customer return behavior was explored, no significant differences were observed between delivery performance groups. This suggests that late deliveries may not immediately impact repeat purchases. However, potential long term behavioral effects, such as changes in ordering frequency or customer churn over time, could not be fully assessed within the scope of this dataset.


