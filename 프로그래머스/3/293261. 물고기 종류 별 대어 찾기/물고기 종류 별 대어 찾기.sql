with ranked as(
    select FISH_TYPE, max(LENGTH) as LENGTH
    from FISH_INFO
    group by FISH_TYPE
)
select
    F.ID,
    FISH_NAME,
    R.LENGTH
from ranked R
join FISH_INFO F on F.FISH_TYPE = R.FISH_TYPE and F.LENGTH = R.LENGTH
join FISH_NAME_INFO N on N.FISH_TYPE = R.FISH_TYPE
order by F.ID




