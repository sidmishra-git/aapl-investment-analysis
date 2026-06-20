SELECT date, volume
from aapl_data
where volume != 0
order by volume 
limit 10
