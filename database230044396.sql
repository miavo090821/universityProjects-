/* Student name:  Thi Minh Anh Vo addr391 */

/* SECTION 1 - CREATE TABLE STATEMENTS */
CREATE TABLE addr391Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    description TEXT,
    price DECIMAL(10, 2),
    product_parent VARCHAR(50),
    product_title VARCHAR(100),
    product_category VARCHAR(50),
    UNIQUE(product_parent, product_title, product_category)
);

CREATE TABLE addr391SalesTransactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    purchase_date DATE,
    quantity INT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES addr391Products(product_id)
);


CREATE TABLE addr391UserActivity (
    activity_id INT PRIMARY KEY,
    user_id VARCHAR(50),
    login_datetime DATETIME,
    pages_visited INT,
    clicked_products INT,
    wishlist_additions INT
);

CREATE TABLE addr391AmazonCustomerReviews (
    marketplace VARCHAR(50),
    customer_id VARCHAR(50),
    review_id VARCHAR(50),
    product_id INT,
    star_rating INT,
    helpful_votes INT,
    total_votes INT,
    vine VARCHAR(10),
    verified_purchase VARCHAR(10),
    review_headline VARCHAR(255),
    review_body TEXT,
    review_date DATE,
    FOREIGN KEY (product_id) REFERENCES addr391Products(product_id)
);


/* SECTION 2 - INSERT STATEMENTS */

/* Insert statements for Products */
INSERT INTO addr391Products VALUES
    (456, 'Product A', 'Electronics', 'Description for Product A', 49.99, 'PP123', 'Product A', 'Electronics'),
    (457, 'Product B', 'Home', 'Description for Product B', 99.99, 'PP124', 'Product B', 'Home'),
    (458, 'Product C', 'Books', 'Description for Product C', 29.99, 'PP125', 'Product C', 'Books'),
    (459, 'Product D', 'Toys', 'Description for Product D', 39.99, 'PP126', 'Product D', 'Toys'),
    (460, 'Product E', 'Fashion', 'Description for Product E', 19.99, 'PP127', 'Product E', 'Fashion'),
    (461, 'Product F', 'Electronics', 'Description for Product F', 79.99, 'PP128', 'Product F', 'Electronics'),
    (462, 'Product G', 'Home', 'Description for Product G', 149.99, 'PP129', 'Product G', 'Home'),
    (463, 'Product H', 'Books', 'Description for Product H', 19.99, 'PP130', 'Product H', 'Books'),
    (464, 'Product I', 'Toys', 'Description for Product I', 89.99, 'PP131', 'Product I', 'Toys'),
    (465, 'Product J', 'Fashion', 'Description for Product J', 9.99, 'PP132', 'Product J', 'Fashion');

/* Insert statements for SalesTransactions */
INSERT INTO addr391SalesTransactions VALUES
    (1, 123, 456, '2023-01-10', 2, 25.50),
    (2, 234, 457, '2023-02-15', 1, 50.25),
    (3, 345, 458, '2023-03-20', 3, 75.00),
    (4, 456, 459, '2023-04-25', 1, 30.00),
    (5, 567, 460, '2023-05-30', 2, 20.00),
    (6, 678, 461, '2023-06-05', 1, 12.50),
    (7, 789, 462, '2023-07-10', 4, 100.00),
    (8, 890, 463, '2023-08-15', 2, 35.00),
    (9, 901, 464, '2023-09-20', 3, 50.00),
    (10, 012, 465, '2023-10-25', 1, 10.00);

ALTER TABLE addr391UserActivity MODIFY COLUMN user_id VARCHAR(50);

/* Insert statements for UserActivity */
INSERT INTO addr391UserActivity VALUES
    (101, 123, '2023-01-05 08:00:00', 5, 2, 1),
    (102, 234, '2023-02-10 09:30:00', 3, 1, 0),
    (103, 345, '2023-03-15 12:45:00', 8, 3, 2),
    (104, 456, '2023-04-20 15:20:00', 4, 1, 1),
    (105, 567, '2023-05-25 18:10:00', 6, 2, 0),
    (106, 678, '2023-06-01 10:00:00', 7, 2, 1),
    (107, 789, '2023-07-06 11:30:00', 4, 1, 0),
    (108, 890, '2023-08-11 14:45:00', 6, 3, 2),
    (109, 901, '2023-09-16 17:20:00', 5, 1, 1),
    (110, 123, '2023-10-21 20:00:00', 3, 0, 0); 

