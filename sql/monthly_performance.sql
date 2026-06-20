SELECT YEAR(date) AS year, MONTH(date) AS month,
  ROUND(AVG(close), 2) AS avg_close,
  MAX(high) AS month_high,
  MIN(low) AS month_low,
  SUM(volume) AS total_volume
FROM aapl_data
GROUP BY YEAR(date), MONTH(date)
ORDER BY year, month;