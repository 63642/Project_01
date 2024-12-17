--Total sub pizza type under each category--

select * from pizza_type

select category,count(name) from pizza_type
group by category