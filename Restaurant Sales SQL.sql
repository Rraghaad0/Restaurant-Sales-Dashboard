Select * 
from order_details;

Select * 
from menu_items;

SELECT hour(order_time) hoursNO ,count(order_id)
FROM restaurant_db.order_details
group by hour(order_time)
order by 2 desc
;

SELECT dayofweek(order_date) dayNO ,count(order_id)
FROM restaurant_db.order_details
group by dayofweek(order_date)
order by 1 
;

select count(order_details_id), item_name
from order_details 
join menu_items 
     on item_id = menu_item_id
     group by item_name
     order by count(order_details_id) desc
     ;

select count(order_details_id), category
from order_details 
join menu_items 
     on item_id = menu_item_id
     group by category
     order by count(order_details_id) desc
     ;