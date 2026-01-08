-- 코드를 입력하세요
with temp as (
    SELECT WRITER_ID, count(*) as count
    from USED_GOODS_BOARD
    group by WRITER_ID
    HAVING count(*) >= 3
)
select 
    USER_ID, NICKNAME, CONCAT(CITY, ' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as 전체주소, 
    CONCAT(
        substring(TLNO,1,3), '-',
        substring(TLNO,4,4), '-',
        substring(TLNO,8,4)
        ) as 전화번호
from temp T
join USED_GOODS_USER U on T.WRITER_ID = U.USER_ID
order by U.USER_ID desc