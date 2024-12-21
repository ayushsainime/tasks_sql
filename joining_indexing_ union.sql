create database operation  ; 
use operation; 


create table if not exists course(
 course_id int ,  
 course_name varchar(30) , 
 course_desc varchar(30) , 
 course_tag varchar(30) ) ; 
 
 


create table if not exists student (
 student_id BIGINT ,  
 student_name varchar(30) , 
 student_mobile  int  , 
student_course_enroll  varchar(30) ,
student_course_id int 
 )  ;
 
 
 INSERT INTO course2 (course_id, course_name, course_desc, course_tag) VALUES
(1, 'Introduction to Programming', 'Learn basic coding', 'Beginner'),
(2, 'Data Structures', 'Algorithms and structures', 'Intermediate'),
(3, 'Web Development', 'Frontend and Backend', 'Full Stack'),
(4, 'Database Management', 'SQL and NoSQL databases', 'Database'),
(5, 'Machine Learning', 'AI and ML basics', 'AI'),
(6, 'Cloud Computing', 'AWS and Azure', 'Cloud'),
(7, 'Cybersecurity Fundamentals', 'Security basics', 'Security'),
(8, 'Mobile App Development', 'iOS and Android apps', 'Mobile'),
(9, 'Blockchain Technology', 'Crypto and blockchain', 'Blockchain'),
(10, 'Game Development', 'Design and coding games', 'Game Dev'),
(11, 'Networking Essentials', 'LAN, WAN, protocols', 'Networking'),
(12, 'Operating Systems', 'Windows and Linux', 'Systems'),
(13, 'Ethical Hacking', 'Pentesting and tools', 'Security'),
(14, 'Data Analysis', 'Visualization and insights', 'Data'),
(15, 'DevOps Practices', 'CI/CD pipelines', 'DevOps'); 

drop table student ; 

 INSERT INTO student (student_id, student_name, student_mobile, student_course_enroll, student_course_id) VALUES
(301, 'Alice Johnson', 98765432, 'Introduction to Programming', 1),
(302, 'Bob Smith', 98765432, 'Data Structures', 2),
(303, 'Charlie Brown', 9876543, 'Web Development', 3),
(304, 'Diana Prince', 987654, 'Database Management', 4),
(305, 'Ethan Hunt', 987654, 'Machine Learning', 5),
(306, 'Fiona Clarke', 9543215, 'Cloud Computing', 6),
(307, 'George Miller', 6543216, 'Cybersecurity Fundamentals', 7),
(308, 'Hannah Lee', 943217, 'Mobile App Development', 8),
(309, 'Ian Wright', 643218, 'Blockchain Technology', 9),
(310, 'Jackie Chan', 98719, 'Game Development', 10),
(311, 'Kylie Morgan', 983220, 'Networking Essentials', 11),
(312, 'Liam Adams', 43221, 'Operating Systems', 12),
(313, 'Mia Chen', 43222, 'Ethical Hacking', 13);

 select * from course ; 
 
 select c.course_id, c.course_name, c.course_desc , s.student_id , s.student_name, s.student_course_id  from course c 
 inner  join student s  on   c.course_id =  s.student_course_id ; 

 select c.course_id, c.course_name, c.course_desc , s.student_id , s.student_name, s.student_course_id  from course c 
 left join student s  on   c.course_id =  s.student_course_id ; 
 
  select c.course_id, c.course_name, c.course_desc , s.student_id , s.student_name, s.student_course_id  from course c 
right join student s  on   c.course_id =  s.student_course_id ; 

 
  select c.course_id, c.course_name, c.course_desc , s.student_id , s.student_name, s.student_course_id  from course c 
 cross join student s ; 
 
 
 
create table if not exists course1 (
 course_id int ,  
 course_name varchar(30) , 
 course_desc varchar(30) , 
 course_tag varchar(30) , 
 index( course_id) )   ;
 
 show index from course1  ; 
 
 
 
 
create table if not exists course2 (
 course_id int ,  
 course_name varchar(30) , 
 course_desc varchar(30) , 
 course_tag varchar(30) , 
 index( course_id ,course_name ) )  ; 
 
 select * from course2  where  course_id = 1  ;
 ;  
 
 select  course_id  , course_name from course
 union  all
 select  student_id  , student_mobile  from student  ; 
 
 with outcome as ( 
  select c.course_id, c.course_name, c.course_desc , s.student_id , s.student_name, s.student_course_id  from course c 
 cross join student s  ) 
 select course_id, course_name, student_name ,  student_course_id  from outcome where student_course_id =1 ;  

with recursive cte(n) as
( select 1 union all select n+1  from  cte  where  n <5 ) 
select * from cte ; 

 
 
 
 
 
 
 
 
 
 
 
 



