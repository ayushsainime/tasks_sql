create database if not exists parti ;
use parti  ;

create table  if not  exists course(
course_name varchar(30),
course_id int , 
course_title  varchar(30) , 
course_mentor  varchar(30) , 
course_date  date , 
course_fee int , 
course_year INT 
) 
partition by RANGE (course_year) ( 
partition  p0 values less than (2019) , 
partition p1 values less than (2020) , 
partition  p2 values less than (2021) , 
partition p3 values less than (2022) , 
partition p4 values less than (2023) )  ;



CREATE TABLE IF NOT EXISTS course (
    course_name VARCHAR(30),
    course_id INT,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT 
)
PARTITION BY RANGE (course_year) (
    PARTITION p0 VALUES LESS THAN (2019),
    PARTITION p1 VALUES LESS THAN (2020),
    PARTITION p2 VALUES LESS THAN (2021),
    PARTITION p3 VALUES LESS THAN (2022),
    PARTITION p4 VALUES LESS THAN (2023)
);






insert into course values
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('ai' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2021 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 )   ; 


select partition_name , table_name , table_rows  from information_schema.partitions where table_name = 'course' ; 
 
CREATE TABLE IF NOT EXISTS course1 (
    course_name VARCHAR(30),
    course_id INT,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT
)
PARTITION BY hash (course_year) 
partitions 5 ;

select partition_name , table_name , table_rows  from information_schema.partitions where table_name ='course1' ; 


CREATE TABLE IF NOT EXISTS course2 (
    course_name VARCHAR(30),
    course_id INT,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT
)
PARTITION BY hash (course_year) 
partitions 10 ;

select partition_name , table_name , table_rows  from information_schema.partitions where table_name ='course2' ; 


CREATE TABLE IF NOT EXISTS course2 (
    course_name VARCHAR(30),
    course_id INT,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT
)
PARTITION BY hash (course_year) 
partitions 10 ;


insert into course2 values
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('ai' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2021 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 )   ; 

select partition_name , table_name , table_rows  from information_schema.partitions where table_name ='course2' ; 

CREATE TABLE IF NOT EXISTS course4 (
    course_name VARCHAR(30),
    course_id INT(10) primary key ,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT
)
PARTITION BY  key () 
partitions 10 ;
select partition_name , table_name , table_rows  from information_schema.partitions where table_name ='course4' ; 


insert into course5 values ('dsa' , 106 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 

('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('ai' , 102 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2019 ) , 
('MERN' , 103 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('dsa' , 106 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('ai' , 113 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('dsa' , 114 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2019 ) , 
('MERN' , 115 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('machine learning' , 116 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 117 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 118 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('MERN' , 119 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('machine learning' , 120 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('ai' , 122 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 123 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('machine learning' , 124 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('MERN' , 125 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('MERN' , 126 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2022 ) , 
('machine learning' , 127 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 128 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 )   ; 

-- uses md5 algorithm ; 
select MD5(121) ; 


CREATE TABLE IF NOT EXISTS course5 (
    course_name VARCHAR(30) unique key not null ,
    course_id INT(10) ,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT
)
PARTITION BY  key ( course_name ) 
partitions 10 ;




select partition_name , table_name , table_rows  from information_schema.partitions where table_name ='course5' ;

select partition_name , table_name , table_rows from information_schema.partitions where table_name= 'course5' ; 

CREATE TABLE IF NOT EXISTS course6 (
    course_name VARCHAR(30)  ,
    course_id INT(10) ,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT )
PARTITION BY  list columns  ( course_name ) (
partition pp values in ('machine learning') , 
partition kk values in ('MERN') , 
partition mm values in ('ai', 'dsa' ) 
); 

drop table course6  ;
 
SHOW CREATE TABLE course6 ;

select partition_name , table_name , table_rows from information_schema.partitions where table_name = 'course6' ;

insert into course6  values
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('ai' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2021 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 )   ; 


CREATE TABLE IF NOT EXISTS course6 (
    course_name VARCHAR(30)  ,
    course_id INT(10) ,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT
)
PARTITION BY  list columns  ( course_name ) (
partition pp values in ('machine learning') , 
partition kk values in ('MERN') , 
partition mm values in ('ai', 'dsa' ) 
);



CREATE TABLE IF NOT EXISTS course7 (
    course_name VARCHAR(30)  ,
    course_id INT(10) ,
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT
)
PARTITION BY  range ( course_year )
subpartition by hash ( course_year )
subpartitions 5  (
   PARTITION p0 VALUES LESS THAN (2019),
    PARTITION p1 VALUES LESS THAN (2020),
    PARTITION p2 VALUES LESS THAN (2021),
    PARTITION p3 VALUES LESS THAN (2022),
    PARTITION p4 VALUES LESS THAN (2023)
);

select partition_name ,table_name , table_rows from information_schema.partitions where table_name = 'course7'  ; 

 
 
insert into course7  values
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('ai' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2021 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 )   ; 




 CREATE TABLE IF NOT EXISTS course8 (
    course_name VARCHAR(30),
    course_id INT(10),
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT
)
PARTITION BY range columns(course_name,  course_year) (
    PARTITION pp VALUES less than ('machine learning',  2019),
    PARTITION kk VALUES less than ('MERN',  2020),
    PARTITION mm VALUES less than ('ai', 2021),
    PARTITION zz VALUES less than ('dsa',  2022)
);





 
insert  ignore into courseb  values
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('ai' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2021 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24', 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2020 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('ai' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2022 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2020 ) , 
('MERN' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 ) , 
('MERN' , 101 , 'ml', 'kaka ji' ,'2020-08-24' , 220 , 2022 ) , 
('machine learning' , 101 , 'ml', 'kaka ji' , '2020-08-24' , 220 , 2019 ) , 
('dsa' , 101 , 'ml', 'kaka ji' , '2020-08-24', 220 , 2021 )   ; 





CREATE TABLE IF NOT EXISTS coursea (
    course_name VARCHAR(30),
    course_id INT(10),
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT  
)
PARTITION BY LIST ( course_year) (
    PARTITION pp VALUES IN ( 2019),
    PARTITION kk VALUES IN ( 2020),
    PARTITION mm VALUES IN ( 2021),
    PARTITION zz VALUES IN (2022)
);

select partition_name , table_name , table_rows from information_schema.partitions where table_name = 'coursea' ; 





CREATE TABLE IF NOT EXISTS courseb (
    course_name VARCHAR(30),
    course_id INT(10),
    course_title VARCHAR(30),
    course_mentor VARCHAR(30),
    course_date DATE,
    course_fee INT,
    course_year INT  
)
PARTITION BY  RANGE COLUMNS( course_mentor,  course_year) (
    PARTITION pp VALUES LESS THAN ( 'kaka ji' ,  2019),
    PARTITION kk VALUES LESS THAN ( 'kaka ji' , 2020),
    PARTITION mm VALUES LESS THAN  ( 'kaka ji' , 2021),
    PARTITION zz VALUES LESS THAN  ('kaka ji' , 2022)
);





select partition_name , table_name , table_rows from information_schema.partitions where table_name = 'courseb' ; 










 