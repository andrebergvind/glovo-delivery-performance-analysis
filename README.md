# Glovo Delivery Performance Analysis

## Project Overview

This project presents an operations and logistics performance analysis. Using delivery data from Glovo (India market), sourced from Kaggle, i explore operational patterns with the objective of providing inisghts into the factors driving late deliveries and lower customer ratings.


### Business Problem

Despite the importance of timely deliveries, Glovo has found themselves in a situation where a substantial share of orders are completed after promised delivery time. 

The operations manager has become concerned about the increasing numbers of late deliveries fearing they could reduce customer ratings and ultimately lead to higher customer churn.
She has therefore requested my help to identify the key factors driving these issues and provide recommendations to improve delivery reliability and customer experience.


### Tools Used

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
- Late deliveries inevitably affect customer ratings negatively.
- While late deliveries represent an overall problem for Glovo, analysis reveals that some areas experience them more frequently, while others suffer from more severe delays.
- The dataset does not provide sufficient information to identify the key factors driving late deliveries in these areas.


## Recommendations

### Areas with Frequently Ocurring Delays
- Increase courier allocation in high late frequency delivery areas to ensure sufficient supply for the demand.
- Pre position drivers in high demand zones to reduce waiting times and improve delivery punctuality. Improving on-time performance is expected to increase customer satisfaction and ratings.
- Offer incentives such as small cash bonuses for drivers who complete a target of x number of deliveries without delay. 


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


