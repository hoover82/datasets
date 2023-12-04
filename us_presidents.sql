
-- This file contains Oracle syntax (uses DUAL) and Snowflake syntax
-- First is Oracle syntax
--   Just below is Snowflake syntax
--    In snowflake, you can always create a table named DUAL, too


WITH us_presidents AS (
--US presidents with their birthdates and birthplaces
-- I've used it for parsing demonstrations
-- Data collected by Daniel Stober f rom information in the public domain
-- Link to the dataset on Dropbox: https://www.dropbox.com/s/t4csjgrfed0y1g8/us_presidents.sql?dl=0
    SELECT 1 term_order, 'George Washington' president, 'Popes Creek, Virginia' birthplace, DATE '1732-02-22' birthdate FROM DUAL UNION ALL
    SELECT 2 term_order, 'John Adams' president, 'Braintree, Massachusetts' birthplace, DATE '1735-10-30' birthdate FROM DUAL UNION ALL
    SELECT 3 term_order, 'Thomas Jefferson' president, 'Goochland County, Virginia' birthplace, DATE '1743-04-13' birthdate FROM DUAL UNION ALL
    SELECT 4 term_order, 'James Madison' president, 'Port Conway, Virginia' birthplace, DATE '1751-03-16' birthdate FROM DUAL UNION ALL
    SELECT 5 term_order, 'James Monroe' president, 'Westmoreland County, Virginia' birthplace, DATE '1758-04-28' birthdate FROM DUAL UNION ALL
    SELECT 6 term_order, 'John Q Adams' president, 'Braintree, Massachusetts' birthplace, DATE '1767-07-11' birthdate FROM DUAL UNION ALL
    SELECT 7 term_order, 'Andrew Jackson' president, 'Waxhaw, North Carolina' birthplace, DATE '1767-03-15' birthdate FROM DUAL UNION ALL
    SELECT 8 term_order, 'Martin Van Buren' president, 'Kinderhook, New York' birthplace, DATE '1782-12-05' birthdate FROM DUAL UNION ALL
    SELECT 9 term_order, 'William Henry Harrison' president, 'Charles City County, Virginia' birthplace, DATE '1773-02-09' birthdate FROM DUAL UNION ALL
    SELECT 10 term_order, 'John Tyler' president, 'Charles City County, Virginia' birthplace, DATE '1790-03-29' birthdate FROM DUAL UNION ALL
    SELECT 11 term_order, 'James Polk' president, 'Mecklenburg County, North Carolina' birthplace, DATE '1795-11-02' birthdate FROM DUAL UNION ALL
    SELECT 12 term_order, 'Zachary Taylor' president, 'Orange County, Virginia' birthplace, DATE '1784-11-24' birthdate FROM DUAL UNION ALL
    SELECT 13 term_order, 'Millard Fillmore' president, 'Cayuga County, New York' birthplace, DATE '1800-01-07' birthdate FROM DUAL UNION ALL
    SELECT 14 term_order, 'Franklin Pierce' president, 'Hillsborough, New Hampshire' birthplace, DATE '1804-11-23' birthdate FROM DUAL UNION ALL
    SELECT 15 term_order, 'James Buchanan' president, 'Cove Gap, Pennsylvania' birthplace, DATE '1791-04-23' birthdate FROM DUAL UNION ALL
    SELECT 16 term_order, 'Abraham Lincoln' president, 'Hardin County, Kentucky' birthplace, DATE '1809-02-12' birthdate FROM DUAL UNION ALL
    SELECT 17 term_order, 'Andrew Johnson' president, 'Raleigh, North Carolina' birthplace, DATE '1808-12-29' birthdate FROM DUAL UNION ALL
    SELECT 18 term_order, 'Ulysses S Grant' president, 'Point Pleasant, Ohio' birthplace, DATE '1822-04-27' birthdate FROM DUAL UNION ALL
    SELECT 19 term_order, 'Rutherford B Hayes' president, 'Delaware, Ohio' birthplace, DATE '1822-10-04' birthdate FROM DUAL UNION ALL
    SELECT 20 term_order, 'James Garfield' president, 'Moreland Hills, Ohio' birthplace, DATE '1831-11-19' birthdate FROM DUAL UNION ALL
    SELECT 21 term_order, 'Chester A Arthur' president, 'Fairfield, Vermont' birthplace, DATE '1829-10-05' birthdate FROM DUAL UNION ALL
    SELECT 22 term_order, 'Grover Cleveland' president, 'Caldwell, New Jersey' birthplace, DATE '1837-03-18' birthdate FROM DUAL UNION ALL
    SELECT 23 term_order, 'Benjamin Harrison' president, 'North Bend, Ohio' birthplace, DATE '1833-08-20' birthdate FROM DUAL UNION ALL
    SELECT 24 term_order, 'Grover Cleveland' president, 'Caldwell, New Jersey' birthplace, DATE '1837-03-18' birthdate FROM DUAL UNION ALL
    SELECT 25 term_order, 'William McKinley' president, 'Niles, Ohio' birthplace, DATE '1843-01-29' birthdate FROM DUAL UNION ALL
    SELECT 26 term_order, 'Theodore Roosevelt' president, 'New York, New York' birthplace, DATE '1858-10-27' birthdate FROM DUAL UNION ALL
    SELECT 27 term_order, 'William H Taft' president, 'Cincinnati, Ohio' birthplace, DATE '1857-09-15' birthdate FROM DUAL UNION ALL
    SELECT 28 term_order, 'Woodrow Wilson' president, 'Staunton, Virginia' birthplace, DATE '1856-12-28' birthdate FROM DUAL UNION ALL
    SELECT 29 term_order, 'Warren Harding' president, 'Corsica near Blooming Grove, Ohio' birthplace, DATE '1865-11-02' birthdate FROM DUAL UNION ALL
    SELECT 30 term_order, 'Calvin Coolidge' president, 'Plymouth, Vermont' birthplace, DATE '1872-07-04' birthdate FROM DUAL UNION ALL
    SELECT 31 term_order, 'Herbert Hoover' president, 'West Branch, Iowa' birthplace, DATE '1874-08-10' birthdate FROM DUAL UNION ALL
    SELECT 32 term_order, 'Franklin R Roosevelt' president, 'Hyde Park, New York' birthplace, DATE '1882-01-30' birthdate FROM DUAL UNION ALL
    SELECT 33 term_order, 'Harry S Truman' president, 'Lamar, Missouri' birthplace, DATE '1884-05-08' birthdate FROM DUAL UNION ALL
    SELECT 34 term_order, 'Dwight D Eisenhower' president, 'Denison, Texas' birthplace, DATE '1890-10-14' birthdate FROM DUAL UNION ALL
    SELECT 35 term_order, 'John F Kennedy' president, 'Brookline, Massachusetts' birthplace, DATE '1917-05-29' birthdate FROM DUAL UNION ALL
    SELECT 36 term_order, 'Lyndon B Johnson' president, 'Stonewall, Texas' birthplace, DATE '1908-08-27' birthdate FROM DUAL UNION ALL
    SELECT 37 term_order, 'Richard M Nixon' president, 'Yorba Linda, California' birthplace, DATE '1913-01-09' birthdate FROM DUAL UNION ALL
    SELECT 38 term_order, 'Gerald R Ford' president, 'Omaha, Nebraska' birthplace, DATE '1913-07-14' birthdate FROM DUAL UNION ALL
    SELECT 39 term_order, 'Jimmy Carter' president, 'Plains, Georgia' birthplace, DATE '1924-10-01' birthdate FROM DUAL UNION ALL
    SELECT 40 term_order, 'Ronald Reagan' president, 'Tampico, Illinois' birthplace, DATE '1911-02-06' birthdate FROM DUAL UNION ALL
    SELECT 41 term_order, 'George HW Bush' president, 'Milton, Massachusetts' birthplace, DATE '1924-06-12' birthdate FROM DUAL UNION ALL
    SELECT 42 term_order, 'William J Clinton' president, 'Hope, Arkansas' birthplace, DATE '1946-08-19' birthdate FROM DUAL UNION ALL
    SELECT 43 term_order, 'George W Bush' president, 'New Haven, Connecticut' birthplace, DATE '1946-07-06' birthdate FROM DUAL UNION ALL
    SELECT 44 term_order, 'Barack Obama' president, 'Honolulu, Hawaii' birthplace, DATE '1961-08-04' birthdate FROM DUAL UNION ALL 
    SELECT 45 term_order, 'Donald J Trump' president, 'New York, New York' birthplace, DATE '1946-06-14' birthdate FROM DUAL UNION ALL
    SELECT 46 term_order, 'Joseph R Biden' president, 'Scranton, Pennsylvania' birthplace, DATE '1942-11-20' birthdate FROM DUAL 
	)
