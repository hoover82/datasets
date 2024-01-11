
-- This file contains Oracle syntax (using DUAL) and Snowflake syntax

-- First is Oracle syntax
--   Just below is Snowflake syntax
--    In snowflake, you can always create a table named DUAL, too

-- Data collected by Daniel Stober from information in the public domain
-- Link to the dataset on Dropbox: https://www.dropbox.com/s/t4csjgrfed0y1g8/us_presidents.sql?dl=0
                                   https://www.dropbox.com/s/t4csjgrfed0y1g8/us_presidents.sql?dl=0

--  github link: https://github.com/hoover82/sample_datasets/blob/main/us_presidents.sql

-- *******************************************************************************************************************************
-- *** ORACLE SYNTAX (Uses DUAL)  -- Snowflake version is below 
-- *******************************************************************************************************************************

WITH us_presidents AS (
--US presidents with their birthdates and birthplaces

    SELECT 'GW' key,'George Washington' president, 'Popes Creek, Virginia' birthplace, DATE '1732-02-22' birthdate, DATE '1799-12-14' finaldate FROM DUAL UNION ALL
    SELECT 'JA', 'John Adams'  				, 'Braintree, Massachusetts' 			,	DATE '1735-10-30', 	DATE '1826-07-04'	FROM DUAL UNION ALL
    SELECT 'TJ', 'Thomas Jefferson' 		, 'Goochland County, Virginia' 			, 	DATE '1743-04-13', 	DATE '1826-07-04'	FROM DUAL UNION ALL
    SELECT 'MAD','James Madison'    		, 'Port Conway, Virginia' 				, 	DATE '1751-03-16', 	DATE '1836-06-28'	FROM DUAL UNION ALL
    SELECT 'MON','James Monroe'     		, 'Westmoreland County, Virginia' 		, 	DATE '1758-04-28', 	DATE '1831-07-04'	FROM DUAL UNION ALL
    SELECT 'JQA','John Q Adams'     		, 'Braintree, Massachusetts' 			, 	DATE '1767-07-11', 	DATE '1848-02-23'	FROM DUAL UNION ALL
    SELECT 'HICK','Andrew Jackson'  		, 'Waxhaw, North Carolina' 				, 	DATE '1767-03-15', 	DATE '1845-06-08'	FROM DUAL UNION ALL
    SELECT 'MVB','Martin Van Buren' 		, 'Kinderhook, New York' 				, 	DATE '1782-12-05', 	DATE '1862-07-24'	FROM DUAL UNION ALL
    SELECT 'WHH','William Henry Harrison'	, 'Charles City County, Virginia' 		, 	DATE '1773-02-09', 	DATE '1841-04-04'	FROM DUAL UNION ALL
    SELECT 'JT' ,'John Tyler' 				, 'Charles City County, Virginia' 		, 	DATE '1790-03-29', 	DATE '1862-01-18'	FROM DUAL UNION ALL
    SELECT 'JKP','James Polk' 				, 'Mecklenburg County, North Carolina' 	, 	DATE '1795-11-02', 	DATE '1849-06-15'	FROM DUAL UNION ALL
    SELECT 'ZT' ,'Zachary Taylor'   		, 'Orange County, Virginia' 			, 	DATE '1784-11-24', 	DATE '1850-07-09'	FROM DUAL UNION ALL
    SELECT 'MF' ,'Millard Fillmore' 		, 'Cayuga County, New York' 			, 	DATE '1800-01-07', 	DATE '1874-03-08'	FROM DUAL UNION ALL
    SELECT 'FB' ,'Franklin Pierce'  		, 'Hillsborough, New Hampshire' 		, 	DATE '1804-11-23', 	DATE '1869-10-08'	FROM DUAL UNION ALL
    SELECT 'JB' ,'James Buchanan'   		, 'Cove Gap, Pennsylvania'  			, 	DATE '1791-04-23', 	DATE '1868-06-01'	FROM DUAL UNION ALL
    SELECT 'ABE','Abraham Lincoln'  		, 'Hardin County, Kentucky' 			, 	DATE '1809-02-12', 	DATE '1865-04-15'	FROM DUAL UNION ALL
    SELECT 'AJ' ,'Andrew Johnson'   		, 'Raleigh, North Carolina' 			, 	DATE '1808-12-29', 	DATE '1875-07-31'	FROM DUAL UNION ALL
    SELECT 'USG','Ulysses S Grant'  		, 'Point Pleasant, Ohio' 				, 	DATE '1822-04-27', 	DATE '1885-07-23'	FROM DUAL UNION ALL
    SELECT 'RBH','Rutherford B Hayes' 		, 'Delaware, Ohio'       				, 	DATE '1822-10-04', 	DATE '1893-01-17'	FROM DUAL UNION ALL
    SELECT 'GAR','James Garfield' 			, 'Moreland Hills, Ohio' 				, 	DATE '1831-11-19', 	DATE '1881-09-19'	FROM DUAL UNION ALL
    SELECT 'CAA','Chester A Arthur' 		, 'Fairfield, Vermont' 					, 	DATE '1829-10-05', 	DATE '1886-11-18'	FROM DUAL UNION ALL
    SELECT 'CLE','Grover Cleveland' 		, 'Caldwell, New Jersey' 				, 	DATE '1837-03-18', 	DATE '1908-06-24'	FROM DUAL UNION ALL
    SELECT 'BH' ,'Benjamin Harrison' 		, 'North Bend, Ohio' 					, 	DATE '1833-08-20', 	DATE '1901-03-13'	FROM DUAL UNION ALL                                                                                                                            	
    SELECT 'MCK','William McKinley' 		, 'Niles, Ohio' 						, 	DATE '1843-01-29',	DATE '1901-09-14'	FROM DUAL UNION ALL
    SELECT 'ROO','Theodore Roosevelt' 		, 'New York, New York' 					, 	DATE '1858-10-27',	DATE '1919-01-06'	FROM DUAL UNION ALL
    SELECT 'WHT','William H Taft' 			, 'Cincinnati, Ohio' 					, 	DATE '1857-09-15',	DATE '1930-03-08'	FROM DUAL UNION ALL
    SELECT 'WW', 'Woodrow Wilson' 			, 'Staunton, Virginia' 					, 	DATE '1856-12-28',	DATE '1924-02-03'	FROM DUAL UNION ALL
    SELECT 'WGH','Warren G Harding' 		, 'Corsica near Blooming Grove, Ohio' 	, 	DATE '1865-11-02',	DATE '1923-08-02'	FROM DUAL UNION ALL
    SELECT 'CC' ,'Calvin Coolidge' 			, 'Plymouth, Vermont' 					, 	DATE '1872-07-04', 	DATE '1933-01-05'	FROM DUAL UNION ALL
    SELECT 'HH' ,'Herbert Hoover' 			, 'West Branch, Iowa' 					, 	DATE '1874-08-10', 	DATE '1964-10-20'	FROM DUAL UNION ALL
    SELECT 'FDR','Franklin D Roosevelt' 	, 'Hyde Park, New York' 				, 	DATE '1882-01-30', 	DATE '1945-04-12'	FROM DUAL UNION ALL
    SELECT 'HST','Harry S Truman' 			, 'Lamar, Missouri' 					, 	DATE '1884-05-08', 	DATE '1972-12-26'	FROM DUAL UNION ALL
    SELECT 'IKE','Dwight D Eisenhower' 		, 'Denison, Texas' 						, 	DATE '1890-10-14', 	DATE '1969-03-28'	FROM DUAL UNION ALL
    SELECT 'JFK','John F Kennedy' 			, 'Brookline, Massachusetts' 			, 	DATE '1917-05-29', 	DATE '1963-11-22'	FROM DUAL UNION ALL
    SELECT 'LBJ','Lyndon B Johnson' 		, 'Stonewall, Texas' 					, 	DATE '1908-08-27', 	DATE '1973-01-22'	FROM DUAL UNION ALL
    SELECT 'RMN','Richard M Nixon' 			, 'Yorba Linda, California' 			, 	DATE '1913-01-09', 	DATE '1994-04-22'	FROM DUAL UNION ALL
    SELECT 'GRF','Gerald R Ford' 			, 'Omaha, Nebraska' 					, 	DATE '1913-07-14', 	DATE '2006-12-26'	FROM DUAL UNION ALL
    SELECT 'JEC','Jimmy Carter' 			, 'Plains, Georgia' 					, 	DATE '1924-10-01', 	NULL 				FROM DUAL UNION ALL
    SELECT 'RWR','Ronald Reagan' 			, 'Tampico, Illinois' 					, 	DATE '1911-02-06', 	DATE '2004-06-05'	FROM DUAL UNION ALL
    SELECT 'HW' ,'George HW Bush' 			, 'Milton, Massachusetts' 				, 	DATE '1924-06-12', 	DATE '2018-11-30'	FROM DUAL UNION ALL
    SELECT 'WJC','William J Clinton' 		, 'Hope, Arkansas' 						, 	DATE '1946-08-19', 	NULL				FROM DUAL UNION ALL
    SELECT 'W'  ,'George W Bush'  			, 'New Haven, Connecticut' 				, 	DATE '1946-07-06', 	NULL				FROM DUAL UNION ALL
    SELECT 'BHO','Barack Obama'   			, 'Honolulu, Hawaii' 					, 	DATE '1961-08-04',  NULL				FROM DUAL UNION ALL 
    SELECT 'DJT','Donald J Trump' 			, 'New York, New York' 					, 	DATE '1946-06-14',  NULL				FROM DUAL UNION ALL
    SELECT 'BID','Joseph R Biden' 			, 'Scranton, Pennsylvania' 				, 	DATE '1942-11-20',	NULL				FROM DUAL 
	)
