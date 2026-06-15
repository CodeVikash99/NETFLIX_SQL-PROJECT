-- CREATE DATABASE NETFLIX;
-- CREATE TABLE  netproject(
--  show_id	varchar (8),
-- type	VARCHAR (10),
-- title VARCHAR (150),
-- 	director VARCHAR (220),
-- 	casts VARCHAR (1000),
-- 	country	VARCHAR (150),
--     date_added	VARCHAR (50),
--     release_year INT,
-- 	rating	VARCHAR (10),
--     duration VARCHAR (20),
-- 	listed_in VARCHAR (30),
-- 	description VARCHAR (300) );
-- select * from netproject ;
-- select count(*) as total_num from netproject ;
-- different type of movies we have 
-- select distinct type from netproject;
-- 15 business problems 
-- count the number of movies and the numbers of tv shows

-- select type,count(*) as total_content from netproject ;
-- find the most common ratings  for movies and tv shows 

-- select type,max(rating) from netproject group by 1; 
-- select type,rating,count(*), rank() over(partition by type order by count(*)) as ranking from netproject group by 1,2 order by 1,3 ;

-- list all movies released in a specific year (e.g., 2020)
-- select * from netproject where type='movie' and release_year= 2020;

-- find the top 5 countries with the most content on netflix 

-- select unnest(string_to_array(country,',')) as new_country , count(show_id)as total_content from netproject group by 1 order by 2 desc limit 5 ;

-- indentify the longest movie 

-- select * from netproject where type='movie' and duration= (select max(duration ) from netproject) ; 

-- find the content that added in the  last 5 years 

-- select * from netproject where to_date(date_added, 'month ,dd,yyyy' >= current_date - interval '5 years' ;

-- find all the movies/tv shows by director 'rajiv chilaka' and other!

--  select * from netproject where director like '%rajiv chilaka%' ;

-- LIST ALL THE TV SHOWS WITH MORE THAN 5 SEASONS 

-- SELECT * FROM NETPROJECT WHERE TYPE =' TV SHOW' AND  SPLIT_PART(DURATION,' ', 1) :: NUMERIC > 5  ;

-- COUNT THE NUMBER OF THE CONTENT ITEMS IN EACH GENRE 

-- SELECT UNNEST(STRING_TO_ARRAY(LISTED_IN,',')) AS GENRE , COUNT(SHOW_ID)  AS TOTAL_CONTENT FROM NETPROJECT GROUP BY 1;

-- LIST ALL MOVIES THAT ARE DOCUMENTARIES 

-- SELECT * FROM NETPROJECT WHERE LISTED_IN LIKE '%DOCUMENTARIES'; 

-- FIND ALL THE CONTENT WITHOUT A DIRECTOR .

-- SELECT * FROM NETPROJECT WHERE DIRECTOR IS NULL; 

-- FIND HOW MANY MOVIES ACTOR 'SALMAN KHAN' APPEARED IN THE 10 YEARS.

-- SELECT *FROM NETPROJECT WHERE CASTS LIKE '%SALMAN KHAN%' AND RELEASE_YEAR > extract( YEAR FROM curdate()) - 10 ;

-- FIND THE TOP 10 ACTORS WHO HAVE APPEARED  IN THE HIGHEST NUMBER OF MOVIES PRODUCED IN INDIA .

-- SELECT UNNEST(STRING_TO_ARRAY(CASTS,',')) AS ACTORS, COUNT(*) AS TOTAL_CONTENT FROM NETPROJECT WHERE COUNTRY LIKE '%INDIA%' GROUP BY 1 ORDER BY 2 DESC LIMIT 10;



 