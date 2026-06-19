create database TasteTrackFoodDeliveryOrderTrackingSystem;
use TasteTrackFoodDeliveryOrderTrackingSystem;
CREATE TABLE User (
  User_id int(255) PRIMARY KEY,
  First_name varchar(255) NOT NULL,
  Last_name varchar(255) NOT NULL,
  Email_id varchar(255) NOT NULL,
  Password varchar(255) NOT NULL,
  Phone_no varchar(10) NOT NULL,
  State varchar(255) NOT NULL,
  City varchar(255) NOT NULL,
  Pincode int(6) NOT NULL
);
select * from User;
INSERT INTO User (User_id, First_name, Last_name, Email_id, Password, Phone_no, State, City, Pincode) VALUES
(111, 'Ramnath', 'kumar', 'Ramnathkumar309@gmail.com', '12345', '9111111111', 'Karnataka', 'Bangalore', 572354);
create table Staff(
	Staff_Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	First_name varchar(225) NOT NULL,
	Last_name varchar(225) NOT NULL,
	Contact varchar(220) NOT NULL,
    Email_id varchar(220) DEFAULT NULL,
  	Salary varchar(230) DEFAULT NULL,
    Position varchar(225) DEFAULT NULL,
    Join_Date date NOT NULL,
	Sex varchar(25) DEFAULT NULL,
	Bdate date DEFAULT NULL,
    City varchar(230) DEFAULT NULL,
    State varchar(230) DEFAULT NULL,
    Pincode int(6) NOT NULL
);
select * from staff;
INSERT INTO Staff (Staff_Id, First_name, Last_name, Email_id, Contact, Salary, Position, Join_Date, Sex, Bdate, City, State, Pincode) VALUES
(101, 'Prem', 'Gowda', 'prem12@gmail.com', '1234567642', '40000', 'DELIVERY_BOY','2019-11-26','Male','1991-02-10','Karnataka', 'Mangalore' ,'574154');
CREATE TABLE Restaurant (
  Restaurant_id int(255) PRIMARY KEY,
  Restaurant_name varchar(255) NOT NULL,
  Cuisine varchar(255) NOT NULL
);
INSERT INTO Restaurant ( Restaurant_id, Restaurant_name, Cuisine) VALUES
(1013, 'Rameshwaram Cafe', 'South Indian Vegetarian');
select * from restaurant;

