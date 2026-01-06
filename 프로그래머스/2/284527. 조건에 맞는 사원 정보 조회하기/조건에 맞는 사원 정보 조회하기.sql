with temp as (
    select EMP_NO, sum(SCORE) as SCORE
    from HR_GRADE
    group by EMP_NO
)
select t.SCORE, t.EMP_NO, E.EMP_NAME, E.POSITION, E.EMAIL
from temp t
join HR_EMPLOYEES E on t.EMP_NO = E.EMP_NO
# join HR_DEPARTMENT D on E.DEPT_ID = D.DEPT_ID
order by SCORE desc
limit 1
