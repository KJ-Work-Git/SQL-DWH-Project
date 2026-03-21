# 📊 SQL DATA WAREHOUSE PROJECT
A modern Data Warehouse solution built with **SQL Server** to consolidate sales data. This project transforms raw ERP and CRM inputs into a refined data model designed for high-performance analytical reporting.

---

## 🏗️ ARCHITECTURE
This project implements a **Medallion Architecture** to ensure data integrity and traceability. By following the **Separation of Concerns (SOC)** principle, each layer has a dedicated responsibility with no intention of overlap:

<img width="1037" height="542" alt="image" src="https://github.com/user-attachments/assets/9188e10c-3edd-4777-8239-5c5741494338" />


> ### 🥉 Bronze (Raw)
> Initial ingestion of source `.csv` files (ERP & CRM) without modifications.
>
> ### 🥈 Silver (Cleaned)
> Data cleansing, deduplication, and standardization. Issues identified in the source data are resolved here.
>
> ### 🥇 Gold (Curated)
> Final business-level transformation. Data is modeled into a user-friendly schema optimized for Power BI/Tableau.

---

# 🎯 PROJECT SPECIFICATIONS

## 📥 Data Integration
* **Sources:** Consolidation of ERP (Enterprise Resource Planning) and CRM (Customer Relationship Management) systems.
* **Format:** Flat-file ingestion via `.csv`.
* **Scope:** Focused on the **Current State** (Latest dataset) to streamline real-time decision-making.

## 🧹 Data Quality & Transformation
* **Cleansing:** Handling null values, correcting data types, and normalizing text fields.
* **Modeling:** Bridging the gap between the ERP and CRM sources to create a **"Single Source of Truth."**
* **Performance:** Designed specifically to handle **Analytical Queries (OLAP)** efficiently.

---

## 🛠️ TECH STACK
* **Database:** SQL Server (T-SQL)
* **Architecture:** Medallion (Bronze, Silver, Gold)
* **Design Pattern:** Star Schema / Dimensional Modeling
* **Tools:** SQL Server, DBeaver

---

## 📜 DOCUMENTATION

### 🏗️ The Data Model
The final **Gold Layer** utilizes a dimensional model to ensure business stakeholders can easily navigate the data.

> [!IMPORTANT]
> For a deep dive into the project, please refer to the `/docs` folder
