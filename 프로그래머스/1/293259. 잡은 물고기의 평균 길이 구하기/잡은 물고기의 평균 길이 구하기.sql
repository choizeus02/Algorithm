-- 코드를 작성해주세요
select ROUND(avg(
    CASE
        WHEN LENGTH IS NULL THEN 10
        else LENGTH
    end
    ), 2) as AVERAGE_LENGTH
from FISH_INFO