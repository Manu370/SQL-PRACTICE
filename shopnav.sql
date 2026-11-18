use shopnow;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    registration_date DATE
);

INSERT INTO customers (customer_name, email, city, state, registration_date) VALUES
('Rohit Sharma', 'rohit.sharma@gmail.com', 'Mumbai', 'Maharashtra', '2023-01-15'),
('Priya Patel', 'priya.patel@gmail.com', 'Ahmedabad', 'Gujarat', '2023-01-22'),
('Aman Gupta', 'aman.gupta@yahoo.com', 'Delhi', 'Delhi', '2023-02-03'),
('Sneha Reddy', 'sneha.reddy@gmail.com', 'Hyderabad', 'Telangana', '2023-02-10'),
('Karan Mehta', 'karan.mehta@outlook.com', 'Ahmedabad', 'Gujarat', '2023-02-18'),
('Divya Nair', 'divya.nair@gmail.com', 'Kochi', 'Kerala', '2023-03-01'),
('Vikram Singh', 'vikram.singh@yahoo.com', 'Jaipur', 'Rajasthan', '2023-03-12'),
('Ananya Iyer', 'ananya.iyer@gmail.com', 'Chennai', 'Tamil Nadu', '2023-03-20'),
('Rahul Verma', 'rahul.verma@gmail.com', 'Lucknow', 'Uttar Pradesh', '2023-04-05'),
('Pooja Joshi', 'pooja.joshi@outlook.com', 'Pune', 'Maharashtra', '2023-04-14'),
('Arjun Kumar', 'arjun.kumar@gmail.com', 'Bangalore', 'Karnataka', '2023-04-25'),
('Neha Agarwal', 'neha.agarwal@yahoo.com', 'Kolkata', 'West Bengal', '2023-05-02'),
('Siddharth Rao', 'siddharth.rao@gmail.com', 'Bangalore', 'Karnataka', '2023-05-11'),
('Kavya Menon', 'kavya.menon@gmail.com', 'Kochi', 'Kerala', '2023-05-19'),
('Manish Yadav', 'manish.yadav@outlook.com', 'Patna', 'Bihar', '2023-06-01'),
('Ritu Sharma', 'ritu.sharma@gmail.com', 'Chandigarh', 'Punjab', '2023-06-09'),
('Deepak Chauhan', 'deepak.chauhan@yahoo.com', 'Indore', 'Madhya Pradesh', '2023-06-20'),
('Swati Desai', 'swati.desai@gmail.com', 'Surat', 'Gujarat', '2023-07-03'),
('Nikhil Malhotra', 'nikhil.malhotra@gmail.com', 'Delhi', 'Delhi', '2023-07-15'),
('Meera Pillai', 'meera.pillai@outlook.com', 'Chennai', 'Tamil Nadu', '2023-07-28');

select count(*) from customers; 

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150),
    category VARCHAR(50),
    price DECIMAL(10,2),
    cost DECIMAL(10,2),
    stock_quantity INT
);

INSERT INTO products (product_id, product_name, category, price, cost, stock_quantity) VALUES
(11, 'Puma Sports T-Shirt', 'Clothing', 999.00, 500.00, 180),
(12, 'Adidas Track Pants', 'Clothing', 1599.00, 800.00, 140),
(13, 'Allen Solly Formal Shirt', 'Clothing', 1299.00, 650.00, 130),
(14, 'Bata Formal Shoes', 'Footwear', 1899.00, 1100.00, 60),
(15, 'Woodland Casual Shoes', 'Footwear', 2799.00, 1600.00, 65),
(16, 'Skechers Sports Shoes', 'Footwear', 3299.00, 1900.00, 75),
(17, 'Redmi Note 13', 'Electronics', 15999.00, 13200.00, 50),
(18, 'JBL Bluetooth Headphones', 'Electronics', 2499.00, 1500.00, 90),
(19, 'Boat Bluetooth Speaker', 'Electronics', 1999.00, 1200.00, 100),
(20, 'Bajaj Mixer Grinder', 'Home Appliances', 3199.00, 2100.00, 45),
(21, 'Milton Steel Water Bottle', 'Home Appliances', 449.00, 220.00, 250),
(22, 'Cello Insulated Casserole', 'Home Appliances', 799.00, 450.00, 160),
(23, 'Philips Hair Dryer', 'Home Appliances', 899.00, 550.00, 70),
(24, 'Casio Digital Watch', 'Accessories', 1899.00, 950.00, 100),
(25, 'Fastrack Sunglasses', 'Accessories', 1299.00, 650.00, 120),
(26, 'Titan Wrist Watch', 'Accessories', 4499.00, 2500.00, 55),
(27, 'Mamaearth Shampoo', 'Beauty & Personal Care', 349.00, 175.00, 400),
(28, 'Lakme Lipstick', 'Beauty & Personal Care', 449.00, 220.00, 350),
(29, 'Dettol Handwash 250ml', 'Beauty & Personal Care', 99.00, 55.00, 700),
(30, 'Fortune Sunflower Oil 1L', 'Grocery', 189.00, 155.00, 550);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30),
    payment_status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, order_status, payment_status) VALUES