SELECT term_order, president, birthplace, birthdate FROM us_presidents 
;


-- Snowflake version (no DUAL)
WITH us_presidents AS (
--US presidents with their birthdates and birthplaces
-- I've used it for parsing demonstrations
-- Data collected by Daniel Stober f rom information in the public domain
-- Link to the dataset on Dropbox: https://www.dropbox.com/s/t4csjgrfed0y1g8/us_presidents.sql?dl=0
    SELECT 1 term_order, 'George Washington' president, 'Popes Creek, Virginia' birthplace, DATE '1732-02-22' birthdate   UNION ALL
    SELECT 2 term_order, 'John Adams' president, 'Braintree, Massachusetts' birthplace, DATE '1735-10-30' birthdate   UNION ALL
    SELECT 3 term_order, 'Thomas Jefferson' president, 'Goochland County, Virginia' birthplace, DATE '1743-04-13' birthdate   UNION ALL
    SELECT 4 term_order, 'James Madison' president, 'Port Conway, Virginia' birthplace, DATE '1751-03-16' birthdate   UNION ALL
    SELECT 5 term_order, 'James Monroe' president, 'Westmoreland County, Virginia' birthplace, DATE '1758-04-28' birthdate   UNION ALL
    SELECT 6 term_order, 'John Q Adams' president, 'Braintree, Massachusetts' birthplace, DATE '1767-07-11' birthdate   UNION ALL
    SELECT 7 term_order, 'Andrew Jackson' president, 'Waxhaw, North Carolina' birthplace, DATE '1767-03-15' birthdate   UNION ALL
    SELECT 8 term_order, 'Martin Van Buren' president, 'Kinderhook, New York' birthplace, DATE '1782-12-05' birthdate   UNION ALL
    SELECT 9 term_order, 'William Henry Harrison' president, 'Charles City County, Virginia' birthplace, DATE '1773-02-09' birthdate   UNION ALL
    SELECT 10 term_order, 'John Tyler' president, 'Charles City County, Virginia' birthplace, DATE '1790-03-29' birthdate   UNION ALL
    SELECT 11 term_order, 'James Polk' president, 'Mecklenburg County, North Carolina' birthplace, DATE '1795-11-02' birthdate   UNION ALL
    SELECT 12 term_order, 'Zachary Taylor' president, 'Orange County, Virginia' birthplace, DATE '1784-11-24' birthdate   UNION ALL
    SELECT 13 term_order, 'Millard Fillmore' president, 'Cayuga County, New York' birthplace, DATE '1800-01-07' birthdate   UNION ALL
    SELECT 14 term_order, 'Franklin Pierce' president, 'Hillsborough, New Hampshire' birthplace, DATE '1804-11-23' birthdate   UNION ALL
    SELECT 15 term_order, 'James Buchanan' president, 'Cove Gap, Pennsylvania' birthplace, DATE '1791-04-23' birthdate   UNION ALL
    SELECT 16 term_order, 'Abraham Lincoln' president, 'Hardin County, Kentucky' birthplace, DATE '1809-02-12' birthdate   UNION ALL
    SELECT 17 term_order, 'Andrew Johnson' president, 'Raleigh, North Carolina' birthplace, DATE '1808-12-29' birthdate   UNION ALL
    SELECT 18 term_order, 'Ulysses S Grant' president, 'Point Pleasant, Ohio' birthplace, DATE '1822-04-27' birthdate   UNION ALL
    SELECT 19 term_order, 'Rutherford B Hayes' president, 'Delaware, Ohio' birthplace, DATE '1822-10-04' birthdate   UNION ALL
    SELECT 20 term_order, 'James Garfield' president, 'Moreland Hills, Ohio' birthplace, DATE '1831-11-19' birthdate   UNION ALL
    SELECT 21 term_order, 'Chester A Arthur' president, 'Fairfield, Vermont' birthplace, DATE '1829-10-05' birthdate   UNION ALL
    SELECT 22 term_order, 'Grover Cleveland' president, 'Caldwell, New Jersey' birthplace, DATE '1837-03-18' birthdate   UNION ALL
    SELECT 23 term_order, 'Benjamin Harrison' president, 'North Bend, Ohio' birthplace, DATE '1833-08-20' birthdate   UNION ALL
    SELECT 24 term_order, 'Grover Cleveland' president, 'Caldwell, New Jersey' birthplace, DATE '1837-03-18' birthdate   UNION ALL
    SELECT 25 term_order, 'William McKinley' president, 'Niles, Ohio' birthplace, DATE '1843-01-29' birthdate   UNION ALL
    SELECT 26 term_order, 'Theodore Roosevelt' president, 'New York, New York' birthplace, DATE '1858-10-27' birthdate   UNION ALL
    SELECT 27 term_order, 'William H Taft' president, 'Cincinnati, Ohio' birthplace, DATE '1857-09-15' birthdate   UNION ALL
    SELECT 28 term_order, 'Woodrow Wilson' president, 'Staunton, Virginia' birthplace, DATE '1856-12-28' birthdate   UNION ALL
    SELECT 29 term_order, 'Warren Harding' president, 'Corsica near Blooming Grove, Ohio' birthplace, DATE '1865-11-02' birthdate   UNION ALL
    SELECT 30 term_order, 'Calvin Coolidge' president, 'Plymouth, Vermont' birthplace, DATE '1872-07-04' birthdate   UNION ALL
    SELECT 31 term_order, 'Herbert Hoover' president, 'West Branch, Iowa' birthplace, DATE '1874-08-10' birthdate   UNION ALL
    SELECT 32 term_order, 'Franklin R Roosevelt' president, 'Hyde Park, New York' birthplace, DATE '1882-01-30' birthdate   UNION ALL
    SELECT 33 term_order, 'Harry S Truman' president, 'Lamar, Missouri' birthplace, DATE '1884-05-08' birthdate   UNION ALL
    SELECT 34 term_order, 'Dwight D Eisenhower' president, 'Denison, Texas' birthplace, DATE '1890-10-14' birthdate   UNION ALL
    SELECT 35 term_order, 'John F Kennedy' president, 'Brookline, Massachusetts' birthplace, DATE '1917-05-29' birthdate   UNION ALL
    SELECT 36 term_order, 'Lyndon B Johnson' president, 'Stonewall, Texas' birthplace, DATE '1908-08-27' birthdate   UNION ALL
    SELECT 37 term_order, 'Richard M Nixon' president, 'Yorba Linda, California' birthplace, DATE '1913-01-09' birthdate   UNION ALL
    SELECT 38 term_order, 'Gerald R Ford' president, 'Omaha, Nebraska' birthplace, DATE '1913-07-14' birthdate   UNION ALL
    SELECT 39 term_order, 'Jimmy Carter' president, 'Plains, Georgia' birthplace, DATE '1924-10-01' birthdate   UNION ALL
    SELECT 40 term_order, 'Ronald Reagan' president, 'Tampico, Illinois' birthplace, DATE '1911-02-06' birthdate   UNION ALL
    SELECT 41 term_order, 'George HW Bush' president, 'Milton, Massachusetts' birthplace, DATE '1924-06-12' birthdate   UNION ALL
    SELECT 42 term_order, 'William J Clinton' president, 'Hope, Arkansas' birthplace, DATE '1946-08-19' birthdate   UNION ALL
    SELECT 43 term_order, 'George W Bush' president, 'New Haven, Connecticut' birthplace, DATE '1946-07-06' birthdate UNION ALL
    SELECT 44 term_order, 'Barack Obama' president, 'Honolulu, Hawaii' birthplace, DATE '1961-08-04' birthdate 

    SELECT 45 term_order, 'Donald J Trump' president, 'New York, New York' birthplace, DATE '1946-06-14' birthdate 
    SELECT 46 term_order, 'Joseph R Biden' president, 'Scranton, Pennsylvania' birthplace, DATE '1942-11-20' birthdate 


	)
SELECT term_order, president, birthplace, birthdate FROM us_presidents 
;




Challenges:

Put these presidents in alphabetical order by last name

Who is first president born in 19th Century?

Who is first Republican president?

Who is first Democrat president?
