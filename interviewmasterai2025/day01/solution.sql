/* Reindeer Run - Find the Top 7
Every year, the city of Whoville conducts a Reindeer Run to find the best reindeers for Santa's Sleigh.
Write a query to return the name and rank of the top 7 reindeers in this race. */

select name, rank
from reindeer_run_results
order by rank
limit 7
