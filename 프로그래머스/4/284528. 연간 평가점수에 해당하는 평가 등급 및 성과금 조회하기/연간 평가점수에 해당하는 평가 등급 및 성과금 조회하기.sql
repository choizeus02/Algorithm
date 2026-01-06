with temp as (
    select EMP_NO, avg(SCORE) as score
    from HR_GRADE
    group by EMP_NO
)
select
    T.EMP_NO,
    E.EMP_NAME,
    CASE
        when T.score >= 96 then 'S'
        when T.score >= 90 then 'A' 
        when T.score >= 80 then 'B' 
        else 'C'
    end as GRADE,
    CASE
        WHEN T.score >= 96 THEN E.SAL * 0.2
        WHEN T.score >= 90 THEN E.SAL * 0.15
        WHEN T.score >= 80 THEN E.SAL * 0.1
        ELSE 0
    end as BONUS
from temp T
join HR_EMPLOYEES E on E.EMP_NO = T.EMP_NO
