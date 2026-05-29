-- FULL LOAD EXTRACTION --

-- ===== TABLE 1: bronze.crm_cust_info =====
TRUNCATE TABLE bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM 'D:\JJ_practice\SQL\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

-- ===== TABLE 2: bronze.crm_prd_info =====
TRUNCATE TABLE bronze.crm_prd_info;

BULK INSERT bronze.crm_prd_info
FROM 'D:\JJ_practice\SQL\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

-- ===== TABLE 3: bronze.crm_sales_details =====
TRUNCATE TABLE bronze.crm_sales_details;

BULK INSERT bronze.crm_sales_details
FROM 'D:\JJ_practice\SQL\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

-- ===== TABLE 4: bronze.erp_cust_az12 =====
TRUNCATE TABLE bronze.erp_cust_az12;

BULK INSERT bronze.erp_cust_az12
FROM 'D:\JJ_practice\SQL\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

-- ===== TABLE 5: bronze.erp_loc_a101 =====
TRUNCATE TABLE bronze.erp_loc_a101;

BULK INSERT bronze.erp_loc_a101
FROM 'D:\JJ_practice\SQL\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

-- ===== TABLE 6: bronze.erp_cat_g1v2 =====
TRUNCATE TABLE bronze.erp_cat_g1v2;

BULK INSERT bronze.erp_cat_g1v2
FROM 'D:\JJ_practice\SQL\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
