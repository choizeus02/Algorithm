select 
    count(*) as FISH_COUNT,
    MAX(LENGTH) AS MAX_LENGTH,
    FISH_TYPE
from FISH_INFO
group by FISH_TYPE
HAVING avg(
    CASE
        WHEN LENGTH IS NULL then 10
        ELSE LENGTH
    end
) >= 33
order by FISH_TYPE