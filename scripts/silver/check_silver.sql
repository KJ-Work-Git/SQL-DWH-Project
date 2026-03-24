-- silver.crm_prd_info check

-- Check for NULLS and Duplicate IDs

SELECT cst_id, COUNT(*) AS total
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL

-- Check for Empty Spaces and NULLS

SELECT cst_firstname
FROM silver.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname) OR cst_firstname IS NULL

SELECT cst_lastname
FROM silver.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname) OR cst_lastname IS NULL

SELECT cst_gndr
FROM silver.crm_cust_info
WHERE cst_gndr != TRIM(cst_gndr) OR cst_gndr IS NULL

-- Data Standardisation and Consistancy

SELECT DISTINCT cst_gndr
FROM silver.crm_cust_info

SELECT DISTINCT cst_marital_status 
FROM silver.crm_cust_info
