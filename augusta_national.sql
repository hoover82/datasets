WITH augusta AS (
--Augusta National Golf Course - Holes, with names, distances and par
-- Data collected by Daniel Stober from information in the public domain
-- Link to the dataset on Dropbox: https://www.dropbox.com/s/kpbe9rxtiuig95e/augusta_national.sql?dl=0
SELECT 1 hole,'Tea Olive' hole_name,445 yds,4 par FROM DUAL UNION ALL		
SELECT 2,'Pink Dogwood',575,5  FROM DUAL UNION ALL		
SELECT 3,'Flowering Peach',350,4  FROM DUAL UNION ALL		
SELECT 4,'Flowering Crab Apple',240,3  FROM DUAL UNION ALL		
SELECT 5,'Magnolia',455,4  FROM DUAL UNION ALL	
SELECT 6,'Juniper',180,3  FROM DUAL UNION ALL	
SELECT 7,'Pampas',450,4  FROM DUAL UNION ALL	
SELECT 8,'Yellow Jasmine',570,5  FROM DUAL UNION ALL	
SELECT 9,'Carolina Cherry',460,4  FROM DUAL UNION ALL	
SELECT 10,'Camellia',495,4  FROM DUAL UNION ALL	
SELECT 11,'White Dogwood',505,4  FROM DUAL UNION ALL	
SELECT 12,'Golden Bell',155,3  FROM DUAL UNION ALL	
SELECT 13,'Azalea',510,5  FROM DUAL UNION ALL	
SELECT 14,'Chinese Fir',440,4  FROM DUAL UNION ALL	
SELECT 15,'Firethorn',530,5  FROM DUAL UNION ALL	
SELECT 16,'Redbud',170,3  FROM DUAL UNION ALL	
SELECT 17,'Nandina',440,4  FROM DUAL UNION ALL	
SELECT 18,'Holly',465,4  FROM DUAL
)
SELECT hole, hole_name, yds, par
FROM augusta
;
