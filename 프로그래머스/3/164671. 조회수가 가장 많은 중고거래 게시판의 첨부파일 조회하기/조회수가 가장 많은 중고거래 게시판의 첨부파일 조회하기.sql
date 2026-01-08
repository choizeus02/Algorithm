-- 코드를 입력하세요
with temp as (
    select BOARD_ID
    from USED_GOODS_BOARD
    order by VIEWS desc
    limit 1
)
select CONCAT('/home/grep/src/',T.BOARD_ID,'/',F.FILE_ID,F.FILE_NAME,F.FILE_EXT) as FILE_PATH
from temp T
join USED_GOODS_FILE F on T.BOARD_ID = F.BOARD_ID
order by F.FILE_ID desc