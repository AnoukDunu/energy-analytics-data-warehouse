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

- fact_energy_usage
- dim_households
- dim_region
- dim_date

Star Schema:
```
                 dim_households
                       |
                       |
dim_region ---- fact_energy_usage ---- dim_date
```

The schema for the rest of the dimensional tables can be found [here](https://github.com/AnoukDunu/energy-analytics-data-warehouse/tree/main/sql/dimensional%20tables) and are pretty self-explanatory.

### Relationships
The following relationships are used to join different tables for analytical queries. The fact table have columns that directly refer to a specific column in a seperate table, which is more efficient when querying.
- fact_energy_usage.household_id --> dim_households.household_id
- fact_energy_usage.region_id --> dim_region.region_id
- fact_energy_usage.date --> dim_date.date

### Considerations


## Tech Stack
- Google GCP's BigQuery
- SQL
- Data Studio (Looker Studio)
- CSV (mock data)

## How to Run

## Screenshots

