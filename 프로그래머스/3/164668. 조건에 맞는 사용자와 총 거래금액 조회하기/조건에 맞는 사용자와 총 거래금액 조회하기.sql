-- 코드를 입력하세요
with temp as(
    SELECT WRITER_ID, sum(PRICE) as TOTAL_SALES
    from USED_GOODS_BOARD
    where STATUS = 'DONE'
    group by WRITER_ID
    HAVING TOTAL_SALES >= 700000
)
select USER_ID, NICKNAME, TOTAL_SALES
from temp t
join USED_GOODS_USER U on U.USER_ID = t.WRITER_ID
order by TOTAL_SALES