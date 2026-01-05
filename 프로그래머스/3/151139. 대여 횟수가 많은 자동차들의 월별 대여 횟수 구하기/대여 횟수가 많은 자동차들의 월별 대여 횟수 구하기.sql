with temp as (
    SELECT CAR_ID, count(*) as count_t
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where START_DATE >= '2022-08-01' and START_DATE < '2022-11-01'
    group by CAR_ID
    HAVING count_t >= 5
)
select MONTH(h.START_DATE) as MONTH, t.CAR_ID, count(*) as RECORDS
from temp t
join CAR_RENTAL_COMPANY_RENTAL_HISTORY h on t.CAR_ID = h.CAR_ID
where START_DATE >= '2022-08-01' and START_DATE < '2022-11-01'
group by 
    MONTH(h.START_DATE), t.CAR_ID
order by 1,2 desc