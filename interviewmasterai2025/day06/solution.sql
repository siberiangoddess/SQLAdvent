/* Ski Resort Snowfall Rankings
Buddy is planning a winter getaway and wants to rank ski resorts
by annual snowfall. Can you help him bucket these ski resorts into quartiles? */

with tab as (
  select 
    resort_name
    , sum(snowfall_inches) as sum_inches
  from resort_monthly_snowfall
  group by 1
)

select 
  resort_name
  , ntile(4) over (order by inches) as quartile
from tab 
order by 1
