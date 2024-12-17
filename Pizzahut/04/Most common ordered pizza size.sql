--Most common ordered pizza size--

select * from order_details

select * from pizzas

select pizzas.size, count(*) from pizzas
inner join order_details
on pizzas.pizza_id=order_details.pizza_id
group by pizzas.size
order by count(*) desc
limit 1