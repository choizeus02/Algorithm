
-- 코드를 입력하세요
SELECT b.TITLE, b.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS, date_format(r.CREATED_DATE,'%Y-%m-%d') as CREATED_DATE
from USED_GOODS_BOARD b
join USED_GOODS_REPLY r on b.board_id = r.board_id
where date_format(b.created_date, '%Y-%m') = '2022-10' or date_format(r.created_date, '%Y-%m') = '2022-10'
order by r.CREATED_DATE, b.TITLE