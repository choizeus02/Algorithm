select count(*) as FISH_COUNT, FISH_NAME
from FISH_INFO I
join FISH_NAME_INFO N on I.FISH_TYPE = N.FISH_TYPE
group by FISH_NAME
order by 1 desc