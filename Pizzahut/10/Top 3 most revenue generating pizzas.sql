--Top 3 most revenue generating pizzas--

select * from order_details

select * from pizzas

select * from pizza_type

select pizza_type.name,round(cast(sum(order_details.quantity*pizzas.price) as numeric),2) as totao_revenue 
from order_Details
inner join pizzas
on order_Details.pizza_id=pizzas.pizza_id
inner join pizza_type
on pizzas.pizza_type=pizza_type.pizza_type
group by pizza_type.name
order by round(cast(sum(order_details.quantity*pizzas.price) as numeric),2) desc
limit 3