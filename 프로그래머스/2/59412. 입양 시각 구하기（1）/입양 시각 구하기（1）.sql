-- 코드를 입력하세요
SELECT HOUR(DATETIME) as HOUR, count(*)
from ANIMAL_OUTS
where HOUR(DATETIME) BETWEEN 09 and 19
group by HOUR(DATETIME)
order by 1