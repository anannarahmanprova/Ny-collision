select YEAR (date) as year, MONTH (date) AS month, HOUR(time) AS hour, COUNT(*) AS collision_count from cse532.collision_all group by cube (HOUR(time), MONTH(date), YEAR(date)) order by collision_count DESC;
