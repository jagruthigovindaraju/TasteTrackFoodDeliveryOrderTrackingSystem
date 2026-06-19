use tastetrackfooddeliveryordertrackingsystem;

-- 1. How many customers are registered in the system?
select count(*) as total_customers
from customers;

-- 2. Which cities have the highest number of customers?
select city, count(*) as customers_no
from customers
group by city
order by customers_no desc;

-- 3. Find customers from Bangalore.
select * 
from customers
where city = 'Bangalore';

-- 4. How many restaurants are available in the platform?
select count(*) as Total_restaurant from restaurant;

-- 5. Which cuisines are offered by restaurants?
select distinct Cuisine 
from restaurant;

-- 6. Which restaurant serves South Indian cuisine?
select Restaurant_name from restaurant
where Cuisine like '%South Indian%';

-- 7. What is the most expensive food item?
select Menu_name,max(Price) as expensive_food 
from food_menu
group by Menu_name
limit 1;

-- 8. What is the average price of food items?
select avg(price) as Avg_price
from food_menu;

-- 9. Which menu items cost more than ₹500?
select Menu_name,Price
from food_menu
where Price > 500;

-- 10. How many Veg and Non-Veg items are available?
select Type, count(*) as Veg_nonveg
from food_menu
group by Type;

-- 11. Which category has the highest number of dishes?
select category, count(*) as dishes
from food_menu
group by Category
order by dishes desc;

-- 12. What is the average price of Biryani items?
select category, avg(price) 'Average price'
from food_menu
where Category = 'biryani';

-- 13. How many drinks are available?
select count(*) 'Total_drink'
from drinks_menu;

-- 14. Which is the costliest drink?
select Menu_name, price
from drinks_menu
order by price desc
limit 1;

-- 15. How many alcoholic and non-alcoholic drinks are available?
select Type, count(*) 'alcho_nonAlco'
from drinks_menu
group by Type;

-- 16. How many orders have been placed?
select count(*) as total_orders from orders;

-- 17. Which day received the highest number of orders?
select order_date, count(*) 'Orders_count'
from orders
group by Order_date
order by Orders_count desc;

-- 18. Show all orders placed during March 2025.
select * from orders
where order_date between '2025-03-01' and '2025-03-31';

SELECT *
FROM Orders
WHERE MONTH(Order_date)=3
AND YEAR(Order_date)=2025;

-- 19. Which customer placed the most orders?
select order_id, count(*) 'Total_orders'
from orders
group by order_id
order by Total_orders desc;

-- 20. Which restaurant received the most orders?
select Restaurant_name, count(*) 'Total_orders'
from restaurant
group by Restaurant_name
order by Total_orders desc;

-- 21. Which menu item was ordered the most?
select menu_id, count(*) 'Total_orders'
from orders
group by Menu_id
order by Total_orders desc;

-- 22. Show customer names along with their order IDs.
select c.First_name,c.Last_name, o.Order_id
from customers c
join orders o
on c.User_id=o.user_id;

-- 23. Show restaurant names along with order IDs.
select r.Restaurant_name,o.Order_id
from restaurant r
join orders o
on r.Restaurant_id = o.Restaurant_id;

-- 24. Show food items ordered by customers.
select f.Menu_name,c.First_name,c.Last_name
from food_menu f, orders o, customers c
where f.Restaurant_id = o.Restaurant_id and c.User_id = o.User_id;

SELECT o.Order_id, f.Menu_name
FROM Orders o
JOIN Food_Menu f
ON o.Menu_id=f.Menu_id;

-- 25. Which payment method is most preferred?
select payment_type,count(*) 'useage'
from payment
group by Payment_type
order by useage desc;

-- 26. How many payments were made through UPI?
select payment_type,count(*) 'usage'
from payment
where Payment_type = 'UPI';

-- 27. How many payments were made through COD?
select payment_type,count(*) 'usage'
from payment
where Payment_type = 'cod';

-- 28. Show order details with payment type.
select o.Order_id,p.Payment_type
from orders o , payment p
where o.Order_id=p.Order_id;

-- 29. Which orders received Excellent feedback?
select *
from feedback
where Food_quality = 'Excellent';

-- 30. Which restaurant received the highest Excellent ratings?
select r.Restaurant_name,f.Food_quality,count(*) 'highest_rating'
from feedback f, restaurant r
where r.Restaurant_id= f.Restaurant_id and f.Food_quality ='excellent'
group by r.Restaurant_name
order by highest_rating desc;

-- 31. Count feedback by rating category.
select Food_quality,count(*) 'Total_rating'
from feedback
group by Food_quality
order by total_rating desc;

-- 32. Show restaurant names and feedback ratings.
select r.restaurant_name, f.Food_quality
from restaurant r,feedback f
where r.Restaurant_id=f.Restaurant_id;

-- 33. Find customers who ordered more than once.
select count(*) as Total_orders,user_id
from orders
group by User_id
having count(*) > 1;

-- 34. Find restaurants that have received feedback.
select distinct r.restaurant_name
from feedback f, restaurant r
where f.Restaurant_id=r.Restaurant_id;

-- 35. Find menu items that were never ordered.
select Menu_id
from food_menu
where Menu_id not in(
select menu_id 
from orders);

-- 36. Which restaurant has the largest menu?
select count(*) as Largest_menu,restaurant_id
from food_menu
group by Restaurant_id
order by count(*) desc;

-- 37. Show all orders with customer and restaurant names.
select o.Order_id,c.First_name,c.Last_name,r.Restaurant_name
from orders o,customers c, restaurant r
where o.User_id=c.User_id and o.Restaurant_id=r.Restaurant_id;

-- 38. Which city has the most customers?
select city,count(*) Total_customers
from customers
group by city
order by Count(*) desc;

-- 39. Which state has the most customers?
select State,count(*) Total_customers
from customers
group by state
order by Count(*) desc;

-- 40. Show all customers who paid using CARD.
select c.first_name,c.last_name
from payment p, customers c,orders o
where p.Order_id=o.Order_id and c.User_id=o.User_id and p.Payment_type = 'card';