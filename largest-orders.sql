
# https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

with
    t1 as (
        select
            customer_number,
            count(*) as n
        from orders
        group by customer_number
        order by count(*) desc
        limit 1
    )

select customer_number from t1;