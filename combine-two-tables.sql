
# https://leetcode.com/problems/combine-two-tables/

select firstname, lastname, city, state
from person as p
left join address as a
on p.personid = a.personid