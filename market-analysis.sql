
# https://leetcode.com/problems/market-analysis-i/

with
    o as (
        select
            buyer_id,
            count(*) as orders_in_2019
        from orders
        where year(order_date) = 2019
        group by buyer_id
    )

select
    u.user_id as buyer_id,
    u.join_date,
    coalesce(o.orders_in_2019, 0) as orders_in_2019
from users as u
left join o
on u.user_id = o.buyer_id;