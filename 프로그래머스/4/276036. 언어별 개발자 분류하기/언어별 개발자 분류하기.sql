with temp as(
    select
        SUM(CASE WHEN CATEGORY = 'Front End' THEN CODE ELSE 0 END) AS FE,
        max(CASE WHEN NAME = 'C#' THEN CODE ELSE 0 END) AS C,
        max(CASE WHEN NAME = 'Python' THEN CODE ELSE 0 END) AS P
    from SKILLCODES
)
select 
    CASE
        when (D.SKILL_CODE & S.FE) > 0 and (D.SKILL_CODE & S.P) > 0 THEN 'A'
        when (D.SKILL_CODE & S.C) > 0 THEN 'B'
        when (D.SKILL_CODE & S.FE) > 0 THEN 'C'
    end AS GRADE,
    D.ID,
    D.EMAIL
from DEVELOPERS D
cross join temp S
HAVING GRADE IS NOT NULL
order by 1,2