select date, close, lag(close) over (order by date) prev_close, 
ROUND(
        (close - (LAG(close) OVER (ORDER BY date))) 
        / LAG(close) OVER (ORDER BY date) * 100,
        2
    ) AS daily_return_pct
  
from aapl_data
order by daily_return_pct desc
limit 1