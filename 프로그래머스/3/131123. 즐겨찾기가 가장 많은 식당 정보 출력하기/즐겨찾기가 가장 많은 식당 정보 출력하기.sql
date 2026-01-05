-- 코드를 입력하세요
with max_f as (
    SELECT FOOD_TYPE, max(FAVORITES) as FAVORITES
    from REST_INFO
    group by FOOD_TYPE
)
select f.FOOD_TYPE, REST_ID, REST_NAME, f.FAVORITES
from max_f f
join REST_INFO R on f.FOOD_TYPE = R.FOOD_TYPE and f.FAVORITES = R.FAVORITES
order by f.FOOD_TYPE desc