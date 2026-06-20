select date, round(high - low, 2) as daily_range
from aapl_data
order by daily_range desc
limit 10