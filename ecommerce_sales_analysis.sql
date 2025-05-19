create database ecommerce_sales;

use ecommerce_sales;

select * from orders;
select * from products;
select * from customers;
select * from us_codes;

select count(*) from customers;
select count(*) from orders;
select count(*) from products;
select count(*) from us_codes;
select year(order_date) from orders;
select year(ship_date) from shipping;


#SALES ANALYSIS

#Total_sales
select concat("$",(Round(sum(sales_per_order)))/1000,"K") as Total_Sales
from orders;

#YOY Sales Growth
SELECT  
      year(order_date) as year, 
      round(sum(sales_per_order)) as total_sales, 
      (sum(sales_per_order) - lag(sum(sales_per_order) , 1)      
      over (order by year(order_date))) / lag(sum(sales_per_order), 1) 
      over(order by year(order_date)) * 100 as yoy_increase_percentage
      from orders
      group by year(order_date)
      order by year(order_date);

#Sales Details by customers
SELECT c.Customer_ID, full_name, SUM(o.sales_per_order) AS Total_Sales
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_ID, c.full_Name;

#Top 5 customers by Sales
select c.full_name, c.customer_id, sum(o.sales_per_order) as total_sales from orders o
join customers c on c.customer_id = o.customer_id
group by c.full_name, c.customer_id
order by sum(o.sales_per_order) desc
limit 5;

#Top 5 Products by Sales
SELECT p.Product_Name, floor(SUM(o.sales_per_order)) AS Total_Sales
FROM orders o
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY total_sales desc
LIMIT 5;

#Region_wise Sales
SELECT c.customer_region, SUM(o.Sales_per_order) AS Total_Sales
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY c.customer_region;

#QUANTITY ANALYSIS

 #Total_Quantity
select sum(order_quantity) as total_orders 
      from orders;
      
#YOY Quantity Growth
SELECT  
      year(order_date) as year, 
      round(sum(order_quantity)) as total_sales, 
      (sum(order_quantity) - lag(sum(order_quantity) , 1)      
      over (order by year(order_date))) / lag(sum(order_quantity), 1) 
      over(order by year(order_date)) * 100 as yoy_increase_percentage
      from orders
      group by year(order_date)
      order by year(order_date);

#Total Quantity Sold per Product
SELECT p.Product_Name, SUM(o.order_quantity) AS Total_Quantity
FROM Orders o
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY p.Product_Name;
      
 #PROFIT ANALYSIS     
      
#Total Profit
select concat("$",(Round(sum(profit_per_order)))/1000,"K") as Total_Profit
from orders;

#YOY Profit Growth
SELECT  
      year(order_date) as year, 
      round(sum(profit_per_order)) as total_sales, 
      (sum(profit_per_order) - lag(sum(profit_per_order) , 1)      
      over (order by year(order_date))) / lag(sum(profit_per_order), 1) 
      over(order by year(order_date)) * 100 as yoy_increase_percentage
      from orders
      group by year(order_date)
      order by year(order_date);
      
#Top 5 Products by Profit
SELECT p.Product_Name, floor(SUM(o.profit_per_order)) AS Total_Profit
FROM Orders o
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Profit DESC
LIMIT 5;

#Region_wise Profit
SELECT c.customer_region, floor(SUM(o.profit_per_order)) AS Total_Profit
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY c.customer_region;

#Top 5 customers by Profit
select c.full_name, c.customer_id, floor(sum(o.profit_per_order)) as total_profit from orders o
join customers c on c.customer_id = o.customer_id
group by full_name, customer_id
having total_profit>0
order by total_profit  desc
limit 5 ;

#Profit Margin
select round((SUM(profit_per_order)/SUM(sales_per_order) * 100),2) as profit_margin from orders;


#Shipping_Type Analysis 
SELECT Shipping_type, floor(sum(profit_per_order)) as total_profit,floor(sum(sales_per_order)) as total_sales,count(order_id) AS Total_Orders
FROM Orders o
group by shipping_type;

# top product_name(quantity_wise)
SELECT p.Product_Name, SUM(o.order_quantity) AS Total_Quantity
FROM Orders o
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Quantity DESC
LIMIT 1;

#Order Summary
CREATE VIEW Order_Summary AS
SELECT o.Order_ID, c.full_Name, p.Product_Name, o.Sales_per_order, o.Profit_per_order
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
JOIN Products p ON o.Product_ID = p.Product_ID;

select * from order_summary;

#Running Sales
SELECT Order_ID, Order_Date, Sales_per_order,
       SUM(Sales_per_order) OVER (ORDER BY Order_Date) AS Running_Sales
FROM Orders;

#CASE WHEN for Profitability Tag
SELECT Order_ID, Sales_per_order, Profit_per_order,
  CASE 
    WHEN Profit_per_order > 0 THEN 'Profitable'
    WHEN Profit_per_order < 0 THEN 'Loss'
    ELSE 'Break-even'
  END AS Profit_Status
FROM Orders;

#Subquery: Products with above-average sales
SELECT Product_ID, SUM(Sales_per_order) AS Total_Sales
FROM Orders
GROUP BY Product_ID
HAVING Total_Sales > (
    SELECT AVG(Sales_per_order) FROM Orders
);

#Subquery: Customers with highest order count
SELECT Customer_ID, COUNT(*) AS Order_Count
FROM Orders
GROUP BY Customer_ID
HAVING Order_Count = (
  SELECT MAX(Order_Count) FROM (
    SELECT Customer_ID, COUNT(*) AS Order_Count
    FROM Orders
    GROUP BY Customer_ID
  ) AS sub
);


#Weekly Analysis
CREATE VIEW week_analysis AS
SELECT 
    CASE 
        WHEN DAYNAME(order_date) IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    floor(sum(sales_per_order)) as total_sales,floor(sum(profit_per_order)) as total_profit, floor(sum(order_quantity)) as total_quantity
FROM 
    orders
group by day_type;
    
select * from week_analysis;