CREATE TABLE Food_Menu (
  Menu_id int(255) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Menu_name varchar(255) NOT NULL,
  Restaurant_id int(255) NOT NULL,
  Type varchar(255) NOT NULL,
  Category varchar(255) NOT NULL,
  Price int(20) NOT NULL
);
INSERT INTO Food_Menu (Menu_id, Menu_name, Restaurant_id, Type, Category, Price) VALUES
(401, 'American Pizza',1004,'Veg','Main Course', 350);
select * from Food_Menu;
INSERT INTO User (User_id, First_name, Last_name, Email_id, Password, Phone_no, State, City, Pincode) VALUES
(112,'Ananya','Reddy','ananyakreddy47@gmailcom','Ar9#kL21','9348172654','Telangana','Hyderabad',546801),
(113,'Vignesh','Iyer','vignesh62tiyer@gmailcom','Vg5@tP92','8891564372','Tamil Nadu','Chennai',690831),
(114,'Meera','Nair','meeraqnair355@gmailcom','Mn8!zQ44','9734521860','Kerala','Kochi',682001),
(115,'Suresh','Gowda','sureshgowda1996@gmailcom','Su2#Lk88','7018453296','Karnataka','Bangalore',560078),
(116,'Kavya','Rao','kavyamrao9@gmailcom','Ka7@Pq33','8642935178','Andhra Pradesh','Vijayawada',526783),
(117,'Harish','Shetty','nshettyharish4@gmailcom','Hr1!Xt76','9421765380','Karnataka','Bangalore',565232),
(118,'Lakshmi','Pillai','lakshmipillaiv3@gmailcom','Di9#Lm41','7584932167','Kerala','Kochi',682002),
(119,'Praveen','Reddy','praveenreddy143@gmailcom','Pr4@Ws19','9813742560','Telangana','Hyderabad',599602),
(121,'Divya','Kumar','divyakumarrx@gmailcom','Sa6!Qz72','8126495730','Tamil Nadu','Chennai',610402),
(122,'Kiran','Babu','kiranbabu2002@gmailcom','Ki3#Lm88','9047362815','Andhra Pradesh','Vijayawada',528902),
(123,'Anand','Rao','anand29y@gmailcom','An8@Tq54','8752936148','Karnataka','Mysore',575671),
(124,'Anitha','Nair','anithayyyy@gmailcom','Vi1!Xp39','9918462735','Kerala','Kochi',682003),
(125,'Lokesh','Shetty','lokeshshettyp@gmailcom','Lo7#Qr62','8237591460','Karnataka','Mangalore',575001),
(126,'Ramesh','Iyer','ramesh1548@gmailcom','Ra5@Kd27','7862359147','Tamil Nadu','Coimbatore',625001),
(127,'Deepa','Reddy','deepareddy@gmailcom','De2!Lm93','9157324680','Telangana','Hyderabad',512003),
(128,'Sanjay','Naidu','sanjay45@gmailcom','Sj9#Wt41','8627193450','Andhra Pradesh','Vijayawada',517501),
(129,'Vinod','Gowda','vinodgowda546@gmailcom','Vi4@Lp76','7346291580','Karnataka','Bangalore',562343),
(131,'Rahul','Pillai','rahulrahul@gmailcom','Rh8!Mx55','9037162845','Kerala','Kochi',682004),
(132,'Sneha','Naidu','sneha58tnaidus6@gmailcom','Rg3#Pd55','7693158426','Andhra Pradesh','Visakhapatnam',536391),
(133,'Naveen','Kumar','naveen49kumar@gmailcom','Na6#Qr29','8459273610','Tamil Nadu','Chennai',604503);
delete from user where User_id between 112 and 133;
select * from user;
select * from staff;
INSERT INTO Staff (Staff_Id, First_name, Last_name, Email_id, Contact, Salary, Position, Join_Date, Sex, Bdate, City, State, Pincode) VALUES
(102,'Lakshmi','Krishnan','lakshmi23@gmail.com','7819236541','42000','CASHIER','2020-04-11','Female','1993-06-14','Chennai','Tamil Nadu','621345'),
(103,'Anitha','Menon','anitha45@gmail.com','7926148356','46000','MANAGER','2018-08-21','Female','1990-09-19','Kochi','Kerala','682145'),
(104,'Bhaskar','Acharya','bhaskar38@gmail.com','8039571264','39000','DELIVERY_BOY','2021-02-17','Male','1995-03-22','Udupi','Karnataka','576213'),
(105,'Charan','Varma','charan62@gmail.com','8147629351','41000','SUPERVISOR','2019-05-10','Male','1992-07-18','Vijayawada','Andhra Pradesh','521437'),
(106,'Divya','Raman','divya29@gmail.com','8256391742','37000','CASHIER','2022-03-05','Female','1996-12-02','Madurai','Tamil Nadu','625143'),
(107,'Farhan','Ali','farhan77@gmail.com','8362147598','36000','DELIVERY_BOY','2021-09-14','Male','1997-01-28','Hyderabad','Telangana','501243'),
(108,'Gayathri','Subramani','gayathri34@gmail.com','8471352964','40000','SUPERVISOR','2020-11-03','Female','1994-05-09','Coimbatore','Tamil Nadu','641235'),
(109,'Haritha','Nair','haritha55@gmail.com','8587462139','38500','CASHIER','2023-01-16','Female','1998-08-30','Thrissur','Kerala','681247'),
(201,'Imran','Shaikh','imran26@gmail.com','8695314728','35000','DELIVERY_BOY','2022-06-22','Male','1996-04-11','Mysore','Karnataka','571324'),
(202,'Jyothi','Prasad','jyothi61@gmail.com','8714629357','43000','MANAGER','2019-12-07','Female','1991-10-06','Bangalore','Karnataka','562143'),
(203,'Kavya','Reddy','kavya48@gmail.com','8825931476','37000','CASHIER','2021-07-13','Female','1995-02-21','Tirupati','Andhra Pradesh','517234'),
(204,'Lokendra','Patil','lokendra31@gmail.com','8937642158','42000','SUPERVISOR','2020-01-19','Male','1993-09-15','Hubli','Karnataka','581346'),
(20,'Meghana','Das','meghana72@gmail.com','9046712358','36000','DELIVERY_BOY','2022-10-04','Female','1997-06-25','Salem','Tamil Nadu','636215'),
(205,'Nitin','Joseph','nitin44@gmail.com','9158326471','39000','SUPERVISOR','2019-04-28','Male','1992-03-08','Kozhikode','Kerala','673214'),
(206,'Oviya','Shankar','oviya59@gmail.com','9267415832','38000','CASHIER','2021-03-09','Female','1996-11-13','Trichy','Tamil Nadu','621457'),
(207,'Prakash','Kulkarni','prakash63@gmail.com','9376541826','45000','MANAGER','2018-02-15','Male','1989-07-29','Belgaum','Karnataka','591347'),
(208,'Qadir','Hussain','qadir27@gmail.com','9482136754','35000','DELIVERY_BOY','2023-02-06','Male','1998-12-18','Guntur','Andhra Pradesh','522347'),
(209,'Ritika','Shekar','ritika36@gmail.com','9597612348','40000','SUPERVISOR','2020-06-11','Female','1994-01-20','Warangal','Telangana','506213'),
(301,'Sneha','Kapoor','sneha53@gmail.com','9618427539','37500','CASHIER','2021-08-23','Female','1995-05-16','Mangalore','Karnataka','574213'),
(302,'Meghana','Das','meghana72@gmail.com','9046712358','36000','DELIVERY_BOY','2022-10-04','Female','1997-06-25','Salem','Tamil Nadu','636215'),
(303,'Tanmay','Desai','tanmay67@gmail.com','9726351482','41000','SUPERVISOR','2019-03-30','Male','1992-04-07','Davangere','Karnataka','577213');


