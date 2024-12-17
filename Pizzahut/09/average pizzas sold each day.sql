-- average pizzas sold each day--
select * from orders

select * from order_Details

select round(avg(total_quantity),2) as Avg_Pizzas_sold from
(select date, sum(quantity) as total_quantity from orders
inner join order_details
on orders.order_id=order_details.order_details_id
group by date) as order_quantity
