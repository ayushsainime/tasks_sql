create database if not exists dress_data ;
use dress_data ; 

create table if not exists dress ( 
     ` Dress_ID` varchar(30) ,
	`Style` varchar(30), 
	`Price` varchar(30), 
	`Rating` varchar(30), 
	`Size`	varchar(30), 
	`Season` varchar(30), 
	`NeckLine`	varchar(30), 
	`SleeveLength` varchar(30), 
	`waiseline` varchar(30), 
	`Material` varchar(30), 
	`FabricType` varchar(30), 
	`Decoration` varchar(30), 
	`Pattern Type` varchar(30), 
	`Recommendation` varchar(30)
    );
    
    select * from dress ;

    
LOAD DATA INFILE   
'D:\DOWNLOADS/AttributeDataSet.csv' 
into table dress  
FIELDS TERMINATED by ',' 
ENCLOSED by "'" 
lines terminated by '\n' 
IGNORE 1 ROWS ;

select * from dress 



    
    
    
    




