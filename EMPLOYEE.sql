INSERT INTO EMPLOYEE_INFO (EID, SSN, Green_Card,First_Name, Last_Name, DOB)
VALUES 
    (101, 123456789,NULL, 'Mathieu', 'Landretti', '02-03-2000'),
    (102, 123456787,NULL,'Jerry', 'Seinfeld','04-29-2000'), 
    (103, 123456788,NULL, 'Amy', 'Johnson', '04-25-1996');


INSERT INTO EMPLOYEE_CONTACT(ECID, EID, Email, Address,Cell_Phone, Alt_Phone)
VALUES
	(201, 101, 'mllandretti@gmail.com','2863 Galiter St.', 6126157018,6517669498),
	(202, 102, 'jerry@seinfeld.com', '1121 Nowhere Ave.',6516465339,6514448978),
	(203, 103,'amy@outlook.com', '3333 Place Rd.',6129778549,7633255698);


INSERT INTO EMPLOYEE_DEPARTMENT (DID,EID,Department, Title)
VALUES
	(301,101, 'Executive', 'Corporate Executive Officer'),
	(302,102,'Acconting', 'Accountant'),
	(303,103,'Information Technologies', 'Software Developer');


INSERT INTO EMPLOYEE_STATUS (ESID, EID, Hire_Date, Depart_Date)
VALUES
	(401, 101, '01-14-2011',NULL),
	(402, 102, '05-17-2015',NULL),
	(403,103, '07-30-2009','05-18-2018');


INSERT INTO EMPLOYEE_PAY(EPID, EID, Pay_Type, Pay, Pay_Start, Pay_End)
VALUES
	(501,101,'Salary', 120000, '01-14-2011', NULL),
	(502,102,'Hourly', 50, '05-17-2015', NULL),
	(503,103,'Salary', 95000, '07-30-2009','08-05-2018');