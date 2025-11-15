-- create database
create database ecommerce;
use ecommerce;

-- customers table
create table customers (
    customer_id int primary key,
    customer_name varchar(100),
    region varchar(50),
    country varchar(50)
);

-- orders table
create table orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    ship_date date,
    ship_mode varchar(50),
    foreign key (customer_id) references customers(customer_id)
);

-- order_items table
create table order_items (
    item_id int auto_increment primary key,
    order_id int,
    product_id int,
    category varchar(50),
    sub_category varchar(50),
    product_name varchar(150),
    sales decimal(10,2),
    quantity int,
    profit decimal(10,2),
    foreign key (order_id) references orders(order_id)
);
-- products table
create table products (
    product_id int primary key,
    category varchar(50),
    sub_category varchar(50),
    product_name varchar(150)
);

-- then modify order_items to reference products
alter table order_items
    add constraint fk_product
    foreign key (product_id) references products(product_id);
    
insert into customers (customer_id, customer_name, region, country)
values
(1, 'Ravi Kumar', 'West', 'India'),
(2, 'Anita Desai', 'North', 'India'),
(3, 'John Smith', 'East', 'USA'),
(4, 'Priya Nair', 'South', 'India'),
(5, 'Michael Brown', 'West', 'USA'),
(6, 'Sara Khan', 'North', 'India'),
(7, 'David Lee', 'East', 'USA'),
(8, 'Ayesha Singh', 'South', 'India'),
(9, 'Robert Wilson', 'West', 'USA'),
(10, 'Neha Sharma', 'North', 'India'),
(11, 'Arjun Patil', 'West', 'India'),
(12, 'Simran Kaur', 'North', 'India'),
(13, 'Chris Johnson', 'East', 'USA'),
(14, 'Lily Evans', 'South', 'India'),
(15, 'Tom Hanks', 'West', 'USA'),
(16, 'Sonia Mehta', 'North', 'India'),
(17, 'Daniel Craig', 'East', 'USA'),
(18, 'Pooja Joshi', 'South', 'India'),
(19, 'Kevin Durant', 'West', 'USA'),
(20, 'Rina Kapoor', 'North', 'India'),
(21, 'Alex Morgan', 'East', 'USA'),
(22, 'Divya Chauhan', 'South', 'India'),
(23, 'Steve Rogers', 'West', 'USA'),
(24, 'Kavita Deshmukh', 'North', 'India'),
(25, 'Bruce Wayne', 'East', 'USA');

insert into products (product_id, category, sub_category, product_name)
values
(1, 'Furniture', 'Chairs', 'Ergonomic Chair'),
(2, 'Furniture', 'Tables', 'Wooden Table'),
(3, 'Technology', 'Phones', 'Smartphone X'),
(4, 'Technology', 'Laptops', 'Laptop Pro 15'),
(5, 'Office Supplies', 'Paper', 'A4 Paper Pack'),
(6, 'Office Supplies', 'Pens', 'Gel Pen Set'),
(7, 'Furniture', 'Storage', 'Bookshelf 5-Tier'),
(8, 'Technology', 'Accessories', 'Wireless Mouse'),
(9, 'Office Supplies', 'Binders', 'Binder Set'),
(10, 'Furniture', 'Chairs', 'Executive Chair'),
(11, 'Technology', 'Phones', 'Smartphone Y'),
(12, 'Technology', 'Laptops', 'Laptop Air 13'),
(13, 'Office Supplies', 'Paper', 'Letter Pad Pack'),
(14, 'Furniture', 'Tables', 'Glass Table'),
(15, 'Office Supplies', 'Pens', 'Ball Pen Set'),
(16, 'Furniture', 'Storage', 'Cabinet 3-Tier'),
(17, 'Technology', 'Accessories', 'Keyboard'),
(18, 'Furniture', 'Chairs', 'Gaming Chair'),
(19, 'Technology', 'Phones', 'Smartphone Z'),
(20, 'Office Supplies', 'Binders', 'Ring Binder'),
(21, 'Furniture', 'Tables', 'Round Table'),
(22, 'Technology', 'Laptops', 'Laptop Ultra 14'),
(23, 'Office Supplies', 'Paper', 'Sticky Notes'),
(24, 'Technology', 'Accessories', 'Headphones'),
(25, 'Furniture', 'Storage', 'Drawer Unit');

