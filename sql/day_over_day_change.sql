SELECT date, close,
  LAG(close) OVER (ORDER BY date) AS prev_close,
  ROUND(close - LAG(close) OVER (ORDER BY date), 2) AS daily_change,
  ROUND((close - LAG(close) OVER (ORDER BY date)) / LAG(close) OVER (ORDER BY date) * 100, 2) AS pct_change
FROM aapl_data;