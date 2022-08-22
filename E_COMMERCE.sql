create database e_commerce;
use e_commerce;
create table supplier(SUPP_ID INT PRIMARY KEY,SUPP_NAME VARCHAR(50) NOT NULL, SUPP_CITY VARCHAR(50),SUPP_PHONE VARCHAR(10) NOT NULL);
INSERT supplier values(1,"Rajesh Retails","Delhi",1234567890);
INSERT INTO SUPPLIER VALUES(2,"Appario Ltd.","Mumbai",'2589631470');
INSERT INTO SUPPLIER VALUES(3,"Knome products","Banglore",'9785462315');
INSERT INTO SUPPLIER VALUES(4,"Bansal Retails","Kochi",'8975463285');
INSERT INTO SUPPLIER VALUES(5,"Mittal Ltd.","Lucknow",'7898456532');
create table customer(CUS_ID INT, CUS_NAME VARCHAR(50), CUS_CITY VARCHAR(50),CUS_GENDER VARCHAR(10),CUS_PHONE VARCHAR(10));
ALTER TABLE customer add primary key(CUS_ID);
ALTER TABLE customer RENAME column cus_gender TO cus_gender11;
ALTER TABLE customer RENAME column cus_city TO CUS_PHONE;
ALTER TABLE customer RENAME column cus_gender11 TO CUS_CITY;
ALTER TABLE customer RENAME column cus_phone TO cus_gender;
INSERT INTO CUSTOMER VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO CUSTOMER VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO CUSTOMER VALUES(3,"NEHA",'9999999999',"MUMBAI",'F');
INSERT INTO CUSTOMER VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO CUSTOMER VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');
create table category( CAT_ID INT NOT NULL, CAT_NAME VARCHAR(20) NOT NULL,PRIMARY KEY(CAT_ID));
INSERT INTO CATEGORY VALUES( 1,"BOOKS");
INSERT INTO CATEGORY VALUES(2,"GAMES");
INSERT INTO CATEGORY VALUES(3,"GROCERIES");
INSERT INTO CATEGORY VALUES (4,"ELECTRONICS");
INSERT INTO CATEGORY VALUES(5,"CLOTHES");
create table product(PRO_ID INT PRIMARY KEY, PRO_NAME VARCHAR(50),PRO_DESC VARCHAR(60), CAT_ID INT NOT NULL, FOREIGN KEY(CAT_ID) REFERENCES CATEGORY(CAT_ID));
INSERT INTO PRODUCT VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
INSERT INTO PRODUCT VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
INSERT INTO PRODUCT VALUES(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
INSERT INTO PRODUCT VALUES(4,"OATS","Highly Nutritious from Nestle",3);
INSERT INTO PRODUCT VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
INSERT INTO PRODUCT VALUES(6,"MILK","1L Toned MIlk",3);
INSERT INTO PRODUCT VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
INSERT INTO PRODUCT VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
INSERT INTO PRODUCT VALUES(9,"Project IGI","compatible with windows 7 and above",2);
INSERT INTO PRODUCT VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
INSERT INTO PRODUCT VALUES(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
INSERT INTO PRODUCT VALUES(12,"Train Your Brain","By Shireen Stephen",1);
create table supplier_pricing(PRICING_ID INT NOT NULL,PROD_ID INT NOT NULL,SUPP_ID INT NOT NULL, SUPP_PRICE INT DEFAULT 0,
PRIMARY KEY(PRICING_ID),FOREIGN KEY(PROD_ID) REFERENCES PRODUCT(PRO_ID), FOREIGN KEY(SUPP_ID)REFERENCES supplier(SUPP_ID));
INSERT INTO SUPPLIER_PRICING VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUES(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUES(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUES(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUES(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);
create table `order`(ORD_ID INT PRIMARY KEY,ORD_AMOUNT INT,ORD_DATE DATE,CUS_ID INT NOT NULL,PRICING_ID INT NOT NULL,
 FOREIGN KEY(CUS_ID) REFERENCES CUSTOMER(CUS_ID),FOREIGN KEY(PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID));
 INSERT INTO `ORDER` VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `ORDER` VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `ORDER` VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `ORDER` VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `ORDER` VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `ORDER` VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `ORDER` VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `ORDER` VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `ORDER` VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO `ORDER` VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `ORDER` VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `ORDER` VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `ORDER` VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `ORDER` VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `ORDER` VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `ORDER` VALUES(116,99,"2021-09-17",2,14);
create table rating(RAT_ID INT PRIMARY KEY, ORD_ID INT, RAT_RATSTARS INT NOT NULL,FOREIGN KEY(ORD_ID) REFERENCES `ORDER`(ORD_ID));
INSERT INTO RATING VALUES(1,101,4);
INSERT INTO RATING VALUES(2,102,3);
INSERT INTO RATING VALUES(3,103,1);
INSERT INTO RATING VALUES(4,104,2);
INSERT INTO RATING VALUES(5,105,4);
INSERT INTO RATING VALUES(6,106,3);
INSERT INTO RATING VALUES(7,107,4);
INSERT INTO RATING VALUES(8,108,4);
INSERT INTO RATING VALUES(9,109,3);
INSERT INTO RATING VALUES(10,110,5);
INSERT INTO RATING VALUES(11,111,3);
INSERT INTO RATING VALUES(12,112,4);
INSERT INTO RATING VALUES(13,113,2);
INSERT INTO RATING VALUES(14,114,1);
INSERT INTO RATING VALUES(15,115,1);
INSERT INTO RATING VALUES(16,116,0);

/*Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.*/
select*from customer inner join `order` on customer.cus_id=`order`.cus_id;
select count(id) as customer_count,gender  
from (select distinct customer.cus_id as ID, customer.cus_gender as gender from customer inner join `order` on customer.cus_id=`order`.cus_id
where ord_amount>=3000) as subquery group by gender;

/*Display all the orders along with product name ordered by a customer having Customer_Id=2 */
select * from `order` inner join supplier_pricing on `order`.pricing_id=supplier_pricing.pricing_id
inner join product on supplier_pricing.prod_id=product.pro_id where cus_id=2;

/*Display the Supplier details who can supply more than one product.*/
select supplier.supp_id, supplier.supp_name,supplier.supp_city,supplier.supp_phone ,count(supplier_pricing.prod_id)
from supplier inner join supplier_pricing 
on supplier.supp_id=supplier_pricing.supp_id group by supp_id having count(supplier_pricing.prod_id)>1;

/*Find the least expensive product from each category and print the table with category id, name, product name and price of the product*/
select category.cat_id as category_id,category.cat_name as category_name,min(supplier_pricing.supp_price)
from category inner join product on category.cat_id=product.cat_id inner join supplier_pricing on product.pro_id=supplier_pricing.prod_id
group by category.cat_id;

/*Display the Id and Name of the Product ordered after “2021-10-05” */
select product.pro_id,product.pro_name,`order`.ord_date from product inner join supplier_pricing on product.pro_id=supplier_pricing.prod_id
inner join `order`on supplier_pricing.pricing_id=`order`.pricing_id where ord_date> '2021-10-05';

/*Display customer name and gender whose names start or end with character 'A'*/
select customer.cus_name, customer.cus_gender from customer where cus_name like 'A%' OR cus_name like '%A';

/*9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, 
print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”*/
select supplier.supp_id,supplier.supp_name,rating.rat_ratstars,
case
when rating.rat_ratstars=5 then 'Excellent Service'
when rating.rat_ratstars>4 then 'Good Service'
when rating.rat_ratstars>2 then 'Average Service'
else 'poor services'
end as Service_remarks
from supplier inner join supplier_pricing on supplier.supp_id=supplier_pricing.supp_id
inner join `order` on supplier_pricing.pricing_id=`order`.pricing_id
inner join rating on `order`.ord_id=rating.ord_id;








