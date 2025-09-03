select EDA.ID, EDA.GENOTYPE, ED.GENOTYPE as PARENT_GENOTYPE
from ECOLI_DATA EDA
join ECOLI_DATA ED on EDA.parent_id = ED.ID
where EDA.genotype & ED.genotype = ED.genotype
order by EDA.ID