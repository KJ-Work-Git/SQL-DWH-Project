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

-- prd
SELECT prd_id, COUNT(*) AS total
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL

-- Check for Spaces
SELECT prd_nm
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm)

-- Check for NULLS or Negative Numbers
SELECT prd_cost
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL

-- Data Standardisation and Consistancy
SELECT DISTINCT prd_line
FROM silver.crm_prd_info

-- Check for Invalid Date Ranges
SELECT *
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt 

-- sales

-- Check for Invalid Dates (Silver uses DATE type, so we check for NULLs)
SELECT sls_due_dt
FROM silver.crm_sales_details
WHERE sls_due_dt IS NULL

-- Check for Invalid Date Orders
SELECT *
FROM silver.crm_sales_details
WHERE sls_order_dt > sls_due_dt OR sls_order_dt > sls_ship_dt

-- a101
-- Checking if any 'NAS' prefixes remain after transformation
SELECT cid
FROM silver.erp_loc_a101
WHERE cid LIKE 'NAS%'

-- cat

-- Check for unwanted spaces
SELECT *
FROM silver.erp_px_cat_g1v2
WHERE cat != TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance);

-- Listing Categories/Subcategories
SELECT DISTINCT cat
FROM silver.erp_px_cat_g1v2

SELECT DISTINCT subcat
FROM silver.erp_px_cat_g1v2

SELECT DISTINCT maintenance 
FROM silver.erp_px_cat_g1v2
