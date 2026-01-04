select 
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    IFNULL(TLNO, 'NONE') as TLNO
from PATIENT
WHERE AGE <= 12 and GEND_CD = 'W'
order by age desc, PT_NAME 