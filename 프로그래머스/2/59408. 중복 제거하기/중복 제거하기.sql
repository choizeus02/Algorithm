select count(DISTINCT NAME) as count
from ANIMAL_INS
where NAME IS NOT NULL