SELECT president, birthplace, birthdate, finaldate FROM us_presidents 
;

WITH terms AS (
	SELECT 'GW' key, 'George Washington' name , DATE '1789-04-30' term_began, DATE '1797-03-04' term_end, 'Federalist' party FROM DUAL
    UNION ALL SELECT 'JA',  'John Adams'		    , DATE '1797-03-04', DATE '1801-03-04', 'Federalist' 		          FROM DUAL	
    UNION ALL SELECT 'TJ',  'Thomas Jefferson'		, DATE '1801-03-04', DATE '1809-03-04', 'Democratic-Republican'     FROM DUAL
    UNION ALL SELECT 'MAD', 'James Madison'			, DATE '1809-03-04', DATE '1817-03-04', 'Democratic-Republican'     FROM DUAL
    UNION ALL SELECT 'MON', 'James Monroe'			, DATE '1817-03-04', DATE '1825-03-04', 'Democratic-Republican'     FROM DUAL
    UNION ALL SELECT 'JQA', 'John Q. Adams'			, DATE '1825-03-04', DATE '1829-03-04', 'Democratic-Republican'     FROM DUAL
	UNION ALL SELECT 'AJ',  'Andrew Jackson'		, DATE '1829-03-04', DATE '1837-03-04', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'MVB', 'Martin Van Buren'		, DATE '1837-03-04', DATE '1841-03-04', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'WHH', 'William Harrison'		, DATE '1841-03-04', DATE '1841-04-04', 'Whig' 				      FROM DUAL
    UNION ALL SELECT 'JT',  'John Tyler'			, DATE '1841-03-04', DATE '1845-03-04', 'Whig' 				      FROM DUAL          
    UNION ALL SELECT 'JKP', 'James Polk'			, DATE '1845-03-04', DATE '1849-03-04', 'Democrat' 			      FROM DUAL
	UNION ALL SELECT 'ZT',  'Zachary Taylor'		, DATE '1849-03-04', DATE '1850-07-09', 'Whig' 				      FROM DUAL
    UNION ALL SELECT 'MF',  'Millard Fillmore'		, DATE '1850-07-09', DATE '1853-03-04', 'Whig' 				      FROM DUAL
    UNION ALL SELECT 'FB',  'Franklin Pierce'		, DATE '1853-03-04', DATE	'1857-03-04', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'JB',  'James Buchanan'		, DATE '1857-03-04', DATE	'1861-03-04', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'ABE', 'Abraham Lincoln'		, DATE '1861-03-04', DATE	'1865-04-15', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'AJ',  'Andrew Johnson'		, DATE '1865-04-15', DATE	'1869-03-04', 'National Union' 		      FROM DUAL
    UNION ALL SELECT 'USG', 'Ulysses S. Grant'		, DATE '1869-03-04', DATE	'1877-03-04', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'RBH', 'Rutherford B. Hayes'	, DATE '1877-03-04', DATE	'1881-03-04', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'GAR', 'James Garfield'		, DATE '1881-03-04', DATE	'1881-09-19', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'CAA', 'Chester A. Arthur'		, DATE '1881-09-19', DATE '1885-03-04', 'Republican' 			      FROM DUAL
	UNION ALL SELECT 'CLE', 'Grover Cleveland'		, DATE '1885-03-04', DATE '1889-03-04', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'BH',  'Benjamin Harrison'		, DATE '1889-03-04', DATE '1893-03-04', 'Republican' 			      FROM DUAL
	UNION ALL SELECT 'CLE', 'Grover Cleveland'		, DATE '1893-03-04', DATE '1897-03-04', 'Democrat' 			      FROM DUAL
 	UNION ALL SELECT 'MCK', 'William McKinley'		, DATE '1897-03-04', DATE '1901-09-14', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'ROO', 'Theodore  Roosevelt'	, DATE '1901-09-14', DATE '1909-03-04', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'WHT', 'William Taft'			, DATE '1921-03-04', DATE '1923-08-02', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'WW',  'Woodrow Wilson'		, DATE '1913-03-04', DATE '1921-03-04', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'WGH', 'Warren Harding'		, DATE '1909-03-04', DATE '1913-03-04', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'CC',  'Calvin Coolidge'		, DATE '1923-08-02', DATE '1929-03-04', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'HH',  'Herbert Hoover'		, DATE '1929-03-04', DATE '1933-03-04', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'FDR', 'Franklin Roosevelt'	, DATE '1933-03-04', DATE '1945-04-12', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'HST', 'Harry Truman'			, DATE '1945-04-12', DATE '1953-01-20', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'IKE', 'Dwight Eisenhower'		, DATE '1953-01-20', DATE	'1961-01-20', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'JFK', 'John F. Kennedy'		, DATE '1961-01-20', DATE	'1963-11-22', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'LBJ', 'Lyndon Johnson'		, DATE '1963-11-22', DATE '1969-01-20', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'RMN', 'Richard Nixon'			, DATE '1969-01-20', DATE	'1974-08-09', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'GRF', 'Gerald Ford'			, DATE '1974-08-09', DATE	'1977-01-20', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'JEC', 'James Carter'			, DATE '1977-01-20', DATE	'1981-01-20', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'RWR', 'Ronald Reagan'			, DATE '1981-01-20', DATE	'1989-01-20', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'HW',  'George Bush'			, DATE '1989-01-20', DATE	'1993-01-20', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'WJC', 'Wiliam Clinton'		, DATE '1993-01-20', DATE	'2001-01-20', 'Democrat'	 			  FROM DUAL
    UNION ALL SELECT 'W',   'George W. Bush'		, DATE '2001-01-20', DATE	'2009-01-20', 'Republican' 			      FROM DUAL
    UNION ALL SELECT 'BHO', 'Barack Obama'			, DATE '2009-01-20', DATE	'2017-01-20', 'Democrat' 			      FROM DUAL
    UNION ALL SELECT 'DJT', 'Donald Trump'			, DATE '2017-01-20', DATE	'2021-01-20', 'Republican'                FROM DUAL
    UNION ALL SELECT 'BID', 'Joe Biden'				, DATE '2021-01-20', NULL	            , 'Democrat' 	              FROM DUAL
) SELECT * FROM terms;


