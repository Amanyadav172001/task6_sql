select *from customer

select * from product

select * from sales

---inner join
	
select c.customer_id, c.age as customer_age, s.customer_id as sales_customer_id, s.sales , s.product_id as sales_product_id from sales as s
inner join customer as c
on c.customer_id = s.customer_id  

---left join

select c.customer_id, c.age as customer_age, s.customer_id as sales_customer_id, s.sales , s.product_id as sales_product_id from customer as c
left join sales as s
on s.customer_id = c.customer_id

---right join

select c.customer_id, c.age as customer_age, s.customer_id as sales_customer_id, s.sales , s.product_id as sales_product_id from customer as c
right join sales as s
on s.customer_id = c.customer_id

---full join

select c.customer_id, c.age as customer_age, s.customer_id as sales_customer_id, s.sales , s.product_id as sales_product_id from customer as c
full join sales as s
on s.customer_id = c.customer_id

---inner join

select s.customer_id as sales_customer_id, s.order_id as sales_order_id, s.product_id as sales_product_id, s.ship_mode as sales_ship_mode,
	p.product_id, p.category as product_catogory from product as p
inner join sales as s
on s.product_id = p.product_id

---right join

select s.customer_id as sales_customer_id, s.order_id as sales_order_id, s.product_id as sales_product_id, s.ship_mode as sales_ship_mode,
	p.product_id, p.category as product_catogory from product as p
right join sales as s
on s.product_id = p.product_id

---3 table join

select c.customer_id, c.customer_name, c.age,
s.order_id, s.ship_mode, s.product_id, s.quantity,
p.product_name	from customer as c 
join sales as s
on s.customer_id = c.customer_id
join product as p
on p.product_id = s.product_id



