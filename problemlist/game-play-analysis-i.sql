 select  player_id, min(EVENT_DATE) as first_login
                 from ACTIVITY
                 group by PLAYER_ID;
