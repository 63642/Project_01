-- Total pizza sales by category--

select * from pizza_type

select * from pizzas

select * from order_details

select pizza_type.category, sum(quantity) as total_quantity from pizza_type
inner join pizzas
on pizza_type.pizza_type=pizzas.pizza_type
inner join order_details
on pizzas.pizza_id=order_details.pizza_id
group by pizza_type.category
order by sum(quantity) desc
