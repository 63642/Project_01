--Total revenue --
select * from order_details

select * from pizzas

select round(cast(sum(pizzas.price*order_details.quantity)as numeric),2) as Total_Revenue
from pizzas
inner join order_details
on pizzas.pizza_id=order_details.pizza_id