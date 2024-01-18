select QUERY_NAME,
       round(avg(RATING / QUERIES.POSITION), 2) as quality,
       round((SUM(CASE
                      WHEN RATING < 3 THEN 1
                      ELSE 0
           END)) / count(*) * 100.00, 2)        as poor_query_percentage
from QUERIES
group by QUERY_NAME