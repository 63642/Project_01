--Orders on hourly basis--
select * from orders

select * from order_details

select extract(hour from time), sum(quantity) as total_quantity
from orders
inner join order_details
on orders.order_id=order_details.order_details_id
group by extract(hour from time)
order by extract(hour from time)