# EnergySphere Analytics
This is a Data Warehouse project utilising the Google Cloud Platform (GCP).
This project's purpose is to teach me the ropes of Data Warehousing, especially with the use of a popular tool like BigQuery in GCP's tools.

## Overview
This project builds a cloud-based data warehouse using BigQuery to analyse energy consumption across households and regions. 

## Architecture
The basic architecture starts with uploading CSV files into BigQuery datasets, using SQL for transformations, creating dimensional tables (for star schema) and generating a dashboard with Data Studio (formerly Looker Studio).
```
CSV → BigQuery Datasets → SQL Transformations → Star Schema → Data Studio Dashboard
```
## Data Model
The Star Schema design was chosen as it is a commonly used data modelling approach in modern datawarehouses. This is due to the schema being optimised for analytical workloads. As the goal of this small project was to analyse the energy consumption trends across households, regions and rimes, this seemed like the most logical option.\n

This model seperates fact tables from dimension tables (dim_ which are used as descriptions). In this case, the fact_energy_usage table is connected to dimension tables (dim_households etc.) to give additional context such as household details, geographic location and time.

Star Schema:
```
                 dim_households
                       |
                       |
dim_region ---- fact_energy_usage ---- dim_date
```

The schema for the rest of the dimensional tables can be found [here](https://github.com/AnoukDunu/energy-analytics-data-warehouse/tree/main/sql/tables) and are pretty self-explanatory.

### Relationships
The following relationships are used to join different tables for analytical queries. The fact table have columns that directly refer to a specific column in a seperate table, which is more efficient when querying.
```
- fact_energy_usage.household_id --> dim_households.household_id
- fact_energy_usage.region_id --> dim_region.region_id
- fact_energy_usage.date --> dim_date.date
```

### Considerations
- Star schema for better query performance and widely used in BigQuery, Snowflake
- Seperation of concerns by transforming raw data into structured tables for better readability and maintainability
- Scalable as the model can be extended with additional dimensions (e.g: weather, tariffs)

## Tech Stack
- Google GCP's BigQuery
- SQL
- Data Studio (Looker Studio)
- CSV (mock data)

## How to Run

## Screenshots
I've included a few screenshots of both my personal GCP BigQuery Dashboard and the Data Studio dashboard.

### BigQuery

<img width="1873" height="881" alt="Screenshot 2026-07-13 at 3 57 56 pm" src="https://github.com/user-attachments/assets/0963dd00-5512-4273-94d2-9abea1593d33" />

<img width="1508" height="829" alt="Screenshot 2026-07-13 at 3 58 41 pm" src="https://github.com/user-attachments/assets/4356eb48-72e0-4869-87b1-5ea53b4081a4" />


### Data Studio

<img width="1049" height="1045" alt="Screenshot 2026-07-13 at 1 06 19 pm" src="https://github.com/user-attachments/assets/fd8a77c2-60fd-4639-a04a-5d2844e69228" />

<img width="1797" height="888" alt="Screenshot 2026-07-13 at 3 59 10 pm" src="https://github.com/user-attachments/assets/b3000fec-cf34-40ff-b961-9950353504a5" />