(1, 1, '2023-02-01', 'Delivered', 'Paid'),
(2, 1, '2023-04-15', 'Delivered', 'Paid'),
(3, 2, '2023-02-05', 'Delivered', 'Paid'),
(4, 3, '2023-02-20', 'Delivered', 'Paid'),
(5, 3, '2023-05-10', 'Delivered', 'Paid'),
(6, 4, '2023-03-01', 'Cancelled', 'Refunded'),
(7, 5, '2023-03-05', 'Delivered', 'Paid'),
(8, 6, '2023-03-15', 'Delivered', 'Paid'),
(9, 6, '2023-06-01', 'Delivered', 'Paid'),
(10, 7, '2023-04-01', 'Delivered', 'Pending'),
(11, 8, '2023-04-10', 'Returned', 'Refunded'),
(12, 9, '2023-05-01', 'Delivered', 'Paid'),
(13, 10, '2023-05-20', 'Delivered', 'Paid'),
(14, 1, '2023-07-01', 'Delivered', 'Paid'),
(15, 6, '2023-08-05', 'Delivered', 'Paid'),
(16, 2, '2023-06-12', 'Delivered', 'Paid'),
(17, 4, '2023-07-18', 'Delivered', 'Pending'),
(18, 7, '2023-08-01', 'Cancelled', 'Refunded'),
(19, 9, '2023-08-15', 'Delivered', 'Paid'),
(20, 10, '2023-09-01', 'Delivered', 'Paid');

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 11, 2, 999.00),
(2, 1, 27, 1, 349.00),
(3, 2, 18, 1, 2499.00),
(4, 3, 12, 3, 1599.00),
(5, 4, 17, 1, 15999.00),
(6, 5, 29, 5, 99.00),
(7, 6, 14, 1, 1899.00),
(8, 7, 26, 1, 4499.00),
(9, 8, 13, 2, 1299.00),
(10, 9, 20, 1, 3199.00),
(11, 10, 11, 1, 999.00),
(12, 11, 18, 2, 2499.00),
(13, 12, 27, 4, 349.00),
(14, 13, 12, 1, 1599.00),
(15, 14, 17, 1, 15999.00),
(16, 15, 29, 10, 99.00),
(17, 16, 12, 1, 1599.00),
(18, 16, 27, 2, 349.00),
(19, 17, 17, 1, 15999.00),
(20, 17, 29, 3, 99.00),
(21, 18, 16, 1, 3299.00),
(22, 19, 24, 1, 1899.00),
(23, 19, 30, 4, 189.00),
(24, 20, 13, 1, 1299.00),
(25, 20, 21, 2, 449.00);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(30),
    amount DECIMAL(10,2),
    payment_status VARCHAR(30),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO payments (payment_id, order_id, payment_date, payment_method, amount, payment_status) VALUES
(1, 1, '2023-02-01', 'UPI', 2347.00, 'Paid'),
(2, 2, '2023-04-15', 'Credit Card', 2499.00, 'Paid'),
(3, 3, '2023-02-05', 'UPI', 4797.00, 'Paid'),
(4, 4, '2023-02-20', 'Net Banking', 15999.00, 'Paid'),
(5, 5, '2023-05-10', 'UPI', 495.00, 'Paid'),
(6, 6, '2023-03-01', 'Credit Card', 1899.00, 'Refunded'),
(7, 7, '2023-03-05', 'Debit Card', 4499.00, 'Paid'),
(8, 8, '2023-03-15', 'UPI', 2598.00, 'Paid'),
(9, 9, '2023-06-01', 'Cash on Delivery', 3199.00, 'Paid'),
(10, 10, '2023-04-01', 'UPI', 999.00, 'Pending'),
(11, 11, '2023-04-10', 'Credit Card', 4998.00, 'Refunded'),
(12, 12, '2023-05-01', 'UPI', 1396.00, 'Paid'),
(13, 13, '2023-05-20', 'Debit Card', 1599.00, 'Paid'),
(14, 14, '2023-07-01', 'Net Banking', 15999.00, 'Paid'),
(15, 15, '2023-08-05', 'UPI', 990.00, 'Paid'),
(16, 16, '2023-06-12', 'Credit Card', 2297.00, 'Paid'),
(17, 17, '2023-07-18', 'UPI', 16296.00, 'Pending'),
(18, 18, '2023-08-01', 'Debit Card', 3299.00, 'Refunded'),
(19, 19, '2023-08-15', 'Cash on Delivery', 2655.00, 'Paid'),
(20, 20, '2023-09-01', 'UPI', 2197.00, 'Paid');

