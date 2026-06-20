select date,
	   (lag(close) over (order by date)) last_close,
       open,
       case 
            when (lag(close) over (order by date)) > open then 'gap down' 
            else 'gap up' 
            end as opening_gap
from aapl_data

