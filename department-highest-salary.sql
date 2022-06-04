
# https://leetcode.com/problems/department-highest-salary/

with
    t1 as (
        select
            e.id as employee_id,
            e.name as employee,
            d.name as department,
            e.salary,
            max(e.salary) over(partition by e.departmentId) as max_sal
        from employee as e
        left join department as d
        on e.departmentId = d.id

    )

select
    department,
    employee,
    salary
from t1
where salary = max_sal;