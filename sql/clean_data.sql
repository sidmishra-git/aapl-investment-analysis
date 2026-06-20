CREATE TABLE aapl_data AS
SELECT
    date,
    MAX(close) AS close,
    MAX(open) AS open,
    MAX(high) AS high,
    MIN(low) AS low,
    SUM(volume) AS volume
FROM aapl_raw_data
GROUP BY date;
