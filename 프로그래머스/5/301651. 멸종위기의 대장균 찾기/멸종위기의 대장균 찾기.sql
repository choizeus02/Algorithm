WITH RECURSIVE gen AS (
    select ID, PARENT_ID, 1 AS GENERATION
    from ECOLI_DATA
    where PARENT_ID is null
    
    UNION ALL
    
    select EDA.ID, EDA.PARENT_ID, g.generation + 1
    from ECOLI_DATA EDA
    join gen g on g.ID = EDA.PARENT_ID
),
leaf AS (
    SELECT g.GENERATION
    FROM gen g
    LEFT JOIN ECOLI_DATA ch
      ON ch.PARENT_ID = g.ID
    WHERE ch.ID IS NULL
)
SELECT
    COUNT(*) AS `COUNT`,
    GENERATION
FROM leaf
GROUP BY GENERATION
ORDER BY GENERATION;

