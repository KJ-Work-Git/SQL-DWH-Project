📊 SQL Data Warehouse Project
A modern Data Warehouse solution built with SQL Server to consolidate sales data. This project transforms raw ERP and CRM inputs into a refined, data model designed for high-performance analytical reporting.

🏗️ Architecture
This project implements a Medallion Architecture to ensure data integrity and traceability. By following the Separation of Concerns (SOC) principle, each layer has a dedicated responsibility with no intention of overlap:

🥉 Bronze (Raw): Initial ingestion of source .csv files (ERP & CRM) without modifications.

🥈 Silver (Cleaned): Data cleansing, deduplication, and standardization. Issues identified in the source data are resolved here.

🥇 Gold (Curated): Final business-level transformation. Data is modeled into a user-friendly schema optimized for Power BI/Tableau.

🎯 Project Specifications

📥 Data Integration

Sources: Consolidation of ERP (Enterprise Resource Planning) and CRM (Customer Relationship Management) systems.

Format: Flat-file ingestion via .csv.

Scope: Focused on the Current State (Latest dataset) to streamline real-time decision-making.

🧹 Data Quality & Transformation

Cleansing: Handling null values, correcting data types, and normalizing text fields.

Modeling: Bridging the gap between the ERP and CRM sources to create a "Single Source of Truth."

Performance: Designed specifically to handle Analytical Queries (OLAP) efficiently.

🛠️ Tech Stack

Database: SQL Server (T-SQL)

Architecture: Medallion (Bronze, Silver, Gold)

Design Pattern: Star Schema / Dimensional Modeling

Tools: SQL Server, DBeaver

📜 Documentation

The Data Model

The final Gold Layer utilizes a dimensional model to ensure business stakeholders can easily navigate the data.

Note: For a deep dive into the table relationships and field definitions, please refer to the /docs folder which includes the Data Dictionary and ERD Diagrams.
