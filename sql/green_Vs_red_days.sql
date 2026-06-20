select
     da,
     count(da) total_days


from (SELECT 
    
    case 
       when prev > close then 'red'
       when prev = close  then 'neutral'
       else 'green'
       end as da
      
FROM(
     select 
       
        close,
        lag(close) over (order by date) prev
        from aapl_data
     )x
where prev is not null
)y
group by da