INSERT INTO Restaurant (Restaurant_id, Restaurant_name, Cuisine) VALUES
(1014,'Saravanaa Bhavan','South Indian Vegetarian'),
(1015,'Adyar Ananda Bhavan','South Indian Vegetarian'),
(1016,'MTR Tiffin Room','Karnataka South Indian'),
(1017,'Rameshwaram Cafe','South Indian Tiffin'),
(1018,'Vidyarthi Bhavan','Karnataka South Indian'),
(1019,'Murugan Idli Shop','Tamil Nadu South Indian'),
(1020,'Sangeetha Veg Restaurant','South Indian Vegetarian'),
(1021,'Paragon Restaurant','Kerala Malabar Cuisine'),
(1022,'Kayees Rahmathulla Hotel','Kerala Biryani'),
(1023,'Paradise Biryani','Hyderabadi Biryani'),
(1024,'Rayalaseema Ruchulu','Andhra Spicy Cuisine'),
(1025,'Carnatic Cafe','Karnataka South Indian'),
(1026,'Naivedyam','Andhra & South Indian'),
(1027,'Annapoorna Gowrishankar','Tamil South Indian'),
(1028,'Simply South','Premium South Indian');
select * from restaurant;
INSERT INTO Food_menu (Menu_id, Menu_name, Restaurant_id, Type, Category, Price) VALUES
(401, 'Pepper Chicken',1022,'Veg','Main Course', 350),
(402,'Chicken Biryani',1023,'Non Veg','Biryani',320),
(403,'Mutton Biryani',1023,'Non Veg','Biryani',380),
(404,'Veg Biryani',1014,'Veg','Biryani',260),
(405,'Paneer Butter Masala',1015,'Veg','Main Course',280),
(406,'Chicken Chettinad',1019,'Non Veg','Main Course',340),
(407,'Mutton Rogan Josh',1024,'Non Veg','Main Course',420),
(408,'Veg Meals',1026,'Veg','Main Course',250),
(409,'Fish Curry Kerala Style',1021,'Non Veg','Main Course',360),
(410,'Chicken 65',1023,'Non Veg','Starters',290),
(411,'Gobi Manchurian',1017,'Veg','Starters',220),
(412,'Paneer Tikka',1018,'Veg','Starters',310),
(413,'Apollo Fish',1022,'Non Veg','Starters',350),
(414,'Medu Vada',1016,'Veg','Starters',180),
(415,'Rava Dosa',1017,'Veg','Main Course',210),
(416,'Mysore Masala Dosa',1018,'Veg','Main Course',240),
(417,'Prawn Biryani',1021,'Non Veg','Biryani',410),
(418,'Egg Biryani',1025,'Non Veg','Biryani',270),
(419,'Curd Rice',1027,'Veg','Main Course',190),
(420,'Kesari Bath',1016,'Veg','Dessert',160),
(421,'Gulab Jamun',1020,'Veg','Dessert',180),
(422,'Payasam',1027,'Veg','Dessert',200),
(423,'Double Ka Meetha',1023,'Veg','Dessert',220),
(424,'Filter Coffee',1014,'Veg','Beverage',90);
select * from food_menu;
CREATE TABLE Drinks_Menu (
  Menu_id int(255) PRIMARY KEY,
  Menu_name varchar(255) NOT NULL,
  Restaurant_id int(255) NOT NULL,
  Type varchar(255) NOT NULL,
  Price int(20) NOT NULL
);


