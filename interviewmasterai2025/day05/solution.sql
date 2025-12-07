/* Elf Vacation Status
Some elves took time off after the holiday rush, but not everyone has
returned to work. List all elves by name, showing their return date.
If they have not returned from vacation, list their return date
as "Still resting". */

select 
  e.elf_name
  , case
    when v.return_date is not null
      then to_char(v.return_date, 'yyyy-mm-dd')
    else 'Still resting'
  end as return_date
from elves as e
left join vacations as v on e.elf_id = v.elf_id