/* Insert statements for AmazonCustomerReviews */
INSERT INTO addr391AmazonCustomerReviews (marketplace, customer_id, review_id, product_id, star_rating, helpful_votes, total_votes, vine, verified_purchase, review_headline, review_body, review_date) VALUES
    ('US', 'A123', 'R123', 456, 5, 10, 12, 'Y', 'Y', 'Great product!', 'Amazing features!', '2023-01-10'),
    ('UK', 'B456', 'R124', 457, 4, 8, 9, 'N', 'Y', 'Decent product', 'Works as described', '2023-02-15'),
    ('CA', 'C789', 'R125', 458, 3, 6, 7, 'Y', 'N', 'Not satisfied', 'Needs improvement', '2023-03-20'),
    ('DE', 'D012', 'R126', 459, 5, 15, 18, 'N', 'Y', 'Highly recommended', 'Impressive quality', '2023-04-25'),
    ('US', 'F234', 'R128', 457, 4, 8, 9, 'N', 'Y', 'Solid product', 'Satisfactory', '2023-06-05'),
    ('UK', 'G567', 'R129', 458, 3, 6, 7, 'Y', 'N', 'Average product', 'Could be better', '2023-07-10'),
    ('CA', 'H890', 'R130', 459, 2, 4, 6, 'Y', 'N', 'Disappointing', 'Not as described', '2023-08-15'),
    ('DE', 'I013', 'R131', 460, 5, 15, 18, 'N', 'Y', 'Exceptional', 'Highly recommended', '2023-09-20'),
    ('FR', 'J346', 'R132', 461, 1, 2, 4, 'Y', 'N', 'Awful product', 'Not worth it', '2023-10-25'),
    ('FR', 'E345', 'R127', 460, 2, 4, 6, 'Y', 'N', 'Poor product', 'Not worth the price', '2023-05-30');



/* SECTION 3 - UPDATE STATEMENTS */

-- Update statements for AmazonCustomerReviews
UPDATE addr391AmazonCustomerReviews
SET star_rating = 3
WHERE review_id = 'R125';


/* Update statements for Products */
UPDATE addr391Products
SET price = 59.99
WHERE product_id = 456;



/* SECTION 4 - SINGLE TABLE SELECT STATEMENTS */

/* Query 1: Retrieve all products in the "Electronics" category. */
SELECT *
FROM addr391Products
WHERE category = 'Electronics';

/* Query 2: Retrieve the total sales transactions and their total price. */
SELECT COUNT(transaction_id) AS total_transactions, 
SUM(total_price) AS total_sales
FROM addr391SalesTransactions;

/* Query 3: Retrieve products with their corresponding sales information (if any). */
SELECT p.product_name, p.price, s.quantity, s.total_price
FROM addr391Products p
LEFT JOIN addr391SalesTransactions s ON p.product_id = s.product_id;

/* Query 4: Retrieve reviews with a star rating of 4 or higher. */
SELECT *
FROM addr391AmazonCustomerReviews
WHERE star_rating >= 4;

/* Query 5: Retrieve user activities with more than 5 pages visited. */
SELECT *
FROM addr391UserActivity
WHERE pages_visited > 5;

/* Query 6: Retrieve the top 3 products with the most helpful votes in their reviews. */
SELECT acr.product_id, p.product_name, acr.helpful_votes
FROM addr391AmazonCustomerReviews acr
JOIN addr391Products p ON acr.product_id = p.product_id
ORDER BY acr.helpful_votes DESC
LIMIT 3;
 
/* Query 7: Retrieve the total quantity sold per product. */
SELECT p.product_name, SUM(s.quantity) AS total_quantity_sold
FROM addr391Products p
JOIN addr391SalesTransactions s ON p.product_id = s.product_id
GROUP BY p.product_name;


/* SECTION 5 - MULTIPLE TABLE SELECT STATEMENTS */

/* Query 1: Retrieve the details of customers who reviewed 'Product A' */
SELECT acr.customer_id, acr.review_id, acr.star_rating, acr.review_date, acr.review_headline, acr.review_body
FROM addr391AmazonCustomerReviews acr
WHERE acr.product_id = (
    SELECT p.product_id
    FROM addr391Products p
    WHERE p.product_name = 'Product A'
);

/* Query 2: Retrieve transaction details for customers who purchased on the same date as customer 'F234' */
SELECT st.customer_id, st.transaction_id, st.purchase_date, st.quantity, st.total_price
FROM addr391SalesTransactions st
WHERE DATE(st.purchase_date) = (
    SELECT DATE(st2.purchase_date)
    FROM addr391SalesTransactions st2
    WHERE st2.customer_id = 234
);

/* Query 3: Fetch product names and their sales quantities exceeding 2 units */
SELECT p.product_name, s.quantity
FROM addr391Products p
JOIN addr391SalesTransactions s ON p.product_id = s.product_id
WHERE s.quantity > 2;

/* Query 4: Retrieve review details from customers who reviewed 'Electronics' category products */
SELECT acr.customer_id, acr.review_id, acr.star_rating, acr.review_date, acr.review_headline, acr.review_body
FROM addr391AmazonCustomerReviews acr
JOIN addr391Products p ON acr.product_id = p.product_id
WHERE p.category = 'Electronics';

/* Query 5: Fetch product names that haven't appeared in any sales transactions */
SELECT p.product_name
FROM addr391Products p
LEFT JOIN addr391SalesTransactions s ON p.product_id = s.product_id
WHERE s.transaction_id IS NULL;

/* Query 6: Calculate total clicks on products by each user and sort in descending order */
SELECT ua.user_id, SUM(ua.clicked_products) AS total_clicks
FROM addr391UserActivity ua
GROUP BY ua.user_id
ORDER BY total_clicks DESC;

/* SECTION 6 - DELETE ROWS 


DELETE FROM addr391SalesTransactions
WHERE purchase_date < '2023-01-01';

DELETE FROM addr391AmazonCustomerReviews
WHERE customer_id = 'A123';
*/

/* SECTION 7 - DROP TABLES 

DROP TABLE addr391AmazonCustomerReviews;

DROP TABLE addr391SalesTransactions;

DROP TABLE addr391Products;

DROP TABLE addr391UserActivity;
*/