INSERT INTO Drinks_Menu (Menu_id, Menu_name, Restaurant_id, Type, Price) VALUES
(501,'Mojito',1014,'Non-alcoholic',250),
(502,'Guava Punch',1015,'Non-alcoholic',300),
(503,'Irish Cream',1016,'Alcoholic',500),
(504,'Pina Colada',1017,'Alcoholic',550),
(505,'Raspberry Fizz',1018,'Non-alcoholic',250),
(506,'Americano',1019,'Alcoholic',450),
(507,'Mango Milkshake',1020,'Non-alcoholic',280),
(508,'Cold Coffee',1021,'Non-alcoholic',200),
(509,'Strawberry Milkshake',1022,'Non-alcoholic',230),
(510,'Lemonade',1023,'Non-alcoholic',150),
(511,'Triple Berry Smoothie',1024,'Non-alcoholic',300),
(512,'Lavender Lemonade',1025,'Non-alcoholic',250),
(513,'Cosmopolitan',1026,'Alcoholic',600),
(514,'Popsicle Punch',1027,'Non-alcoholic',190),
(515,'Banana Strawberry Smoothie',1028,'Non-alcoholic',280),
(516,'Oreo Smoothie',1014,'Non-alcoholic',350),
(517,'Tropical Papaya Smoothie',1015,'Non-alcoholic',350),
(518,'Blue Lagoon',1016,'Alcoholic',550),
(519,'Margarita',1017,'Alcoholic',500),
(520,'Pear Smoothie',1018,'Non-alcoholic',270);


select * from drinks_menu;

CREATE TABLE Orders (
    Order_id INT  PRIMARY KEY,
    User_id INT NOT NULL,
    Menu_id INT NOT NULL,
    Restaurant_id INT NOT NULL,
    Order_date DATE,
    Order_time TIME
);
drop table Payment;

