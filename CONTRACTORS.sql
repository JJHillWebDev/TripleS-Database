INSERT INTO CONTRACTORS_INFO (CRID,SSN,First_Name,Last_Name,DOB)
VALUES
	(1001,123456777,'Jesse Smith','03-15-1999'),
	(1002,321654987,'Jason Alexander','10-05-1990'),
	(1003,963258147,'Marco Polo','02-07-1994');


INSERT INTO CONTRACTORS_CONTACT(CRCID,CRID, Email,Cell_Phone,Alt_Phone)
VALUES
	(2001,1001,'jess25@gmail.com',6126065599,6126559847),
	(2002,1002,'george@seinfeld.com',6519874456,6123369874),
	(2003,1003,'marcP@outlook.com',7633214699,9826321598);


INSERT INTO CONTRACTORS_LOCATION (LOCID,CRID,ZIP,State,City,Address)
VALUES
	(3001,1001,55113,'Minnesota','Roseville','2785 Marion St.'),
	(3002,1002,55127,'Minnesota','Little Canada','3358 Nice Rd.'),
	(3003,1003,55401,'Minnesota','Minneapolis','8897 5 Star Rises Apt. 335');


INSERT INTO CONTRATOR_PHOTO (PID,CRID,Profile_Pic)
VALUES
	(4001,1001,NULL),
	(4002,1002,NULL),
	(4003,1003,NULL);










INSERT INTO CONTRACTORS_INFO (CRID,SSN,First_Name,Last_Name,DOB)

	SELECT 1004,983456637,'Mikko', 'Koivu','03-12-1983' FROM DUAL
	UNION ALL SELECT  1005,321654654,'Zach', 'Parise','07-28-1984' FROM DUAL
	UNION ALL SELECT  1006,656826543,'Ryan', 'Suter','01-21-1985' FROM DUAL;


INSERT INTO CONTRATORS_CONTACT(CRCID,CRID, Email,Cell_Phone,Alt_Phone)

	SELECT 2004,1004,'mkoivu9@aol.com',6126986362,6126556198 FROM DUAL
	UNION ALL SELECT 2005,1005,'zparise11@aol.com',6512324568,6125652366 FROM DUAL
	UNION ALL SELECT 2006,1006,'rsuter20@aol.com',7636993322,9828586231 FROM DUAL;


INSERT INTO CONTRACTORS_LOCATION (LOCID,CRID,ZIP,State,City,Address)

	SELECT 3004,1004,55116,'Minnesota','St. Paul','3254 Clevland Ave.' FROM DUAL
	UNION ALL SELECT 3005,1005,55343,'Minnesota','Edina','2665 Dale St.' FROM DUAL
	UNION ALL SELECT 3006,1006,55033,'Minnesota','Hastings','2541 Hancock Ln' FROM DUAL;


INSERT INTO CONTRACTOR_PHOTO (PID,CRID,Profile_Pic)

	SELECT 4004,1004,NULL FROM DUAL
	UNION ALL SELECT 4005,1005,NULL FROM DUAL
	UNION ALL SELECT 4006,1006,NULL FROM DUAL;





INSERT INTO CONTRACTORS_INFO (CRID,SSN,First_Name,Last_Name,DOB)

	SELECT 1007,659847123,'Luke', 'Kunin','12-04-1997' FROM DUAL
	UNION ALL SELECT 1008,968412325,'Jordan', 'Greenway','02-16-1997' FROM DUAL
	UNION ALL SELECT 1009,689742613,'Joel', 'Eriksson Ek','01-29-1997' FROM DUAL;


INSERT INTO CONTRATORS_CONTACT(CRCID,CRID, Email,Cell_Phone,Alt_Phone)

	SELECT 2007,1007,'lkunin19@gmail.com',6126154000,NULL FROM DUAL
	UNION ALL SELECT 2008,1008,'jgreenway18@gmail.com',6516983542,NULL FROM DUAL
	UNION ALL SELECT 2009,1009, 'jeek14@gmail.com',7633365421,NULL FROM DUAL;


INSERT INTO CONTRACTORS_LOCATION (LOCID,CRID,ZIP,State,City,Address)

	SELECT 3007,1007,55116,'Minnesota','St. Paul','2741 Montreal Ave.' FROM DUAL
	UNION ALL SELECT 3008,1008,55116,'Minnesota','St. Paul','2665 James St.' FROM DUAL
	UNION ALL SELECT 3009,1009,55401,'Minnesota','Minneapolis','2665 First Ave.' FROM DUAL;


INSERT INTO CONTRACTOR_PHOTO (PID,CRID,Profile_Pic)

	SELECT 4007,1007,NULL FROM DUAL
	UNION ALL SELECT 4008,1008,NULL FROM DUAL
	UNION ALL SELECT 4009,1009,NULL FROM DUAL;





INSERT INTO CONTRACTORS_INFO (CRID,SSN,First_Name,Last_Name,DOB)

	SELECT 1010,856635210,'Matt', 'Dumba','07-25-1994'FROM DUAL 
	UNION ALL SELECT 1011,362515866,'Jared', 'Spurgeon','11-29-1989' FROM DUAL
	UNION ALL SELECT 1012,698712333,'Brad', 'Hunt','08-28-1988' FROM DUAL;


INSERT INTO CONTRATORS_CONTACT(CRCID,CRID, Email,Cell_Phone,Alt_Phone)

	SELECT 2010,1010,'mdumba@gmail.com',6125523698,NULL FROM DUAL
	UNION ALL SELECT 2011,1011,'jspurgeon4618@yahoo.com',6516985321,6514695956 FROM DUAL
	UNION ALL SELECT 2012,1012, 'bhunt@yahoo.com',7636542354,6123566525 FROM DUAL;


INSERT INTO CONTRACTORS_LOCATION (LOCID,CRID,ZIP,State,City,Address)

	SELECT 3010,1010,55306,'Minnesota','Burnsville','2555 Lorel Blvd.' FROM DUAL
	UNION ALL SELECT 3011,1011,55344,'Minnesota','Eden Prairie','1845 Juno St.' FROM DUAL
	UNION ALL SELECT 3012,1012,55401,'Minnesota','Minneapolis','2236 Jacobs St.' FROM DUAL;


INSERT INTO CONTRACTOR_PHOTO (PID,CRID,Profile_Pic)

	SELECT 4010,1010,NULL FROM DUAL
	UNION ALL SELECT 4011,1011,NULL FROM DUAL
	UNION ALL SELECT 4012,1012,NULL FROM DUAL;		