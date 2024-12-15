use saless ; 

create table if not exists  task1(
 col_1 int , 
 col_2 int
 )
 
 select * from task1 ; 
 
 insert into task1  values ( 10, 10*10 )  ;

-- procedure to fill in a table named 'task1' a variable var  in one column and its square var* var in the other column 
-- the variable starts  from 1 till 100 

DELIMITER $$
CREATE PROCEDURE taskim() 
BEGIN 
    DECLARE var INT DEFAULT 1;

    gg: LOOP
        -- Check the condition before inserting
        IF var > 100 THEN
            LEAVE gg;
        END IF;

        INSERT INTO task1 (col_1 , col_2 ) VALUES (var  , var*var  );

        SET var = var + 1;
    END LOOP gg;
END $$

call tasking  ;


  -- function to find the diffrence  betweeen today's date and the input date in number of days ;
   
DELIMITER $$ 
create function  date_diff( in_date DATE)
RETURNS INT 
deterministic 
BEGIN 
   RETURN DATEDIFF(curdate() ,in_date) ; 
END $$

select date_diff('2024-08-10') ;

select  dates('2024-11-15') 
  
  -- a function to find out the log of  function to the base 10 
  
delimiter $$ 
CREATE FUNCTION logbase1( kk DOUBLE ) 
RETURNS  DOUBLE
DETERMINISTIC 
BEGIN
   IF kk <= 0 THEN
     RETURN NULL ; 
   END IF ;
   
RETURN  LN(kk) / LN(10) ; 
    
END $$ 

select logbase1(99) 

 
 DELIMITER $$
CREATE FUNCTION logbase(kk DOUBLE)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
    IF kk <= 0 THEN
        RETURN NULL;  -- Return NULL for non-positive inputs
    END IF;

    RETURN LN(kk) / LN(10); -- Calculate log base 10
END $$



   select  count(*)  from task1 ; 
   
   
   
DELIMITER $$
CREATE FUNCTION  counting() 
RETURNS INT 
DETERMINISTIC 
BEGIN  
    declare cc int ;
    select count(*) into cc from task1 ;
    return cc ; 
END $$ 
    

select counting() 


-- dynamic type sqlquery might not work 


DELIMITER $$

CREATE FUNCTION total_records(table_name VARCHAR(255))
RETURNS INT
DETERMINISTIC
BEGIN
    SET @query = CONCAT('SELECT COUNT(*) FROM ', table_name);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    RETURN @query;
END $$

DELIMITER ;


   
   
   
   
   
   
   
   
   
     














        
        
        
        
        
        
        
        
        
        
    
        
 
 
 
 
 
 


