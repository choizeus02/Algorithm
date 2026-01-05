with max_price as(
    SELECT CATEGORY, max(PRICE) as MAX_PRICE
    from FOOD_PRODUCT
    where CATEGORY IN ('과자', '국', '김치','식용유')
    group by CATEGORY
) 
select 
    m.CATEGORY,
    MAX_PRICE,
    PRODUCT_NAME
from max_price m
join FOOD_PRODUCT F on F.CATEGORY = m.CATEGORY and F.price = m.MAX_PRICE
order by MAX_PRICE desc