INSERT INTO Orders (Order_id, User_id, Menu_id, Restaurant_id, Order_date, Order_time) VALUES
(138,111,413,1015,'2025-03-01','12:58:42'),
(139,112,407,1013,'2025-03-01','12:58:37'),
(140,113,404,1014,'2025-03-01','12:58:53'),
(141,114,408,1019,'2025-03-01','12:58:47'),
(143,115,410,1020,'2025-03-02','04:21:26'),
(146,116,418,1016,'2025-03-02','05:43:38'),
(147,117,402,1015,'2025-03-02','05:43:42'),
(148,118,411,1017,'2025-03-02','14:12:03'),
(149,119,407,1013,'2025-03-05','09:55:38'),
(150,121,420,1016,'2025-03-05','15:28:08'),
(151,122,419,1022,'2025-03-06','04:36:31'),
(152,123,421,1015,'2025-03-06','04:36:31'),
(153,124,417,1015,'2025-03-07','09:55:47'),
(156,125,416,1018,'2025-03-07','04:31:09'),
(159,126,413,1015,'2025-03-08','07:59:28'),
(160,127,410,1020,'2025-03-08','04:16:04'),
(162,128,423,1015,'2025-03-08','09:54:04'),
(165,129,417,1015,'2025-03-09','10:58:53'),
(167,131,416,1016,'2025-03-10','12:15:04'),
(170,132,420,1016,'2025-03-10','12:54:04');
select * from orders;food_menufood_menufood_menufood_menufood_menufood_menu
CREATE TABLE Payment (
    Payment_id INT PRIMARY KEY,
    Order_id INT NOT NULL,
    Payment_type ENUM('COD','UPI','CARD')
);

INSERT INTO Payment (Payment_id, Order_id, Payment_type) VALUES
(2091,149,'CARD'),
(2092,138,'UPI'),
(2093,165,'CARD'),
(2094,147,'COD'),
(2095,170,'CARD'),
(2096,141,'UPI'),
(2097,160,'CARD'),
(2098,153,'COD'),
(2099,140,'COD'),
(2100,162,'UPI'),
(2101,156,'UPI'),
(2102,150,'UPI'),
(2103,167,'UPI'),
(2104,148,'UPI'),
(2105,159,'COD'),
(2106,143,'CARD'),
(2107,152,'UPI'),
(2108,146,'UPI'),
(2109,151,'CARD'),
(2110,139,'CARD');
select * from user;
rename table user to customers;
drop table staff;


CREATE TABLE Feedback (
    Order_id INT NOT NULL,
    User_id INT NOT NULL,
    Menu_id INT NOT NULL,
    Restaurant_id INT NOT NULL,
    Food_quality ENUM('NOT GOOD','AVERAGE','GOOD','EXCELLENT') DEFAULT NULL
);
INSERT INTO Feedback (Order_id, User_id, Menu_id, Restaurant_id, Food_quality) VALUES
(138,111,413,1015,'GOOD'),
(139,112,407,1013,'EXCELLENT'),
(140,113,404,1014,'AVERAGE'),
(141,114,408,1019,'GOOD'),
(143,115,410,1020,'EXCELLENT'),
(146,116,418,1016,'GOOD'),
(147,117,402,1015,'AVERAGE'),
(148,118,411,1017,'GOOD'),
(149,119,407,1013,'EXCELLENT'),
(150,121,420,1016,'GOOD'),
(151,122,419,1022,'AVERAGE'),
(152,123,421,1015,'GOOD'),
(153,124,417,1015,'EXCELLENT'),
(156,125,416,1018,'GOOD'),
(159,126,413,1015,'AVERAGE'),
(160,127,410,1020,'GOOD'),
(162,128,423,1015,'EXCELLENT'),
(165,129,417,1015,'GOOD'),
(167,131,416,1016,'GOOD'),
(170,132,420,1016,'EXCELLENT');
select * from feedback;
use tastetrackfooddeliveryordertraackingsystem;