insert into orders (order_id, customer_id, order_date, ship_date, ship_mode)
values
(1, 1, '2024-08-01', '2024-08-03', 'Standard Class'),
(2, 2, '2024-08-02', '2024-08-04', 'Express Class'),
(3, 3, '2024-08-03', '2024-08-05', 'Second Class'),
(4, 4, '2024-08-04', '2024-08-06', 'Standard Class'),
(5, 5, '2024-08-05', '2024-08-07', 'Express Class'),
(6, 6, '2024-08-06', '2024-08-08', 'Second Class'),
(7, 7, '2024-08-07', '2024-08-09', 'Standard Class'),
(8, 8, '2024-08-08', '2024-08-10', 'Express Class'),
(9, 9, '2024-08-09', '2024-08-11', 'Second Class'),
(10, 10, '2024-08-10', '2024-08-12', 'Standard Class'),
(11, 11, '2024-08-11', '2024-08-13', 'Express Class'),
(12, 12, '2024-08-12', '2024-08-14', 'Second Class'),
(13, 13, '2024-08-13', '2024-08-15', 'Standard Class'),
(14, 14, '2024-08-14', '2024-08-16', 'Express Class'),
(15, 15, '2024-08-15', '2024-08-17', 'Second Class'),
(16, 16, '2024-08-16', '2024-08-18', 'Standard Class'),
(17, 17, '2024-08-17', '2024-08-19', 'Express Class'),
(18, 18, '2024-08-18', '2024-08-20', 'Second Class'),
(19, 19, '2024-08-19', '2024-08-21', 'Standard Class'),
(20, 20, '2024-08-20', '2024-08-22', 'Express Class'),
(21, 21, '2024-08-21', '2024-08-23', 'Second Class'),
(22, 22, '2024-08-22', '2024-08-24', 'Standard Class'),
(23, 23, '2024-08-23', '2024-08-25', 'Express Class'),
(24, 24, '2024-08-24', '2024-08-26', 'Second Class'),
(25, 25, '2024-08-25', '2024-08-27', 'Standard Class');

insert into order_items (order_id, product_id, category, sub_category, product_name, sales, quantity, profit)
values
(1, 1, 'Furniture', 'Chairs', 'Ergonomic Chair', 250, 2, 50),
(2, 2, 'Furniture', 'Tables', 'Wooden Table', 300, 1, 60),
(3, 3, 'Technology', 'Phones', 'Smartphone X', 500, 1, 120),
(4, 4, 'Technology', 'Laptops', 'Laptop Pro 15', 1200, 1, 300),
(5, 5, 'Office Supplies', 'Paper', 'A4 Paper Pack', 20, 5, 5),
(6, 6, 'Office Supplies', 'Pens', 'Gel Pen Set', 15, 3, 4.5),
(7, 7, 'Furniture', 'Storage', 'Bookshelf 5-Tier', 150, 1, 30),
(8, 8, 'Technology', 'Accessories', 'Wireless Mouse', 25, 2, 10),
(9, 9, 'Office Supplies', 'Binders', 'Binder Set', 30, 1, 7),
(10, 10, 'Furniture', 'Chairs', 'Executive Chair', 400, 1, 80),
(11, 11, 'Technology', 'Phones', 'Smartphone Y', 450, 1, 100),
(12, 12, 'Technology', 'Laptops', 'Laptop Air 13', 1000, 1, 250),
(13, 13, 'Office Supplies', 'Paper', 'Letter Pad Pack', 15, 4, 3),
(14, 14, 'Furniture', 'Tables', 'Glass Table', 350, 1, 70),
(15, 15, 'Office Supplies', 'Pens', 'Ball Pen Set', 10, 5, 2),
(16, 16, 'Furniture', 'Storage', 'Cabinet 3-Tier', 200, 1, 40),
(17, 17, 'Technology', 'Accessories', 'Keyboard', 45, 1, 10),
(18, 18, 'Furniture', 'Chairs', 'Gaming Chair', 300, 1, 60),
(19, 19, 'Technology', 'Phones', 'Smartphone Z', 550, 1, 130),
(20, 20, 'Office Supplies', 'Binders', 'Ring Binder', 25, 2, 5),
(21, 21, 'Furniture', 'Tables', 'Round Table', 320, 1, 65),
(22, 22, 'Technology', 'Laptops', 'Laptop Ultra 14', 1100, 1, 270),
(23, 23, 'Office Supplies', 'Paper', 'Sticky Notes', 12, 6, 2.5),
(24, 24, 'Technology', 'Accessories', 'Headphones', 60, 1, 15),
(25, 25, 'Furniture', 'Storage', 'Drawer Unit', 180, 1, 35);

-- 1. Retrieve all customers from the database
select * from customers;
-- Insight: Displays all customers along with their region and country. Useful for understanding the customer base.

-- 2. Retrieve all products available
select * from products;
-- Insight: Helps identify all products in each category and sub-category.

-- 3. Retrieve all orders
select * from orders;
-- Insight: Shows order dates, shipping dates, and shipping modes.

-- 4. Retrieve all order items
select * from order_items;
-- Insight: Helps track what products were sold, quantity, sales, and profit.

