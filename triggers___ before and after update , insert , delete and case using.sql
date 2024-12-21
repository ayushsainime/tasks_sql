create database  if not exists triggers  ; 
use triggers ; 



create table if not exists course1(
 course_id int ,  
 course_name varchar(30) , 
  course_mentor varchar(30) ,
 course_price  int  , 
 course_disc  int , 
 course_date date 
 ) ; 

create table if not exists course_update(
  course_mentor_update  varchar(30) ,
 course_price_update   int  , 
 course_disc_update  int ) ; 
 
 
DELIMITER $$ 
CREATE TRIGGER course_before_insert 
BEFORE INSERT 
ON course1
FOR EACH ROW
BEGIN
    SET NEW.course_date = SYSDATE(); 
END $$ 

insert into course1  ( course_id  , course_name ,course_mentor , course_price , course_disc) values( 101 , 'fsda' , 'kakaji' , 4000 , 10 ) ;


 select * from course2 ;

create table if not exists course2(
 course_id int ,  
 course_name varchar(30) , 
  course_mentor varchar(30) ,
 course_price  int  , 
 course_disc  int , 
 course_date date , 
 user_info varchar(30) 
 ) ; 
 
DELIMITER $$ 
CREATE TRIGGER course_before_insert1 
BEFORE INSERT 
ON course2
FOR EACH ROW
BEGIN 
	 declare kk varchar(30)  ; 
    SET NEW.course_date = SYSDATE(); 
    set kk = user() ; 
    set new.user_info = kk; 
    
END $$ 

insert into course2  ( course_id  , course_name ,course_mentor , course_price , course_disc) values( 101 , 'fsda' , 'kakaji' , 4000 , 10 ) ;

select *  from course2 ; 

create table reff( 
  dat date , 
  info varchar (30) ) 
  
  
DELIMITER $$ 
CREATE TRIGGER course_before_insert2 
BEFORE INSERT 
ON course2
FOR EACH ROW
BEGIN 
	 declare kk varchar(30)  ; 
    SET NEW.course_date = SYSDATE(); 
    set kk = user() ; 
    set new.user_info = kk; 
    insert into  reff  values( sysdate() , kk) ; 
    
END $$ 
  
 select * from reff ; 
 select * from course2 ; 
 
 create table  aa (
 oneee varchar(30) , 
  twoo date , 
  three int ) 
   
 create table  bb (
 oneee varchar(30) , 
  twoo date , 
  three int )  ; 
  
   
 create table  cc (
 oneee varchar(30) , 
  twoo date , 
  three int )  ; 
  
DELIMITER $$ 
create trigger updadte_others3 AFTER INSERT 
on aa  FOR EACH ROW 
BEGIN
	 update bb set  oneee = 'kaka ji'  where  oneee ='sonu' ;
	delete from cc where oneee =  'robert de niro '  ; 
    
END $$ 

	select * from aa ; 
    select * from bb ; 
    select * from cc ; 
    drop trigger updadte_others2; 
     
    
    insert into aa values ( 'al pachino ' , sysdate() , 99 ) ; 
    
    
DELIMITER $$ 
create trigger updadte_others4 AFTER delete 
on  aa  FOR EACH ROW 
BEGIN
	 update bb set  oneee = 'sonu'  where  oneee ='kaka ji' ;
	delete from cc where oneee =  'kaka ji'  ; 
    
END $$
drop trigger  updadte_others4 ; 


  delete from aa where  oneee = 'bradley cooper' ; 



DELIMITER $$ 
create trigger updadte_others5  BEFORE delete 
on  aa  FOR EACH ROW 
BEGIN
	  insert into bb ( oneee , twoo , three )  values ( old.oneee , old.twoo, old.three  )  ; 
END $$

 delete from aa where  oneee = 'al pachino ' ; 
 
	select * from aa ; 
    select * from bb ; 
    select * from cc ;


DELIMITER $$ 
create trigger updadte_others5  BEFORE delete 
on  aa  FOR EACH ROW 
BEGIN
	  insert into bb ( oneee , twoo , three )  values ( old.oneee , old.twoo, old.three  )  ; 
END $$

 delete from aa where  oneee = 'al pachino '; 
 
 
 -- first update and  then execute the statement ; 
 
DELIMITER $$ 
create trigger updadte_others7  BEFORE update 
on  aa  FOR EACH ROW 
BEGIN
	  insert into bb ( oneee , twoo , three )  values ( new.oneee , new.twoo, new.three  )  ; 
END $$

    insert into aa values ( 'al pachino' , sysdate() , 99 ) ; 
 
 select *  from aa ; 
  select *  from  bb; 
 select *  from  cc  ; 
  drop  trigger  updadte_others7  ; 
  
 
 update aa  set oneee ='denzel washhington'   where  oneee = 'kevin malone '  ;
  
 
 
DELIMITER $$ 
create trigger updadte_others8  AFTER update 
on  aa  FOR EACH ROW 
BEGIN
	  insert into bb ( oneee , twoo , three )  values ( old.oneee , old.twoo, old.three  )  ; 
END $$

use parti  ; 

select *  from course  ; 

select * , 
case 

when course_name ='dsa' then   " this is my batch "  
when course_name ='ai' then    "i dont know whose batch"  
 
 else  " this is not your colleze " 
  end as otherguyzz  
  from course ; 
  

update course set course_name = case 
 when course_name  ='ai' then 'rickshaw driver' 
 when course_name  = 'dsa' then 'da samosa alltimer' 
 end 
 
 select * from course ; 
 
 
 


 
 
 
 
 
 
 
 
    
    
  

   
 
 
 