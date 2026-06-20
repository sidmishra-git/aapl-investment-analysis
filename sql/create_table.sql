
DROP TABLE IF EXISTS aapl_data;
CREATE TABLE aapl_data AS
SELECT
    Date,
    MAX(Close) AS Close,
    MAX(Open) AS Open,
    MAX(High) AS High,
    MIN(Low) AS Low,
    SUM(Volume) AS Volume,
    MAX(`Adj Close`) AS `Adj Close`,
    MAX(Name) AS Name
FROM aapl_raw_data
WHERE Name = 'AAPL'
GROUP BY Date
ORDER BY Date;

-- Step 2: Verify clean data
SELECT COUNT(*) AS total_rows FROM aapl_data;
SELECT MIN(Date) AS earliest, MAX(Date) AS latest FROM aapl_data;
SELECT DISTINCT Name FROM aapl_data;

-- Step 3: Export (run SELECT, then right-click → Export Data → CSV)
SELECT * FROM aapl_data ORDER BY Date;