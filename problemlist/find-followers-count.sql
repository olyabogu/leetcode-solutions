select user_id, count(*) as followers_count
from FOLLOWERS
group by user_id
order by USER_ID