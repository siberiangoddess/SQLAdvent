-- Toys Delivered - Find Which Toys Made It
-- Santa wants to analyze which toys that were produced in his workshop have already been
-- delivered to children. You are given two tables on toy production and toy delivery — can
--you return the toy_id of the toys that have been delivered?

select td.toy_id, tp.toy_name
from toy_delivery td
inner join toy_production tp
    on td.toy_id = tp.toy_id
