INSERT INTO CUSTOMER_INFO(CID,First_Name, Last_Name) 
VALUES
	(111,'Dustin','Hoffman'),
	(112,'Jimmy','Carter'),
	(113,'Whoopie','Goldberg');


INSERT INTO CUSOMER_CONTACT(CCID,CID,Cell_Phone,Alt_Phone)
VALUES 
	(211,111,6514569632,6126695328),
	(212,112,NULL, 6125389963),
	(213,113,7638945563,9852365589);


INSERT INTO CUSTOMER_LOCATION (CLID,CID,ZIP,State,City,Address)
VALUES
	(311,111,55113,'Minnesota','Roseville','5698 Cool St.'),
	(312,112,55127,'Minnesota','Little Canada','6895 Senior Ave.'),
	(313,113,55110,'Minnesota','Vadnais Heights','2163 Suite Living Apt. 22');










INSERT INTO CUSTOMER_INFO(CID,First_Name, Last_Name) 

	SELECT 114,'Daniel','Tosh' FROM DUAL
	UNION ALL SELECT 115,'Sarah','Silverman' FROM DUAL
	UNION ALL SELECT 116,'Mitch','Hedberg' FROM DUAL;


INSERT INTO CUSTOMER_CONTACT(CCID,CID,Cell_Phone,Alt_Phone)
 
	SELECT 214,114,NULL,6123254162 FROM DUAL
	UNION ALL SELECT 215,115,6514746532, 6123216549 FROM DUAL
	UNION ALL SELECT 216,116,NULL,9857896541 FROM DUAL;


INSERT INTO CUSTOMER_LOCATION (CLID,CID,ZIP,State,City,Address)

	SELECT 314,114,55113,'Minnesota','Roseville','2365 Smith St.' FROM DUAL
	UNION ALL SELECT 315,115,55343,'Minnesota','Edina','6532 Second Ave.' FROM DUAL
	UNION ALL SELECT 316,116,55113,'Minnesota','Roseville','3232 Senior Living Apt. 64' FROM DUAL;





INSERT INTO CUSTOMER_INFO(CID,First_Name, Last_Name) 

	SELECT 117,'Nikki','Glaser' FROM DUAL
	UNION ALL SELECT 118,'Christina','Pazsitzky' FROM DUAL
	UNION ALL SELECT 119,'Nick','Kroll' FROM DUAL;


INSERT INTO CUSTOMER_CONTACT(CCID,CID,Cell_Phone,Alt_Phone)

	SELECT 217,117,6514647089,6518986235 FROM DUAL
	UNION ALL SELECT 218,118,6125986286, 6129986523 FROM DUAL
	UNION ALL SELECT 219,119,NULL,9855526525 FROM DUAL;


INSERT INTO CUSTOMER_LOCATION (CLID,CID,ZIP,State,City,Address)

	SELECT 317,117,55116,'Minnesota','St. Paul','2789 Kelvin St.' FROM DUAL
	UNION ALL SELECT 318,118,55116,'Minnesota','St. Paul','3278 Hamlinz Ave.' FROM DUAL
	UNION ALL SELECT 319,119,55401,'Minnesota','Minneapolis','1584 Jersey St.' FROM DUAL;





INSERT INTO CUSTOMER_INFO(CID,First_Name, Last_Name) 

	SELECT 120,'Bert','Kreischer' FROM DUAL
	UNION ALL SELECT 121,'Tom','Segura' FROM DUAL
	UNION ALL SELECT 122,'Ari','Shaffir' FROM DUAL;


INSERT INTO CUSTOMER_CONTACT(CCID,CID,Cell_Phone,Alt_Phone)
 
	SELECT 220,120,NULL,6518986235 FROM DUAL
	UNION ALL SELECT 221,121,6125554646, 6126990156 FROM DUAL
	UNION ALL SELECT 222,122,9526465252,9524144243 FROM DUAL;


INSERT INTO CUSTOMER_LOCATION (CLID,CID,ZIP,State,City,Address)

	SELECT 320,120,55116,'Minnesota','St. Paul','1665 Fairview Ave.' FROM DUAL
	UNION ALL SELECT 321,121,55401,'Minnesota','Minneapolis','1948 Sesame St.' FROM DUAL
	UNION ALL SELECT 322,122,55306,'Minnesota','Burnsville','1028 Finn Blvd.' FROM DUAL;