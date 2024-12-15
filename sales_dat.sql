create database if not exists  saless; 

use saless  ; 
CREATE TABLE  IF NOT EXISTS sales_dat (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 5) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL
);

select *  from sales_dat ;


 SET SESSION sql_mode= '';
 
  LOAD DATA infile
  'E:/sales_data_papa.csv'
  into table sales_dat
  fields terminated by ','
  enclosed by '"'
  lines terminated by'\n'
  ignore 1 rows 
  ; 
  
  select * from sales_dat ;
  select count(*)  from sales_dat ; 
  select  str_to_date( order_date,'%m/%d/%Y' ) from sales_dat  ; 
  alter table sales_dat  
  add column order_date_new  date after order_date  ;
  update sales_dat 
  set order_date_new  = str_to_date( order_date,'%m/%d/%Y');
  alter table sales_dat 
  add  column ship_date_new  date after ship_date  ; 
  select * from sales_dat ; 
  update sales_dat 
  set ship_date_new = str_to_date(ship_date, '%m/%d/%Y') ;
  select * from sales_dat  where  ship_date_new between '2011-05-01' and '2011-08-30' 
  select now() ;
  select curdate() 
  select  *  from sales_dat where ship_date_new < date_sub(now() , interval 1 week)
  select date_sub( now() , interval 3 day ) 
  select dayname('2004-09-25 21:40:00') 
  alter table sales_dat 
  
  add column flag date after order_id 
  
  update sales_dat 
  set flag = now() 

  select * from sales_dat
  
  alter table sales_dat 
  modify column year_new int 
  
  alter table sales_dat 
 modify  column month_new int 
  
  alter table sales_dat  
  modify  column day_new int 
  
  update sales_dat 
  set month_new = month(order_date_new )
  
  update sales_dat 
  set day_new = day(order_date_new )
  
  update sales_dat 
  set  year_new = year(order_date_new  )
  
select * from sales_Dat limit 5 
select year_new,  avg(sales)  from sales_dat group by year_new 
select year_new,  min(sales)  from sales_dat group by year_new 

select (shipping_cost + discount) as CTC from sales_dat 
select order_id , discount , if ( discount > 0 , 'yes' , 'no') as  discount_flag from sales_dat 

alter table sales_dat 
add column discount_flag  varchar(30)  after discount 

select * from sales_dat 
  
  update sales_dat 
  set discount_flag = if ( discount > 0 , 'yes' , 'no' ) ;
  
SELECT discount_flag, COUNT(*)
FROM sales_dat
GROUP BY discount_flag;

  select * from sales_dat 
  
  
  
