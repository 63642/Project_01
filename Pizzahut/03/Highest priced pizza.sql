-- Highest priced pizza--

select * from pizzas

select * from pizza_type 

select pizza_type.name,pizzas.price from pizzas
inner join pizza_type
on pizzas.pizza_type=pizza_type.pizza_type
order by price desc
limit 1