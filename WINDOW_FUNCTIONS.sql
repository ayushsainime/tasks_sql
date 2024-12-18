CREATE DATABASE  if not exists window_function ; 
use window_function ; 

create table if not exists students( 
stud_id int , 
stud_name varchar(30) ,
stud_batch varchar(30) , 
stud_stream varchar(30) ,
stud_marks  int  , 
stud_mail varchar(30) ) ; 

 
 insert into students values (123, 'kaka' , 'fsda' , 'cse' , 89 , 'kaka@billo' ) , 
 (124, 'jaspreet ' , 'fsda' , 'cse' , 78 , 'jassu@jasi ' ) ,
 (125, 'curly_tlse' , 'fsde' , 'mme' , 81 , 'curly@tales.com ' ) , 
 (126, 'jogi ' , 'fsda' , 'eee' , 82 , 'kaka@billo' ) , 
 (127, 'moca' , 'fsdm' , 'prod' , 88 , 'kaka@billo' ) , 
 (128, 'capachino ' , 'fsdm' , 'prod ' , 88 , 'kaka@billo' ) , 
 (129, 'latte ' , 'fsdae' , 'mme' , 83 , 'kaka@billo' ) ,
 (130, 'kendric' , 'fsde' , 'cse' , 85 , 'kaka@billo' ) , 
 (131, 'bohemia ' , 'fsda' , 'civil' , 86 , 'kaka@billo' ) , 
 (132, 'robert de niro ' , 'fsdm' , 'mme' , 87 , 'kaka@billo' ) , 
 (133, 'al pachino ' , 'fsda' , 'prod' , 88 , 'kaka@billo' ) , 
 (134, ' ben affleck ' , 'fsde' , 'cse' , 89 , 'kaka@billo' ) , 
 (135, 'jenifer lawrence' , 'fsdc' , 'eee' , 81 , 'kaka@billo' ) , 
 (136, 'bradley cooper' , 'fsdc' , 'cse' , 86 , 'kaka@billo' ) , 
 (137, 'steve carell' , 'fsda' , 'civil' , 83 , 'kaka@billo' ) , 
 (138, 'hugh jackman ' , 'fsdm' , 'cse' , 85 , 'kaka@billo' ) , 
 (139, 'jake gylnhall' , 'fsde' , 'cse' , 84 , 'kaka@billo' ) , 
 (140, 'amy adams' , 'fsdc' , 'cse' , 81 , 'kaka@billo' )  ;
 
 drop table students ; 
 
 select * from students order by stud_batch desc ; 
 
select stud_batch , sum(stud_marks) from students group by stud_batch  ;
select stud_batch , min(stud_marks) from students group by stud_batch  ;
select stud_batch ,max(stud_marks) from students group by stud_batch  ;

select stud_batch ,avg(stud_marks) from students  group by stud_batch ;
delete from students where stud_batch = 'fsdae' ;

select  count( distinct stud_batch) from students ; 

select stud_batch , count(*) from students group by stud_batch ; 
select  * from students  order by stud_batch  ;

select max(stud_marks) from students where stud_batch = 'fsda';  
select    stud_batch , max(stud_marks)  from students group by stud_batch ; 

 select   stud_name  from students  where  stud_marks = 
 (select max(stud_marks)  from students where stud_batch = "fsda" ) ; 
 

SELECT stud_name
FROM students
WHERE stud_marks = (
    SELECT MAX(stud_marks)
    FROM students
    WHERE stud_batch = 'fsda'
)
AND stud_batch = 'fsda';

select * from students ;

select * from students where  stud_batch ='fsda' order by stud_marks desc limit 2, 4 ; 

-- who 
   select * from students  where stud_marks  =  ( select  min(stud_marks) from 
   (select stud_marks  from students  where stud_batch = 'fsda'   order by  stud_marks 
    desc limit 3 ) as top) ;
    
    select stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    row_number()  
    over(  order by stud_marks desc ) as 'row_numbr' from students ;
    
    select stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    row_number()  
    over( partition by stud_batch order by stud_marks desc ) as 'row_numbr' from students ;
    
    
     
   select * from ( select stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    row_number()  
    over( partition by stud_batch order by stud_marks ) as 'row_numbr' from students) as test where 
    row_numbr = 1 ;
         
   select * from ( select stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    row_number()  
    over( partition by stud_batch order by stud_marks desc  ) as 'row_numbr' from students) as test where 
    row_numbr = 1 ;
    
    select  stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    rank() over (partition by stud_batch  order by stud_marks ) as 'row_rnk' from students  ;
    
    SELECT stud_batch, stud_name, stud_marks,
       SUM(stud_marks) OVER (PARTITION BY stud_batch) AS total_marks_in_batch
	FROM students ;
    
    
        
    select  stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    rank() over (partition by stud_batch  order by stud_marks ) as 'row_rnk' , 
    row_number() over ( order by stud_marks  )  as 'row_nums'   from  students  ;
    
    
    select  stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    rank() over (partition by stud_batch  order by stud_marks ) as 'row_rnk' , 
    row_number() over ( partition by stud_batch  order by stud_marks  )  as 'row_nums'   from  students  ;
    
    
    
    select  stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    rank() over (partition by stud_batch  order by stud_marks ) as 'row_rnk' , 
    row_number() over ( partition by stud_batch  order by stud_marks  )  as 'row_nums' , 
    dense_rank() over( partition by stud_batch order by stud_marks ) as 'dense_rrnk' 
    from  students  ;
    
    

     
   select * from  (select  stud_id , stud_batch , stud_stream , stud_name ,stud_marks , 
    rank() over (partition by stud_batch  order by stud_marks desc  ) as 'row_rnk' , 
    row_number() over ( partition by stud_batch  order by stud_marks desc   )  as 'row_nums' , 
    dense_rank() over( partition by stud_batch order by stud_marks desc  ) as 'dense_rrnk' 
    from  students)  as kaka  where dense_rrnk = 2  ;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
   
   
   
















 
 
 
 
 
 
 




