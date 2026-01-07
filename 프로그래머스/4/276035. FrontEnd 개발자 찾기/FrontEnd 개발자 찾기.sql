select D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME
from DEVELOPERS D
join (
    select sum(code) as SKILL_CODE
    from SKILLCODES
    where CATEGORY = 'Front End'
) s
where (s.SKILL_CODE & D.SKILL_CODE) > 0
order by 1