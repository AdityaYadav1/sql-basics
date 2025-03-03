create database prints;
use prints;
Create table customers(customer_id integer,customer_name varchar(25),customer_add varchar(75),customer_city varchar(20),customer_state varchar(20),customer_zip integer,customer_phone varchar(20));
Create table items(item_id integer,Title varchar(50),artist varchar(50),unit_price float,on_hand integer);
Create table orders(order_id integer,customer_id integer,order_date date,ship_date date);
Create table orderline(order_id integer,item_id integer,order_qty integer);


insert into customers values(1000,'Cora Blanca','1555 Seminole Ct.','Charlotte','NC',28210,'704/552.1810');
insert into customers values(1100,'Yash Reed','878 Madison Ave.','Greensboro','NC',27407,'336/316-5434');
insert into customers values(1200,'John Mills','4200 Olive Ave.','Columbia','SC',29206,'803/432.6225');
insert into customers values(1300,'David Cox','608 Old Post Rd.','Decatur','GA',30030,'404/243.7379');
insert into customers values(1400,'Tina Evans','235 Easton Ave.','Jacksonville','FL',32221,'904/992-7234');
insert into customers values(1500,'Will Allen','2508 W. Shaw Rd.','Raleigh','NC',27542,'919/809.2545');
insert into customers values(1600,'James Boyd','200 Pembury Ln.','Columbia','SC',29206,'803/432-1987');
insert into customers values(1700,'Will Parsons','4990 S. Pine St.','Raleigh','NC',27545,'919/355/0034');
insert into customers values(1800,'Walter Kelly','1200 Little St.','Columbia','SC',29206,'803/432-1987');
insert into customers values(1900,'Ann Damian','7822 N. Ridge Rd.','Jacksonville','FL',32216,'904/725-4672');
insert into customers values(2000,'Grace Hull','4090 Caldweld St.','Charlotte','NC',28205,'704/365.7655');
insert into customers values(2100,'Jane Brown','3320 W. Main St.','Charlotte','NC',28210,'704/372/9000');
insert into customers values(2200,'Betty Draper','1600 Sardis Rd.','Sarasota','FL',32441,'918/941-9121');


insert into items values(100,'Under the Sun','Donald Arley',46.80,340);
insert into items values(200,'Dark Lady','Keith Morris',120.99,250);
insert into items values(300,'Happy Days','Andrea Reid',78.00,210);
insert into items values(350,'Top of the Mountain','Janice Jones',110.00,290);
insert into items values(400,'Streets from Old','Sharon Brune',123.00,320);
insert into items values(450,'The Hunt','Walter Alford',39.99,390);
insert into items values(600,'Rainbow Row','Judy Ford',46.00,350);
insert into items values(700,'Skies Above','Alexander Wilson',98.00,275);
insert into items values(800,'The Seas and Moon','Susan Beeler',67.81,235);
insert into items values(850,'Greek Isles','Benjamin Caudle',76.00,300);


insert into orders values(1,1200,'2013-10-23','2013-10-28');
insert into orders values(2,1500,'2013-10-30','2013-11-03');
insert into orders values(3,1500,'2013-11-09','2013-11-14');
insert into orders values(4,2100,'2013-11-15','2013-11-20');
insert into orders values(5,1600,'2013-11-15','2013-11-20');
insert into orders values(6,1900,'2013-12-15','2013-12-19');
insert into orders values(7,2200,'2013-12-18','2013-12-22');
insert into orders values(8,1600,'2013-12-20','2013-12-22');
insert into orders values(9,1000,'2014-01-18','2014-01-23');
insert into orders values(10,2200,'2014-01-31','2014-02-04');
insert into orders values(11,1500,'2014-02-01','2014-02-06');
insert into orders values(12,1400,'2014-02-27','2014-03-02');
insert into orders values(13,1100,'2014-03-10','2014-03-15');
insert into orders values(14,1400,'2014-03-14','2014-03-19');


Insert into orderline values(1,800,2);
Insert into orderline values(1,600,1);
Insert into orderline values(2,700,3);
Insert into orderline values(2,300,2);
Insert into orderline values(3,850,1);
Insert into orderline values(4,200,4);
Insert into orderline values(4,100,1);
Insert into orderline values(4,850,1);
Insert into orderline values(5,450,1);
Insert into orderline values(6,800,2);
Insert into orderline values(7,300,2);
Insert into orderline values(7,600,2);
Insert into orderline values(8,100,1);
Insert into orderline values(9,100,3);
Insert into orderline values(10,450,6);
Insert into orderline values(10,600,8);
Insert into orderline values(10,200,4);
Insert into orderline values(11,700,2);
Insert into orderline values(12,300,3);
Insert into orderline values(12,700,4);
Insert into orderline values(13,200,2);
Insert into orderline values(13,600,10);
Insert into orderline values(13,450,4);
Insert into orderline values(14,700,8);
Insert into orderline values(14,200,6);
Insert into orderline values(14,800,4);
Insert into orderline values(14,450,2);

select * from customers;
select * from items; 
select * from orders; 
select * from orderline;