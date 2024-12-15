create database if not exists task_sales  ;

use task_sales ; 


CREATE TABLE retail_task (
	`InvoiceNo` VARCHAR(7) NOT NULL, 
	`StockCode` VARCHAR(12) NOT NULL, 
	`Description` VARCHAR(35), 
	`Quantity` DECIMAL(38, 0) NOT NULL, 
	`InvoiceDate` TIMESTAMP NULL, 
	`UnitPrice` DECIMAL(38, 3) NOT NULL, 
	`CustomerID` DECIMAL(38, 0), 
	`Country` VARCHAR(20) NOT NULL
);

select * from retail_task  ;
 

SET SESSION sql_mode= '';
LOAD DATA infile 
'E:/retail_task.csv' 
into table retail_task
fields terminated by ','
enclosed by '"' 
lines terminated by '\n' 
ignore   1 rows  ; 



select * from retail_task ;
select count(*) from retail_task  ;


set global max_allowed_packet = 209715200 ;


use saless

select * from sales_dat 


DELIMITER $$ 
create function add_to_col( a  INT )
returns INT 
DETERMINISTIC 
BEGIN 
  DECLARE b int;
  set b = a+10  ;
  return b ; 
END $$

select add_to_col( 15) 
select * from sales_dat 

select quantity , add_to_col(quantity) from  sales_dat 

delimiter $$ 
create function profits( profit decimal(20,6) , discount decimal(20,6) , sales decimal(20,6) ) 
returns int 
deterministic
begin 
declare ppf int ;
set ppf = profit - discount*sales  ; 
return ppf ;

end $$ 

select *from sales_dat  ;

select profit , discount , sales ,  profits( profit , discount , sales )  from sales_dat  ; 


DELIMITER && 
create function int_to_str( a int ) 
returns varchar(30) 
deterministic 
begin
declare  k  varchar(30) ;
set k = a ; 
return k ; 
end && 

 select int_to_str(3339) ; 
 
 