-- 5. Show customers with their orders
select c.customer_name, o.order_id, o.order_date from customers c join orders o on c.customer_id = o.customer_id;
-- Insight: Connects each customer to their orders.

-- 6. Show orders with product details
select o.order_id, p.product_name, p.category, p.sub_category from orders o join order_items oi on o.order_id = oi.order_id join products p on oi.product_id = p.product_id;
-- Insight: Displays which products were sold in each order.

-- 7. Total sales per product
select p.product_name, sum(oi.sales) as total_sales from order_items oi join products p on oi.product_id = p.product_id group by p.product_name;
-- Insight: Identifies best-selling products by total sales.

-- 8. Total profit per product
select p.product_name, sum(oi.profit) as total_profit from order_items oi join products p on oi.product_id = p.product_id group by p.product_name;
-- Insight: Shows which products contribute most to profit.

-- 9. Total sales per category
select category, sum(sales) as total_sales from order_items group by category;
-- Insight: Compares sales across categories like Furniture, Technology, Office Supplies.

-- 10. Total profit per category
select category, sum(profit) as total_profit from order_items group by category;
-- Insight: Shows the most profitable categories.

-- 11. Total quantity sold per sub-category
select sub_category, sum(quantity) as total_quantity from order_items group by sub_category;
-- Insight: Identifies sub-categories with higher demand.

-- 12. List customers who have placed more than 1 order
select c.customer_id, c.customer_name, count(o.order_id) as total_orders from customers c join orders o on c.customer_id = o.customer_id group by c.customer_id, c.customer_name having count(o.order_id) > 1;
-- Insight: Shows repeat customers with more than one order.

-- 13. Orders shipped by mode
select ship_mode, count(order_id) as total_orders from orders group by ship_mode;
-- Insight: Shows which shipping mode is most used.

-- 14. Orders with sales > 300
select * from order_items where sales > 300;
-- Insight: Highlights high-value orders.

-- 15. Orders sorted by ship date
select * from orders order by ship_date;
-- Insight: Displays orders in chronological shipping order.

-- 16. Total sales per customer
select c.customer_name, sum(oi.sales) as total_sales from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id group by c.customer_name;
-- Insight: Identifies top customers by total sales.
    
-- 17. Total profit per customer
select c.customer_name, sum(oi.profit) as total_profit from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id group by c.customer_name;
-- Insight: Shows customers who contribute most to profit.  

-- 18. Average sales per order
select order_id, avg(sales) as avg_sales from order_items group by order_id;
-- Insight: Shows the average value of items per order. 

-- 19. Total sales per region
select c.region, sum(oi.sales) as total_sales from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id group by c.region;
-- Insight: Compares sales across regions. 

-- 20. Total profit per region
select c.region, sum(oi.profit) as total_profit from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id group by c.region;
-- Insight: Shows the most profitable regions.

-- 21. Orders in a specific date range
select * from orders where order_date between '2024-08-01' and '2024-08-10';
-- Insight: Filters orders placed in a specific period.

-- 22. Products sold more than 2 units
select product_name, sum(quantity) as total_quantity from order_items group by product_name having sum(quantity) > 2;
-- Insight: Highlights products with higher demand.

-- 23. Top 5 products by sales
select product_name, sum(sales) as total_sales from order_items group by product_name order by total_sales desc limit 5;
-- Insight: Highlights best-selling products.

-- 24. Top 5 customers by sales
select c.customer_name, sum(oi.sales) as total_sales from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id group by c.customer_name order by total_sales desc limit 5;
-- Insight: Identifies the most valuable customers.

-- 25. Orders and total sales
select order_id, sum(sales) as total_order_sales from order_items group by order_id;
-- Insight: Helps analyze revenue per order.

-- 26. Profit margin per order
select o.order_id, sum(profit)/sum(sales)*100 as profit_margin_percentage from orders o join order_items oi on o.order_id = oi.order_id group by o.order_id;
-- Insight: Measures profitability of each order.

-- 27. Products and total profit by category
select category, sum(profit) as total_profit from order_items group by category;
-- Insight: Shows which category contributes most to profit.

-- 28. Count of orders per customer
select c.customer_name, count(o.order_id) as total_orders from customers c join orders o on c.customer_id = o.customer_id group by c.customer_name;
-- Insight: Tracks number of orders per customer.

-- 29. Total sales per product category and sub-category
select category, sub_category, sum(sales) as total_sales from order_items group by category, sub_category;
-- Insight: Compares performance of sub-categories within each category.

-- 30. Orders with sales greater than 200 but less than 500
select * from order_items where sales between 200 and 500;
-- Insight: Filters medium-value orders for targeted analysis.