-- *******************************************************************************************************************************
-- *** SNOWFLAKE VERSION 
-- *******************************************************************************************************************************

-- Snowflake version (no DUAL)
WITH us_presidents AS (
--US presidents with their birthdates and birthplaces
-- I've used it for parsing demonstrations
-- Data collected by Daniel Stober from information in the public domain
-- Link to the dataset on Dropbox: https://www.dropbox.com/s/t4csjgrfed0y1g8/us_presidents.sql?dl=0
WITH us_presidents AS (
--US presidents with their birthdates and birthplaces

    SELECT 'GW' key,'George Washington' president, 'Popes Creek, Virginia' birthplace, DATE '1732-02-22' birthdate, DATE '1799-12-14' finaldate UNION ALL
    SELECT 'JA', 'John Adams'  				, 'Braintree, Massachusetts' 			,	DATE '1735-10-30', 	DATE '1826-07-04'	UNION ALL
    SELECT 'TJ', 'Thomas Jefferson' 		, 'Goochland County, Virginia' 			, 	DATE '1743-04-13', 	DATE '1826-07-04'	UNION ALL
0    SELECT 'MAD','James Madison'    		, 'Port Conway, Virginia' 				, 	DATE '1751-03-16', 	DATE '1836-06-28'	UNION ALL
    SELECT 'MON','James Monroe'     		, 'Westmoreland County, Virginia' 		, 	DATE '1758-04-28', 	DATE '1831-07-04'	UNION ALL
    SELECT 'JQA','John Q Adams'     		, 'Braintree, Massachusetts' 			, 	DATE '1767-07-11', 	DATE '1848-02-23'	UNION ALL
    SELECT 'HICK','Andrew Jackson'  		, 'Waxhaw, North Carolina' 				, 	DATE '1767-03-15', 	DATE '1845-06-08'	UNION ALL
    SELECT 'MVB','Martin Van Buren' 		, 'Kinderhook, New York' 				, 	DATE '1782-12-05', 	DATE '1862-07-24'	UNION ALL
    SELECT 'WHH','William Henry Harrison'	, 'Charles City County, Virginia' 		, 	DATE '1773-02-09', 	DATE '1841-04-04'	UNION ALL
    SELECT 'JT' ,'John Tyler' 				, 'Charles City County, Virginia' 		, 	DATE '1790-03-29', 	DATE '1862-01-18'	UNION ALL
    SELECT 'JKP','James Polk' 				, 'Mecklenburg County, North Carolina' 	, 	DATE '1795-11-02', 	DATE '1849-06-15'	UNION ALL
    SELECT 'ZT' ,'Zachary Taylor'   		, 'Orange County, Virginia' 			, 	DATE '1784-11-24', 	DATE '1850-07-09'	UNION ALL
    SELECT 'MF' ,'Millard Fillmore' 		, 'Cayuga County, New York' 			, 	DATE '1800-01-07', 	DATE '1874-03-08'	UNION ALL
    SELECT 'FB' ,'Franklin Pierce'  		, 'Hillsborough, New Hampshire' 		, 	DATE '1804-11-23', 	DATE '1869-10-08'	UNION ALL
    SELECT 'JB' ,'James Buchanan'   		, 'Cove Gap, Pennsylvania'  			, 	DATE '1791-04-23', 	DATE '1868-06-01'	UNION ALL
    SELECT 'ABE','Abraham Lincoln'  		, 'Hardin County, Kentucky' 			, 	DATE '1809-02-12', 	DATE '1865-04-15'	UNION ALL
    SELECT 'AJ' ,'Andrew Johnson'   		, 'Raleigh, North Carolina' 			, 	DATE '1808-12-29', 	DATE '1875-07-31'	UNION ALL
    SELECT 'USG','Ulysses S Grant'  		, 'Point Pleasant, Ohio' 				, 	DATE '1822-04-27', 	DATE '1885-07-23'	UNION ALL
    SELECT 'RBH','Rutherford B Hayes' 		, 'Delaware, Ohio'       				, 	DATE '1822-10-04', 	DATE '1893-01-17'	UNION ALL
    SELECT 'GAR','James Garfield' 			, 'Moreland Hills, Ohio' 				, 	DATE '1831-11-19', 	DATE '1881-09-19'	UNION ALL
    SELECT 'CAA','Chester A Arthur' 		, 'Fairfield, Vermont' 					, 	DATE '1829-10-05', 	DATE '1886-11-18'	UNION ALL
    SELECT 'CLE','Grover Cleveland' 		, 'Caldwell, New Jersey' 				, 	DATE '1837-03-18', 	DATE '1908-06-24'	UNION ALL
    SELECT 'BH' ,'Benjamin Harrison' 		, 'North Bend, Ohio' 					, 	DATE '1833-08-20', 	DATE '1901-03-13'	UNION ALL
    SELECT 'MCK','William McKinley' 		, 'Niles, Ohio' 						, 	DATE '1843-01-29',	DATE '1901-09-14'	UNION ALL
    SELECT 'ROO','Theodore Roosevelt' 		, 'New York, New York' 					, 	DATE '1858-10-27',	DATE '1919-01-06'	UNION ALL
    SELECT 'WHT','William H Taft' 			, 'Cincinnati, Ohio' 					, 	DATE '1857-09-15',	DATE '1930-03-08'	UNION ALL
    SELECT 'WW', 'Woodrow Wilson' 			, 'Staunton, Virginia' 					, 	DATE '1856-12-28',	DATE '1924-02-03'	UNION ALL
    SELECT 'WGH','Warren G Harding' 		, 'Corsica near Blooming Grove, Ohio' 	, 	DATE '1865-11-02',	DATE '1923-08-02'	UNION ALL
    SELECT 'CC' ,'Calvin Coolidge' 			, 'Plymouth, Vermont' 					, 	DATE '1872-07-04', 	DATE '1933-01-05'	UNION ALL
    SELECT 'HH' ,'Herbert Hoover' 			, 'West Branch, Iowa' 					, 	DATE '1874-08-10', 	DATE '1964-10-20'	UNION ALL
    SELECT 'FDR','Franklin D Roosevelt' 	, 'Hyde Park, New York' 				, 	DATE '1882-01-30', 	DATE '1945-04-12'	UNION ALL
    SELECT 'HST','Harry S Truman' 			, 'Lamar, Missouri' 					, 	DATE '1884-05-08', 	DATE '1972-12-26'	UNION ALL
    SELECT 'IKE','Dwight D Eisenhower' 		, 'Denison, Texas' 						, 	DATE '1890-10-14', 	DATE '1969-03-28'	UNION ALL
    SELECT 'JFK','John F Kennedy' 			, 'Brookline, Massachusetts' 			, 	DATE '1917-05-29', 	DATE '1963-11-22'	UNION ALL
    SELECT 'LBJ','Lyndon B Johnson' 		, 'Stonewall, Texas' 					, 	DATE '1908-08-27', 	DATE '1973-01-22'	UNION ALL
    SELECT 'RMN','Richard M Nixon' 			, 'Yorba Linda, California' 			, 	DATE '1913-01-09', 	DATE '1994-04-22'	UNION ALL
    SELECT 'GRF','Gerald R Ford' 			, 'Omaha, Nebraska' 					, 	DATE '1913-07-14', 	DATE '2006-12-26'	UNION ALL
    SELECT 'JEC','Jimmy Carter' 			, 'Plains, Georgia' 					, 	DATE '1924-10-01', 	NULL 				UNION ALL
    SELECT 'RWR','Ronald Reagan' 			, 'Tampico, Illinois' 					, 	DATE '1911-02-06', 	DATE '2004-06-05'	UNION ALL
    SELECT 'HW' ,'George HW Bush' 			, 'Milton, Massachusetts' 				, 	DATE '1924-06-12', 	DATE '2018-11-30'	UNION ALL
    SELECT 'WJC','William J Clinton' 		, 'Hope, Arkansas' 						, 	DATE '1946-08-19', 	NULL				UNION ALL
    SELECT 'W'  ,'George W Bush'  			, 'New Haven, Connecticut' 				, 	DATE '1946-07-06', 	NULL				UNION ALL
    SELECT 'BHO','Barack Obama'   			, 'Honolulu, Hawaii' 					, 	DATE '1961-08-04',  NULL				UNION ALL 
    SELECT 'DJT','Donald J Trump' 			, 'New York, New York' 					, 	DATE '1946-06-14',  NULL				UNION ALL
    SELECT 'BID','Joseph R Biden' 			, 'Scranton, Pennsylvania' 				, 	DATE '1942-11-20',	NULL				

	)
SELECT key,president, birthplace, birthdate, finaldate FROM us_presidents 
;


WITH terms AS (

	SELECT 'GW' key, 'George Washington' name ,DATE '1789-04-30' term_began, DATE '1797-03-04' term_end, 'Federalist' party 
    UNION ALL SELECT 'JA',  'John Adams'			, DATE '1797-03-04', DATE '1801-03-04', 'Federalist' 		          	
    UNION ALL SELECT 'TJ',  'Thomas Jefferson'		, DATE '1801-03-04', DATE '1809-03-04', 'Democratic-Republican'     
    UNION ALL SELECT 'MAD', 'James Madison'			, DATE '1809-03-04', DATE '1817-03-04', 'Democratic-Republican'     
    UNION ALL SELECT 'MON', 'James Monroe'			, DATE '1817-03-04', DATE '1825-03-04', 'Democratic-Republican'     
    UNION ALL SELECT 'JQA', 'John Q. Adams'			, DATE '1825-03-04', DATE '1829-03-04', 'Democratic-Republican'     
	UNION ALL SELECT 'AJ',  'Andrew Jackson'		, DATE '1829-03-04', DATE '1837-03-04', 'Democrat' 			      
    UNION ALL SELECT 'MVB', 'Martin Van Buren'		, DATE '1837-03-04', DATE '1841-03-04', 'Democrat' 			      
    UNION ALL SELECT 'WHH', 'William Harrison'		, DATE '1841-03-04', DATE '1841-04-04', 'Whig' 				      
    UNION ALL SELECT 'JT',  'John Tyler'			, DATE '1841-03-04', DATE '1845-03-04', 'Whig' 				                
    UNION ALL SELECT 'JKP', 'James Polk'			, DATE '1845-03-04', DATE '1849-03-04', 'Democrat' 			      
	UNION ALL SELECT 'ZT',  'Zachary Taylor'		, DATE '1849-03-04', DATE '1850-07-09', 'Whig' 				      
    UNION ALL SELECT 'MF',  'Millard Fillmore'		, DATE '1850-07-09', DATE '1853-03-04', 'Whig' 				      
    UNION ALL SELECT 'FB',  'Franklin Pierce'		, DATE '1853-03-04', DATE	'1857-03-04', 'Democrat' 			      
    UNION ALL SELECT 'JB',  'James Buchanan'		, DATE '1857-03-04', DATE	'1861-03-04', 'Democrat' 			      
    UNION ALL SELECT 'ABE', 'Abraham Lincoln'		, DATE '1861-03-04', DATE	'1865-04-15', 'Republican' 			      
    UNION ALL SELECT 'AJ',  'Andrew Johnson'		, DATE '1865-04-15', DATE	'1869-03-04', 'National Union' 		      
    UNION ALL SELECT 'USG', 'Ulysses S. Grant'		, DATE '1869-03-04', DATE	'1877-03-04', 'Republican' 			      
    UNION ALL SELECT 'RBH', 'Rutherford B. Hayes'	, DATE '1877-03-04', DATE	'1881-03-04', 'Republican' 			      
    UNION ALL SELECT 'GAR', 'James Garfield'		, DATE '1881-03-04', DATE	'1881-09-19', 'Republican' 			      
    UNION ALL SELECT 'CAA', 'Chester A. Arthur'		, DATE '1881-09-19', DATE '1885-03-04', 'Republican' 			      
	UNION ALL SELECT 'CLE', 'Grover Cleveland'		, DATE '1885-03-04', DATE '1889-03-04', 'Democrat' 			      
    UNION ALL SELECT 'BH',  'Benjamin Harrison'		, DATE '1889-03-04', DATE '1893-03-04', 'Republican' 			      
	UNION ALL SELECT 'CLE', 'Grover Cleveland'		, DATE '1893-03-04', DATE '1897-03-04', 'Democrat' 			      
 	UNION ALL SELECT 'MCK', 'William McKinley'		, DATE '1897-03-04', DATE '1901-09-14', 'Republican' 			      
    UNION ALL SELECT 'ROO', 'Theodore  Roosevelt'	, DATE '1901-09-14', DATE '1909-03-04', 'Republican' 			      
    UNION ALL SELECT 'WHT', 'William Taft'			, DATE '1921-03-04', DATE '1923-08-02', 'Republican' 			      
    UNION ALL SELECT 'WW',  'Woodrow Wilson'		, DATE '1913-03-04', DATE '1921-03-04', 'Democrat' 			      
    UNION ALL SELECT 'WGH', 'Warren Harding'		, DATE '1909-03-04', DATE '1913-03-04', 'Republican' 			      
    UNION ALL SELECT 'CC',  'Calvin Coolidge'		, DATE '1923-08-02', DATE '1929-03-04', 'Republican' 			      
    UNION ALL SELECT 'HH',  'Herbert Hoover'		, DATE '1929-03-04', DATE '1933-03-04', 'Republican' 			      
    UNION ALL SELECT 'FDR', 'Franklin Roosevelt'	, DATE '1933-03-04', DATE '1945-04-12', 'Democrat' 			      
    UNION ALL SELECT 'HST', 'Harry Truman'			, DATE '1945-04-12', DATE '1953-01-20', 'Democrat' 			      
    UNION ALL SELECT 'IKE', 'Dwight Eisenhower'		, DATE '1953-01-20', DATE	'1961-01-20', 'Republican' 			      
    UNION ALL SELECT 'JFK', 'John F. Kennedy'		, DATE '1961-01-20', DATE	'1963-11-22', 'Democrat' 			      
    UNION ALL SELECT 'LBJ', 'Lyndon Johnson'		, DATE '1963-11-22', DATE '1969-01-20', 'Democrat' 			      
    UNION ALL SELECT 'RMN', 'Richard Nixon'			, DATE '1969-01-20', DATE	'1974-08-09', 'Republican' 			      
    UNION ALL SELECT 'GRF', 'Gerald Ford'			, DATE '1974-08-09', DATE	'1977-01-20', 'Republican' 			      
    UNION ALL SELECT 'JEC', 'James Carter'			, DATE '1977-01-20', DATE	'1981-01-20', 'Democrat' 			      
    UNION ALL SELECT 'RWR', 'Ronald Reagan'			, DATE '1981-01-20', DATE	'1989-01-20', 'Republican' 			      
    UNION ALL SELECT 'HW',  'George Bush'			, DATE '1989-01-20', DATE	'1993-01-20', 'Republican' 			      
    UNION ALL SELECT 'WJC', 'Wiliam Clinton'		, DATE '1993-01-20', DATE	'2001-01-20', 'Democrat'	 			  
    UNION ALL SELECT 'W',   'George W. Bush'			, DATE '2001-01-20', DATE	'2009-01-20', 'Republican' 			      
    UNION ALL SELECT 'BHO', 'Barack Obama'			, DATE '2009-01-20', DATE	'2017-01-20', 'Democrat' 			      
    UNION ALL SELECT 'DJT', 'Donald Trump'			, DATE '2017-01-20', DATE	'2021-01-20', 'Republican'                
    UNION ALL SELECT 'BID', 'Joe Biden'				, DATE '2021-01-20', NULL	            , 'Democrat' 	              

) SELECT * FROM terms;




/* I used this to build a dataset with a couple duplicates in it for my YouTube snowflake duplicates video  

    https://www.youtube.com/watch?v=6b6QLq8JhSY

*/


SELECT 
  CASE WHEN array_size ( split ( president, ' ')) = 3 
       AND split ( president, ' ')[1] != 'Van'  
       THEN split ( president, ' ') [0] || ' ' || split ( president, ' ')[1]
      ELSE split ( president, ' ') [0] END as first_name
,  CASE WHEN split ( president, ' ')[1] = 'Van'
            THEN split ( president, ' ')[1] || ' ' || split ( name, ' ')[2]
            ELSE split_part ( president, ' ', -1) END AS last_name           
--   , p.key AS president_key
     , party
     , term_began
     , term_end
     , birthplace 
FROM terms t
    JOIN us_presidents p ON t.key = p.key
UNION ALL
SELECT 'Calvin','Coolidge','Republican','2023-08-02','2029-03-04','Plymouth, Vermont'
UNION ALL
SELECT 'Zachary','Taylor','Whig','1849-03-04','1850-07-09','Orange County, Virginia'
;




/*
Challenges:

EASY:

Put the presidents in order by date of birth

Put these presidents in alphabetical order by last name


Who is first president born in 19th Century?

Who is first Republican president?

Who is last Whig president?

Regexp to show how to select presidents with a middle initial

Assign the ordinal numbering to the presidents,ie: Obama is 44th president

HARDER:


Try to join with president name -- some records will fall out

Demonstrate passing dates with left join

Any presidents with the same birthday?
	of course, there are three presidents with the same death date

Put the presidents in order by birhday (ignoring the year)

Put the presidents in order by last name, then first name

Which president comes first/last alphabetically (last name, first name)

List the states of birth, and the count of how many presidents were born in each state

SELECT SUBSTR ( birthplace, INSTR ( birthplace, ',') + 1, 99) birthstate, COUNT(*)
 FROM dta
GROUP BY SUBSTR ( birthplace, INSTR ( birthplace, ',') + 1, 99) 
ORDER BY 2 DESC


DIFFICULT

Find the two presidents who were born closest together (fewest number of days between their dates of birth ) Did anybody notice that Cleveland is in the list twice?

What is the longest period of time with no president born (probably best to ignore the years since 1961, but you could leave that off and see who handles it

Visualizations
Track age of presidents at inauguration(s) and end of term.
Also, lone bar to track the year of birth of each president and its steady (almost) progression forward.

*/
