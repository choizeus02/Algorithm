select D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME
from DEVELOPERS D
where (D.SKILL_CODE & (SELECT CODE from SKILLCODES where name = 'Python')) > 0
    or (D.SKILL_CODE & (SELECT CODE from SKILLCODES where name = 'C#')) > 0
order by D.ID