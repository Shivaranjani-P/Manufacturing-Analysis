Select * from  product_data;

-- KPI'S
-- 1. Total Quantity
SELECT SUM(TotalQty) 'Total Qty'
FROM product_data;

-- 2. Sum of Manufactured Quantity
select sum(Manufactured_Qty) 'Manufactured Qty'
from product_data;

-- 3. Sum of Rejected Quantity
select sum(Rejected_Qty) 'Rejected Qty' 
from  product_data;

-- 4. Sum of Per_day_Machine_Cost_made 
select sum(Per_day_Machine_Cost_made)  'Per day Machine Cost made'
from  product_data;

-- Dashboard Chart
-- 5.Delivery Period Wise Manufactured Quantity 
select Delivery_Period_ 'Delivery Period' ,sum(Manufactured_Qty) 'Manufactured_Qty'
 from product_data  
 group by Delivery_Period_ order by sum(Manufactured_Qty) desc;
 
-- 6.User Name Wise Manufactured Quantity
select User_Name 'User Name' ,sum(Manufactured_Qty) 'Manufactured Qty'
from product_data
 group by User_Name order by sum(Manufactured_Qty) desc;

-- 7.Work Center Name Wise Manufactured Quantity
select Work_Centre_Name 'Work Centre Name', sum(Manufactured_Qty) 'Manufactured Qty'
from product_data  
group by Work_Centre_Name order by sum(Manufactured_Qty) desc;

-- Top 10
-- 8.Top 10 Emp Name  Wise Manufactured Quantity
select Emp_Name 'Emp_Name', sum(Manufactured_Qty) 'Manufactured Qty'  
from product_data 
group by Emp_Name order by Sum(Manufactured_Qty) desc limit 10  ;

-- 9. Buyer Wise Produced Quantity
select Buyer, sum(Produced_Qty)  'Produced Qty'
from product_data 
where Buyer !="Underproduction" 
group by  Buyer order by sum(Produced_Qty)  desc limit 10  ;

-- Buyer Wise Charts
-- 10. Buyer Wise Rejected Quantity
select Buyer 'Buyer', sum( Rejected_Qty )  'Rejected Qty' 
from product_data 
where Buyer !="Underproduction" 
group by  Buyer order by  sum(Rejected_Qty) desc limit 10 ;

-- Top 5 
-- 11.Machine  Name Wise Per Day Machine Cost Made 
select Machine_Name 'Machine Name' ,sum(Per_day_Machine_Cost_made)  'Per day Machine Cost made' 
from product_data 
group by  Machine_Name order by sum(Per_day_Machine_Cost_made) desc limit 5;

-- 12. Item Name Wise Per Day Machine Cost Made 
select Item_Name 'Item Name' ,sum(Per_day_Machine_Cost_made)  'Per day Machine Cost made' 
from product_data 
group by  Item_Name order by  sum(Per_day_Machine_Cost_made) desc limit 5;

-- 13. Emp Name  Wise Per Day Machine Cost Made 
select Emp_Name 'Emp Name' ,sum(Per_day_Machine_Cost_made)  'Per day Machine_Cost_made'
 from product_data 
 group by  Emp_Name order by sum(Per_day_Machine_Cost_made) desc limit 5;

-- 14. Customer Name  Wise Per Day Machine Cost Made 
select Cust_Name 'Customer Name' ,sum(Per_day_Machine_Cost_made)  'Per day Machine Cost made' 
from product_data 
group by  Cust_Name order by  sum(Per_day_Machine_Cost_made) desc limit 5;

