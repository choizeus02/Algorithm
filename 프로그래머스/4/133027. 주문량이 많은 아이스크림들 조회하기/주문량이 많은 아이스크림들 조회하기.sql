with temp as (
    select *
    from FIRST_HALF
    
    union
    
    select *
    from JULY
)
select FLAVOR
from temp
group by FLAVOR
HAVING sum(TOTAL_ORDER)
order by sum(TOTAL_ORDER) desc
limit 3
