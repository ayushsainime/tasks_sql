create database if not exists prim_key; 
use prim_key ;

create table ineuron ( 
course_id int not null , 
course_name  varchar(30) , 
course_bb varchar(30) , 
number_of_enro int ,
primary key ( course_id) ) ; 


insert into ineuron values ( 01 , 'chamar bannee ka course ' , 'kal-pret',  100) ; 
insert into ineuron values ( 02  , ' jaat  banne ka course  ' , 'kala-preet ',  100) ; 

select * from ineuron ; 


create table student( 
student_name varchar(30) ,
student_status varchar(30), 
student_hobbie varchar(20) , 
course_id1 int , 
foreign key (course_id1) REFERENCES ineuron( course_id)) ; 


insert into student  values( 'bholu' , 'active' , 'badmoshi' , 01) ;

insert into student  values( 'blank' , 'active' , 'japaneese ' , 02) ; 

select * from student ;


create table payment( 
course_name varchar(30) , 
course_id int, 
course_status  varchar(30) , 
course_date varchar(20) ,
foreign key (course_id) REFERENCES ineuron(course_id) ) ; 

insert into payment values( 'kaka' , 01,'active' , 'billi' ) ;
insert into payment values( 'kaka' , 02,'active' , 'billi' )  ;


select * from payment ;


create table class( 
course_name varchar(30) , 
 course_id int, 
course_status  varchar(30) , 
course_date varchar(20) ,
primary key (course_id)  , 
foreign key (course_id) REFERENCES ineuron(course_id) ) ; 


insert into class values( 'kaka' , 01,'active','billi') ; 
insert into class values( 'kaka' , 02,'active','billi') ;

select * from class ; 

alter table ineuron drop primary key ; 

alter table class drop primary key ; 

drop table ineuron ;

drop table student ; 

ALTER TABLE student DROP FOREIGN KEY course_id1 ;

SHOW CREATE TABLE payment;

alter table ineuron add constraint test_prim primary key ( course_id , course_name) ; 
drop table payment ; 
drop table students ; 
drop table class ; 
 drop table  ineuron  ; 
 drop table student ; 
 
 create table test ( 
 id int  not null , 
 `name` varchar (30) , 
 games varchar (30) ) 
 
 select * from test ; 
 
 alter table test add primary key (id); 
 
  create table parent( 
  id int not null ,
  primary key (id) ) ; 
  
  
  create table child( 
   idd int , 
   parent_id int ,
   foreign key (parent_id) references parent(id)); 
   
   insert into parent values(1) ;
      insert into parent values(2) ; 
      
      select * from parent ;
       select * from child ;
      
      
         insert into child  values(10, 1 ) ; 
         
delete from parent where id =3  ;

drop table child ; 

  create table child( 
   idd int , 
   parent_id int , 
   foreign key (parent_id) references parent(id) on update cascade );
   
   insert into child values (1 , 1) , (1,2) , ( 3,1) , (3,2) ;
   select * from parent ;
      select * from child ;
   delete from parent where id =1   ;
   
   update parent set id =3 where id =2 ;
   drop table child1 
   
  CREATE TABLE child3( 
   idd INT, 
   parent_id INT, 
   FOREIGN KEY (parent_id) REFERENCES parent(id) 
   ON UPDATE CASCADE 
   ON DELETE CASCADE
);
   insert into child3 values (1 , 1) , (1,3) , ( 3,1) , (3,3) ;
   
   update parent set id = 8778 where id =1 
   
   select * from parent
      select * from child3

   
   delete from parent where id = 2 ;
   
   
   
   
   
   
      

   
   
   
   
   
   
   
   
   
   
    
   
   
   
   



   
   
   
   
   
   
   
   
   
   
   
   
   
  
 
 
 
 
 
 
 
 
 




select *  from payment  ; 






















