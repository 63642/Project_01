--Top 5 most orderded pizza type --

select * from pizza_type

select * from order_details

select * from pizzas

select pizza_type.name, sum(quantity) as Total_Quantity from pizza_type
inner join pizzas
on pizza_type.pizza_type=pizzas.pizza_type
inner join order_details
on pizzas.pizza_id=order_details.pizza_id
group by pizza_type.name
order by sum(quantity) desc
limit 5