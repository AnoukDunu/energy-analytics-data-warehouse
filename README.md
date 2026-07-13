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
## Tech Stack
- Google GCP's BigQuery
- SQL
- Data Studio (Looker Studio)
- CSV (mock data)

## How to Run
## Key Insights

STAR SCHEMA\n
```
                 dim_household
                       |
                       |
dim_region ---- fact_energy_usage ---- dim_date
```