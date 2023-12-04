
 1
 2
 3
 4
 5
 6
 7
 8
 9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
WITH venues AS (
    -- Olympics venues, Summer and Winter. This is a good dataset for a pivot
    -- Data collected by Daniel Stober from information in the public domain
    -- Link to the dataset on Dropbox: https://www.dropbox.com/s/yym88c8kjgjvw8m/olympic_venues.sql?dl=0
    SELECT 'S' season, 1896 yr,'I' olympiad,'Athens' location ,NULL cancelled_flg FROM DUAL UNION ALL
    SELECT 'S' season, 1900,'II','Paris',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1904,'III','St. Louis',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1908,'IV','London',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1912,'V','Stockholm',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1916,'VI','Berlin','Y' FROM DUAL UNION ALL
    SELECT 'S' season, 1920,'VII','Antwerp',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1924,'VIII','Paris',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1928,'IX','Amsterdam',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1932,'X','Los Angeles',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1936,'XI','Berlin',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1940,'XII','Tokyo','Y' FROM DUAL UNION ALL
    SELECT 'S' season, 1944,'XIII','London','Y' FROM DUAL UNION ALL
    SELECT 'S' season, 1948,'XIV','London',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1952,'XV','Helsinki',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1956,'XVI','Melbourne',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1960,'XVII','Rome',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1964,'XVIII','Tokyo',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1968,'XIX','Mexico City',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1972,'XX','Munich',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1976,'XXI','Montreal',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1980,'XXII','Moscow',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1984,'XXIII','Los Angeles',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1988,'XXIV','Seoul',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1992,'XXV','Barcelona',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 1996,'XXVI','Atlanta',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 2000,'XXVII','Sydney',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 2004,'XXVIII','Athens',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 2008,'XXIX','Beijing',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 2012,'XXX','London',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 2016,'XXXI','Rio de Janeiro',NULL FROM DUAL UNION ALL
    SELECT 'S' season, 2020,'XXXII','Tokyo',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1924,'I','Chamonix',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1928,'II','St. Moritz',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1932,'III','Lake Placid',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1936,'IV','Garmisch-Partenkirchen',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1940,NULL,'Sapporo','Y' FROM DUAL UNION ALL
    SELECT 'W' season, 1944,NULL,'Cortina d''Ampezzo','Y' FROM DUAL UNION ALL
    SELECT 'W' season, 1948,'V','St. Moritz',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1952,'VI','Oslo',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1956,'VII','Cortina d''Ampezzo',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1960,'VIII','Squaw Valley',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1964,'IX','Innsbruck',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1968,'X','Grenoble',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1972,'XI','Sapporo',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1976,'XII','Innsbruck',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1980,'XIII','Lake Placid',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1984,'XIV','Sarajevo',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1988,'XV','Calgary',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1992,'XVI','Albertville',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1994,'XVII','Lillehammer',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 1998,'XVIII','Nagano',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 2002,'XIX','Salt Lake City',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 2006,'XX','Torino',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 2010,'XXI','Vancouver',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 2014,'XXII','Sochi',NULL FROM DUAL UNION ALL
    SELECT 'W' season, 2018,'XXIII','Pyeongchang',NULL FROM DUAL UNION ALL
    )
SELECT season, yr, olympiad, location, cancelled_flg 
FROM venues;
