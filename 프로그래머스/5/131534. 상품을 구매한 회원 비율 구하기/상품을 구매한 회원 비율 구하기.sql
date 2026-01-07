-- 코드를 입력하세요


SELECT 
    YEAR(U.SALES_DATE) as YEAR,
    MONTH(U.SALES_DATE) as MONTH, 
    count(DISTINCT U.user_id) as PURCHASED_USERS,
    ROUND(count(DISTINCT U.user_id) / (
        select count(*) from USER_INFO where YEAR(JOINED) = 2021),1) as PUCHASED_RATIO
from USER_INFO O
join ONLINE_SALE U on O.USER_ID = U.USER_ID
where YEAR(O.JOINED) = 2021
group by YEAR(U.SALES_DATE), MONTH(U.SALES_DATE)
order by 1, 2