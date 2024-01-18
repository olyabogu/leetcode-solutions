select email as EMAIL
from PERSON
group by email
having count(*) > 1