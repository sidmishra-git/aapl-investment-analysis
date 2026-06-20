SELECT year(date) year, round(avg(volume), 2) volume
from aapl_data
group by year 
order by year