CREATE TABLE returns (
    return_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    return_date DATE,
    return_reason VARCHAR(100),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO returns (return_id, order_id, product_id, return_date, return_reason) VALUES
(1, 11, 18, '2023-04-13', 'Product damaged on arrival'),
(2, 6, 14, '2023-03-04', 'Size did not fit'),
(3, 18, 16, '2023-08-04', 'Changed my mind'),
(4, 17, 17, '2023-07-22', 'Product not as described'),
(5, 9, 20, '2023-06-05', 'Better price found elsewhere'),
(6, 12, 29, '2023-05-04', 'Item expired / near expiry'),
(7, 13, 12, '2023-05-23', 'Wrong item delivered'),
(8, 15, 29, '2023-08-08', 'Quality not as expected'),
(9, 19, 30, '2023-08-18', 'Received extra quantity, returned excess'),
(10, 20, 21, '2023-09-04', 'Packaging was broken'),
(11, 3, 12, '2023-02-08', 'Ordered by mistake'),
(12, 8, 13, '2023-03-18', 'Fabric quality issue'),
(13, 14, 17, '2023-07-05', 'Found cheaper elsewhere, cancelled after delivery'),
(14, 16, 27, '2023-06-16', 'Allergic reaction to product'),
(15, 7, 26, '2023-03-09', 'Not satisfied with design');

CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    rating INT,
    review_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO reviews (review_id, customer_id, product_id, rating, review_date) VALUES
(1, 1, 11, 4, '2023-02-05'),
(2, 1, 27, 5, '2023-02-06'),
(3, 2, 12, 3, '2023-02-10'),
(4, 3, 17, 5, '2023-02-25'),
(5, 3, 29, 2, '2023-05-15'),
(6, 4, 14, 1, '2023-03-05'),
(7, 5, 26, 5, '2023-03-08'),
(8, 6, 13, 4, '2023-03-20'),
(9, 6, 20, 5, '2023-06-04'),
(10, 7, 11, 3, '2023-04-04'),
(11, 8, 18, 2, '2023-04-14'),
(12, 9, 27, 4, '2023-05-05'),
(13, 10, 12, 5, '2023-05-25'),
(14, 1, 17, 4, '2023-07-05'),
(15, 6, 29, 3, '2023-08-10'),
(16, 2, 12, 4, '2023-06-15'),
(17, 4, 17, 2, '2023-07-22'),
(18, 7, 16, 1, '2023-08-04'),
(19, 9, 24, 5, '2023-08-18'),
(20, 10, 13, 4, '2023-09-04');

-- total customers
 select count(*) as total_customer from customers;
 -- total product
 select count(*) as total_products from products;

-- total orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- total revenue
SELECT
    SUM(quantity * unit_price) AS total_revenue
FROM order_items;

-- monthly revenue

SELECT month(ORDER_DATE) AS MONTHS, sum(OI.quantity *OI.unit_price) AS MONTHLY_REVENUE FROM ORDERS O
LEFT JOIN  ORDER_ITEMS OI ON o.order_id = oi.order_id
GROUP BY MONTH(ORDER_DATE) ORDER BY MONTHS desc;

-- CITY BY CUTOMERS 
SELECT CITY,COUNT(*) AS CUSTOMER FROM CUSTOMERS
group by CITY ORDER BY CUSTOMER DESC;

-- revenue by city
SELECT C.CITY, sum(OI.quantity * OI.unit_price) AS MONTHLY_REVENUE FROM ORDER_ITEMS OI LEFT JOIN 
ORDERS O ON OI.ORDER_ID = O.ORDER_ID LEFT JOIN CUSTOMERS C ON C.CUSTOMER_ID= O.CUSTOMER_ID
group by C.CITY order by MONTHLY_REVENUE DESC;

-- CITY BY MONTHLY REVENUE BY CUSTOMERS 
 SELECT C.CUSTOMER_ID,
		C.CUSTOMER_NAME,
        C.CITY,
        sum(OI.quantity * OI.unit_price) AS TOTAL_SPENDING
		FROM   CUSTOMERS C LEFT JOIN ORDERS O ON C.CUSTOMER_ID=O.CUSTOMER_ID
        LEFT JOIN ORDER_ITEMS OI ON O.ORDER_ID= OI.ORDER_ID
		GROUP BY C.CUSTOMER_NAME,C.CUSTOMER_ID,C.CITY ORDER BY TOTAL_SPENDING DESC; 
        
-- REPETING CUSTOMERS
 SELECT CUSTOMER_ID,
        count(ORDER_ID) AS TOTAL_ORDERS
		FROM ORDERS
		GROUP BY CUSTOMER_ID
        HAVING TOTAL_ORDERS > 1; 
       
-- NOT BUYING CUSTOMERS
SELECT C.CUSTOMER_NAME,
       C.CUSTOMER_ID
	   FROM CUSTOMERS C LEFT JOIN ORDERS O
       ON C.CUSTOMER_ID=O.CUSTOMER_ID
	   WHERE ORDER_ID IS NULL;
	    
-- TOP SELLING PRODUCT

SELECT product_name,
       sum(stock_quantity)  as total from products
       group by product_name;
       
SELECT
    p.product_name,
    SUM(oi.quantity) AS units_sold
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY units_sold DESC
LIMIT 10;
 -- 2 
 
SELECT P.PRODUCT_ID,
       P.PRODUCT_NAME,
	   sum(OI.quantity) AS TOTAL FROM PRODUCTS P  LEFT JOIN
       ORDER_ITEMS OI ON P.PRODUCT_ID=P.PRODUCT_ID
       GROUP BY P.PRODUCT_ID,P.PRODUCT_NAME
       ORDER BY TOTAL DESC
       LIMIT 5;
 
 -- not selling product
 SELECT P.PRODUCT_ID,
       P.PRODUCT_NAME
	   FROM PRODUCTS P LEFT JOIN ORDER_ITEMS OI ON
       OI.PRODUCT_ID=P.PRODUCT_ID
       WHERE OI.PRODUCT_ID IS NULL;

 SELECT O.CUSTOMER_ID,count(O.ORDER_ID) AS TOTAL FROM ORDERS O
 group by CUSTOMER_ID HAVING TOTAL>1;
               
       -- profit 
       
SELECT P.PRODUCT_NAME,
       sum(OI.quantity * OI.unit_price) AS REVENUE,
       sum(OI.quantity * P.COST)AS COST_PRICE,
       sum(OI.quantity * (OI.unit_price-P.COST))AS PROFIT
       FROM PRODUCTS P LEFT JOIN ORDER_ITEMS OI ON
       P.PRODUCT_ID=OI.PRODUCT_ID
       GROUP BY P.PRODUCT_NAME, P.PRODUCT_ID
       ORDER BY PROFIT DESC
       LIMIT 5;
       
SELECT count(*) as total_returns FROM RETURNS;

select return_reason,count(*) as total from returns
group by return_reason  order by total;

SELECT C.CITY, SUM(O.ORDER_ID) AS TOTAL_RETURNS FROM CUSTOMERS C LEFT JOIN ORDERS O ON 
C.CUSTOMER_ID=O.ORDER_ID LEFT JOIN RETURNS R ON O.ORDER_ID=return_id GROUP BY C.CITY order by TOTAL_RETURNS DESC
LIMIT 7;

 -- CUSTOMER  SEGMEENT
 
SELECT C.CUSTOMER_ID,
       C.CUSTOMER_NAME,
       SUM(OI.quantity * OI.unit_price) AS TOTAL_SPENDING,
       
	   CASE
          WHEN SUM(OI.quantity * OI.unit_price)>=200000 THEN 'PRIMIUM'
		  WHEN SUM(OI.quantity * OI.unit_price)>=100000 THEN 'GOLD'
		  WHEN SUM(OI.quantity * OI.unit_price)>=50000 THEN 'SLIVER'
          ELSE 'LOW'
	   END AS CUSTOMER_SEGMENT
	   FROM CUSTOMERS C LEFT JOIN ORDERS O ON 
	   c.customer_id = o.customer_id LEFT JOIN ORDER_ITEMS OI ON 
	   o.order_id = oi.order_id GROUP BY C.CUSTOMER_ID, CUSTOMER_NAME;






  

