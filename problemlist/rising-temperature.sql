select todayweather.id
from WEATHER todayweather
         inner join WEATHER yesterdayweather
                    on yesterdayweather.RECORDDATE = DATE_SUB(todayweather.RECORDDATE, INTERVAL 1 DAY)
where todayweather.TEMPERATURE > yesterdayweather.TEMPERATURE
