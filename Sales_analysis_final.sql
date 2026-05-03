
CREATE TABLE retail_data (
    InvoiceNo   TEXT,
    StockCode   TEXT,
    Description TEXT,
    Quantity    INT,
    InvoiceDate TEXT,       -- loaded as text first; converted below
    UnitPrice   FLOAT,
    CustomerID  FLOAT,
    Country     TEXT
);


COPY retail_data
FROM 'C:/temp/Online Retail.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM retail_data LIMIT 10;
SELECT COUNT(*) FROM retail_data;


ALTER TABLE retail_data
    ADD COLUMN InvoiceDate_new TIMESTAMP;

UPDATE retail_data
    SET InvoiceDate_new = TO_TIMESTAMP(InvoiceDate, 'MM/DD/YYYY HH24:MI');


ALTER TABLE retail_data DROP COLUMN InvoiceDate;
ALTER TABLE retail_data RENAME COLUMN InvoiceDate_new TO InvoiceDate;


SELECT InvoiceDate FROM retail_data LIMIT 5;


DELETE FROM retail_data
WHERE CustomerID IS NULL;

DELETE FROM retail_data
WHERE Quantity <= 0;


SELECT COUNT(*) FROM retail_data;   -- row count after cleaning


-- Add TotalPrice Column
ALTER TABLE retail_data
    ADD COLUMN TotalPrice FLOAT;

UPDATE retail_data
    SET TotalPrice = Quantity * UnitPrice;


SELECT
DATE_TRUNC('month', InvoiceDate) AS Month,
SUM(TotalPrice)                  AS Revenue
FROM retail_data
GROUP BY Month
ORDER BY Month;


SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS Frequency,
    SUM(TotalPrice)           AS Monetary,
    MAX(InvoiceDate)          AS LastPurchase
FROM retail_data
GROUP BY CustomerID;


-- Top 10 products by units sold
SELECT
    Description,
    SUM(Quantity) AS TotalSold
FROM retail_data
GROUP BY Description
ORDER BY TotalSold DESC
LIMIT 10;