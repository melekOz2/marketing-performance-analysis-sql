# Marketing Performance Analysis with SQL

## Project Overview
This SQL project focuses on combining and analyzing marketing campaign data from multiple advertising platforms.  
The main goal is to create a unified performance report by integrating **Facebook Ads** and **Google Ads** datasets using SQL.

The project demonstrates how to:
- Combine data from multiple related tables
- Use **JOIN** to enrich Facebook Ads data
- Use **UNION ALL** to merge Facebook and Google Ads datasets
- Apply **CTEs (Common Table Expressions)** for better query structure
- Aggregate performance metrics for campaign-level reporting

---

## Dataset
This project uses data from the following tables:

- `facebook_ads_basic_daily`
- `facebook_adset`
- `facebook_campaign`
- `google_ads_basic_daily`

---

## Objectives
The main objectives of this project are:

1. Merge Facebook Ads daily performance data with ad set and campaign details
2. Standardize Google Ads data into the same structure
3. Combine both data sources into a unified dataset
4. Aggregate the results by:
   - `ad_date`
   - `media_source`
   - `campaign_name`
   - `adset_name`

---

## Key Metrics Analyzed
The final output includes the following aggregated metrics:

- **Total Spend**
- **Total Impressions**
- **Total Clicks**
- **Total Conversion Value**

---

## SQL Concepts Used
This project demonstrates the use of:

- **CTE (WITH clause)**
- **LEFT JOIN**
- **UNION ALL**
- **GROUP BY**
- **ORDER BY**
- **SUM()**
- **NULL handling for schema alignment**

---

## Query Logic
### 1. Facebook Data Preparation
Facebook Ads data is combined with:
- `facebook_adset`
- `facebook_campaign`

This allows the query to include:
- campaign name
- ad set name
- daily ad performance metrics

### 2. Google Data Preparation
Google Ads data is transformed into a structure compatible with Facebook Ads data.

### 3. Data Combination
The two prepared datasets are merged using **UNION ALL**.

### 4. Final Aggregation
The final result is grouped by date, media source, campaign name, and ad set name to calculate total performance metrics.

---

## Example Output Columns
- `ad_date`
- `media_source`
- `campaign_name`
- `adset_name`
- `total_spend`
- `total_impressions`
- `total_clicks`
- `total_value`

---

## Tools Used
- **SQL**
- **PostgreSQL**
- **DBeaver**
- **GitHub**

---

## Why This Project Matters
This project demonstrates practical SQL skills used in real-world marketing analytics workflows, including:
- data integration from multiple sources
- campaign performance reporting
- structured query writing for analytical tasks

It is a strong example of applying SQL for business-oriented data analysis.

---

## Author
**Melike Emine Özyavuz**
