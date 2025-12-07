/* Snowflake Types Count
Frosty wants to know how many unique snowflake types were
recorded on the December 24th, 2025 storm. Can you help him? */

select count(distinct flake_type)
from snowfall_log
where date(fall_time) = date('2025-12-24')
