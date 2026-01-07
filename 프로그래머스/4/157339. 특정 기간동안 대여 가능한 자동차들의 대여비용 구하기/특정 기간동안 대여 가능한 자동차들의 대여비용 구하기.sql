-- 코드를 입력하세요
SELECT C.CAR_ID, C.CAR_TYPE, FLOOR((C.DAILY_FEE *30 * (100-P.DISCOUNT_RATE) /100)) as FEE
from CAR_RENTAL_COMPANY_CAR C
join CAR_RENTAL_COMPANY_DISCOUNT_PLAN P on P.CAR_TYPE = C.CAR_TYPE
where C.CAR_TYPE IN ('SUV','세단')
    and not exists(
        select 1
          FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY R
          WHERE R.CAR_ID = C.CAR_ID
            AND R.START_DATE <= '2022-11-30'
            AND R.END_DATE   >= '2022-11-01'
    )
    and DURATION_TYPE = '30일 이상'
    and ((C.DAILY_FEE *30 * (100-P.DISCOUNT_RATE) /100) >= 500000 and (C.DAILY_FEE *30 * (100-P.DISCOUNT_RATE) /100) < 2000000)
group by C.car_id, C.CAR_TYPE
order by 3 desc, 2, 1 desc