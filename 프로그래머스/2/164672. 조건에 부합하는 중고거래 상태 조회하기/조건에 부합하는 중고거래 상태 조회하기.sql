-- 코드를 입력하세요
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
    case
        when STATUS='SALE' THEN '판매중'
        when STATUS='DONE' THEN '거래완료'
        when STATUS='RESERVED' THEN '예약중'
    end as STATUS
from USED_GOODS_BOARD
where CREATED_DATE = '2022-10-05'
order by 1 desc