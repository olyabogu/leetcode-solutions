delete
from PERSON
where id not in (select min(id)
                 from PERSON
                 group by EMAIL);