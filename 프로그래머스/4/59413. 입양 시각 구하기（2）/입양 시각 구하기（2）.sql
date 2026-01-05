-- 코드를 입력하세요
with RECURSIVE temp as (
    select 0 AS HOUR
    UNION ALL
    select HOUR +1
    from temp
    where HOUR < 23
)
SELECT t.HOUR, count(ANIMAL_ID) as `COUNT`
from ANIMAL_OUTS A
right join temp t on HOUR(A.DATETIME) = t.HOUR
group by t.HOUR
order by 1