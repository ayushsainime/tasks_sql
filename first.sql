-- 1. Show all databases
SHOW DATABASES;

-- Create database if not exists and use it
CREATE DATABASE IF NOT EXISTS ineuron_fsda;
USE ineuron_fsda;

-- Create table if not exists bank_details
CREATE TABLE IF NOT EXISTS bank_details (
    age INT, 
    job VARCHAR(30), 
    marital VARCHAR(30), 
    education VARCHAR(30), 
    `default` VARCHAR(30),
    balance INT,
    housing VARCHAR(30), 
    loan VARCHAR(30),
    contact VARCHAR(30),  
    `day` INT,
    `month` VARCHAR(30), 
    duration INT,
    campaign INT,
    pdays INT,
    previous INT, 
    poutcome VARCHAR(30),
    y VARCHAR(30)
)

select * from bank_details ;
insert into bank_details values( 58,"management","married","tertiary","no",2143,"yes","no","unknown",5,"may",261,1,-1,0,"unknown","no") 
;
insert into bank_details values
(58,"management","married","tertiary","no",2143,"yes","no","unknown",5,"may",261,1,-1,0,"unknown","no"),
(44,"technician","single","secondary","no",29,"yes","no","unknown",5,"may",151,1,-1,0,"unknown","no"),
(33,"entrepreneur","married","secondary","no",2,"yes","yes","unknown",5,"may",76,1,-1,0,"unknown","no"),
(47,"blue-collar","married","unknown","no",1506,"yes","no","unknown",5,"may",92,1,-1,0,"unknown","no"),
(33,"unknown","single","unknown","no",1,"no","no","unknown",5,"may",198,1,-1,0,"unknown","no"),
(35,"management","married","tertiary","no",231,"yes","no","unknown",5,"may",139,1,-1,0,"unknown","no"),
(28,"management","single","tertiary","no",447,"yes","yes","unknown",5,"may",217,1,-1,0,"unknown","no"),
(42,"entrepreneur","divorced","tertiary","yes",2,"yes","no","unknown",5,"may",380,1,-1,0,"unknown","no"),
(58,"retired","married","primary","no",121,"yes","no","unknown",5,"may",50,1,-1,0,"unknown","no"),
(43,"technician","single","secondary","no",593,"yes","no","unknown",5,"may",55,1,-1,0,"unknown","no"),
(41,"admin.","divorced","secondary","no",270,"yes","no","unknown",5,"may",222,1,-1,0,"unknown","no"),
(29,"admin.","single","secondary","no",390,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",6,"yes","no","unknown",5,"may",517,1,-1,0,"unknown","no"),
(58,"technician","married","unknown","no",71,"yes","no","unknown",5,"may",71,1,-1,0,"unknown","no"),
(57,"services","married","secondary","no",162,"yes","no","unknown",5,"may",174,1,-1,0,"unknown","no"),
(51,"retired","married","primary","no",229,"yes","no","unknown",5,"may",353,1,-1,0,"unknown","no"),
(45,"admin.","single","unknown","no",13,"yes","no","unknown",5,"may",98,1,-1,0,"unknown","no"),
(57,"blue-collar","married","primary","no",52,"yes","no","unknown",5,"may",38,1,-1,0,"unknown","no"),
(60,"retired","married","primary","no",60,"yes","no","unknown",5,"may",219,1,-1,0,"unknown","no"),
(33,"services","married","secondary","no",0,"yes","no","unknown",5,"may",54,1,-1,0,"unknown","no"),
(28,"blue-collar","married","secondary","no",723,"yes","yes","unknown",5,"may",262,1,-1,0,"unknown","no"),
(56,"management","married","tertiary","no",779,"yes","no","unknown",5,"may",164,1,-1,0,"unknown","no"),
(32,"blue-collar","single","primary","no",23,"yes","yes","unknown",5,"may",160,1,-1,0,"unknown","no"),
(25,"services","married","secondary","no",50,"yes","no","unknown",5,"may",342,1,-1,0,"unknown","no"),
(40,"retired","married","primary","no",0,"yes","yes","unknown",5,"may",181,1,-1,0,"unknown","no"),
(44,"admin.","married","secondary","no",-372,"yes","no","unknown",5,"may",172,1,-1,0,"unknown","no"),
(39,"management","single","tertiary","no",255,"yes","no","unknown",5,"may",296,1,-1,0,"unknown","no"),
(52,"entrepreneur","married","secondary","no",113,"yes","yes","unknown",5,"may",127,1,-1,0,"unknown","no"),
(46,"management","single","secondary","no",-246,"yes","no","unknown",5,"may",255,2,-1,0,"unknown","no"),
(36,"technician","single","secondary","no",265,"yes","yes","unknown",5,"may",348,1,-1,0,"unknown","no"),
(57,"technician","married","secondary","no",839,"no","yes","unknown",5,"may",225,1,-1,0,"unknown","no"),
(49,"management","married","tertiary","no",378,"yes","no","unknown",5,"may",230,1,-1,0,"unknown","no"),
(60,"admin.","married","secondary","no",39,"yes","yes","unknown",5,"may",208,1,-1,0,"unknown","no"),
(59,"blue-collar","married","secondary","no",0,"yes","no","unknown",5,"may",226,1,-1,0,"unknown","no"),
(51,"management","married","tertiary","no",10635,"yes","no","unknown",5,"may",336,1,-1,0,"unknown","no"),
(57,"technician","divorced","secondary","no",63,"yes","no","unknown",5,"may",242,1,-1,0,"unknown","no"),
(25,"blue-collar","married","secondary","no",-7,"yes","no","unknown",5,"may",365,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",-3,"no","no","unknown",5,"may",1666,1,-1,0,"unknown","no"),
(36,"admin.","divorced","secondary","no",506,"yes","no","unknown",5,"may",577,1,-1,0,"unknown","no"),
(37,"admin.","single","secondary","no",0,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(44,"services","divorced","secondary","no",2586,"yes","no","unknown",5,"may",160,1,-1,0,"unknown","no"),
(50,"management","married","secondary","no",49,"yes","no","unknown",5,"may",180,2,-1,0,"unknown","no"),
(60,"blue-collar","married","unknown","no",104,"yes","no","unknown",5,"may",22,1,-1,0,"unknown","no"),
(54,"retired","married","secondary","no",529,"yes","no","unknown",5,"may",1492,1,-1,0,"unknown","no"),
(58,"retired","married","unknown","no",96,"yes","no","unknown",5,"may",616,1,-1,0,"unknown","no"),
(36,"admin.","single","primary","no",-171,"yes","no","unknown",5,"may",242,1,-1,0,"unknown","no"),
(58,"self-employed","married","tertiary","no",-364,"yes","no","unknown",5,"may",355,1,-1,0,"unknown","no"),
(44,"technician","married","secondary","no",0,"yes","no","unknown",5,"may",225,2,-1,0,"unknown","no"),
(55,"technician","divorced","secondary","no",0,"no","no","unknown",5,"may",160,1,-1,0,"unknown","no"),
(29,"management","single","tertiary","no",0,"yes","no","unknown",5,"may",363,1,-1,0,"unknown","no"),
(54,"blue-collar","married","secondary","no",1291,"yes","no","unknown",5,"may",266,1,-1,0,"unknown","no"),
(48,"management","divorced","tertiary","no",-244,"yes","no","unknown",5,"may",253,1,-1,0,"unknown","no"),
(32,"management","married","tertiary","no",0,"yes","no","unknown",5,"may",179,1,-1,0,"unknown","no")


select count(*) from bank_details;
select * from bank_details ;

select age, loan , job from bank_details  ;
select `default` from bank_details ;
select *from bank_details limit 7 ;
select * from bank_details where age =58;
select * from bank_details where age > 55;

select * from bank_details  where age >= 50 and job = 'retired' 
  select * from bank_details where (education= 'unknown' or marital='snigle') and balance > 10
 
 select distinct job from  bank_details 
 select * from bank_details order by age desc 
 
 
  //1.who is having minimum balance and maximum balance  
  // 2.all the people  who are having  loan on their heads  
  // 3. with this data try to fine the sum of balance  
  // 4. the average of balance  
  // 5. try to find out the averag ebalance of all people wose job role is admin  
  //6. try to find out a job record without job whose age is below 45 
  // 7. try to find out the record where education is primary and the man is jobelss  
  // 8. try to find out a record of a guy whose  bank account balance is negative  
  // 9. try to find out a record of the person who is not having a house at all along with their balance  
  
  //1 answer 
 SELECT * FROM bank_details ORDER BY balance desc  limit  1
 select min(balance) from bank_details
 
 select * from bank_details where balance =( select min(balance)  from bank_details) ; 
 
  select * from bank_details where balance =( select max(balance)  from bank_details) ; 
  
  select * from bank_details order by  balance  desc limit 1 
  

 
 
SELECT * FROM bank_details where loan ='yes' ;

 
 select sum(balance) as tot_sum  from bank_details ;
 select count(*) as cc  from bank_details;
 
 select   avg( balance)  from bank_details ; 
 select  avg(balance)  from bank_details  where job = 'admin.' ; 
 
 
 
 select * from bank_details 
 select count(*) from bank_details 
SELECT SUM(balance) / COUNT(*) AS average_balance
FROM bank_details
WHERE job= 'retired';

 
 select * from bank_details where  (age<45 and job='unknown')  ; 

select * from bank_details where( job='retired' and education='primary')  ; 
select * from bank_details where  education= 'priimary' and job = 'unknown' ; 
select * from bank_details where balance <0 ; 

select count(*) from  bank_details where ( housing ='no')

select balance , housing  from bank_details where  housing  = 'no' 

DELIMITER && 
create  procedure ayu() 
BEGIN 
  select* from bank_details ; 
END && 

 call ayu() 
 
 DELIMITER && 
create  procedure  avg_with_job_role1(IN hh varchar(30)  ) 
BEGIN 
 select  avg(balance)  from bank_details  where job =  hh  ; 
END && 


call avg_with_job_role1('retired') 
 
 DELIMITER && 
create  procedure   avg_edu_job3 (IN hh varchar(30) , in bb varchar(30)  ) 
BEGIN 
 select  * from bank_details  where job =  hh and  education =  bb  ; 
END && 

call avg_with_job_role1( 'retired') ; 

create view bank_view as select age , marital , job , education  from bank_details 



 
 
  
  
 
