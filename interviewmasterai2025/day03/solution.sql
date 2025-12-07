-- The Grinch's Best Pranks Per Target
-- The Grinch has brainstormed a ton of pranks for Whoville, but he only wants
-- to keep the top prank per target, with the highest evilness score. Return
-- the most evil prank for each target. If two pranks have the same evilness,
-- the more recently brainstormed wins.

select 
  target_name
  , prank_description
  , evilness_score
from (
  select 
    target_name
    , prank_description
    , evilness_score
    , row_number() over (partition by target_name order by evilness_score desc, created_at desc) as rn
  from grinch_prank_ideas
)
where rn = 1
order by 1
