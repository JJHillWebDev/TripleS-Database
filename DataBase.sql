--
-- Title: TripleS Database (DDL)
-- Database Authors: Jeremy Hill, Biane Gebremedhin, Mathieu Landretti
--

--
-- Major Edits Log:
-- Date Created: 9 October, 2019 *Added Employee, Customer, Contractor tables
-- First  upload to Oracle Apex: 30 October, 2019
-- Edited: 10 October, 2019: *Created Transaction, Service, Feed Back tables
-- Edited: 15 October, 2019: *Established FK relationships
-- Edited: 30 October, 2019: *Syntax corrections for upload
-- Edited: 5 November, 2019: *Added photo table 
-- Edited: 6 November, 2019: *Adjusted constraint names
--

CREATE TABLE EMPLOYEE_INFO(
	
	EID number NOT NULL PRIMARY KEY,
	SSN number (9),
	Green_Card number (13),
	First_Name varchar(128),
	Last_Name varchar(128) NOT NULL,
	DOB date NOT NULL

);

CREATE TABLE EMPLOYEE_CONTACT(
    
    ECID number NOT NULL PRIMARY KEY,
    EID number NOT NULL,
    Email varchar(128),
    Address varchar(128),
    Cell_Phone number (10),
    Alt_Phone number (10),
    CONSTRAINT fk_EMPLOYEE_CONTACT
        FOREIGN KEY (EID)
        REFERENCES EMPLOYEE_INFO(EID)
);


CREATE TABLE EMPLOYEE_DEPARTMENT(

	DID number NOT NULL PRIMARY KEY,
	EID number NOT NULL,
	Department varchar(128),
	Title varchar(128),	
	CONSTRAINT fk_EMPLOYEE_DEPARTMENT
		FOREIGN KEY (EID)
		REFERENCES EMPLOYEE_INFO(EID)
		

);

CREATE TABLE EMPLOYEE_STATUS(

	ESID number NOT NULL PRIMARY KEY,
	EID number NOT NULL,
	Hire_Date date NOT NULL,
	Depart_Date date,
	CONSTRAINT fk_EMPLOYEE_STATUS
		FOREIGN KEY (EID)
		REFERENCES EMPLOYEE_INFO(EID)

);

CREATE TABLE EMPLOYEE_PAY(

	EPID number NOT NULL PRIMARY KEY,
	EID number NOT NULL,
	Pay_Type varchar(28),
	Pay number,
	Pay_Start date,
	Pay_End date,
	CONSTRAINT fk_EMPLOYEE_PAY
		FOREIGN KEY (EID)
		REFERENCES EMPLOYEE_INFO(EID)

);

CREATE TABLE CONTRACTORS_INFO(

	CRID number NOT NULL PRIMARY KEY,
	SSN number NOT NULL,
	First_Name varchar(128),
	Last_Name varchar(128) NOT NULL,
	DOB date NOT NULL,

);

CREATE TABLE CONTRATORS_CONTACT(
    
    CRCID NOT NULL PRIMARY KEY,
    CRID NOT NULL,
    Email varchar(128),
    Cell_Phone number (10),
    Alt_Phone number (10),
    CONSTRAINT fk_CONTRACTORS_CONTACT
        FOREIGN KEY(CRID)
        REFERENCES CONTRACTORS_INFO(CRID)
);

CREATE TABLE CONTRACTORS_LOCATION(

	LOCID number NOT NULL PRIMARY KEY,
	CRID number NOT NULL,
	ZIP number(5) NOT NULL,
	State varchar(128),
	City varchar(128),
	Address varchar(128),
	CONSTRAINT fk_CONTRACTORS_LOCATION
		FOREIGN KEY (CRID)
		REFERENCES CONTRACTORS_INFO(CRID)	

);

CREATE TABLE CONTRACTOR_PHOTO(
    
    PID NOT NULL PRIMARY KEY,
    CRID NOT NULL,
    Profile_Pic BLOB,
    CONSTRAINT fk_CONTRACTOR_PHOTO
        FOREIGN KEY (CRID)
        REFERENCES CONTRACTORS_INFO(CRID)
);

CREATE TABLE CUSTOMER_INFO(

	CID number NOT NULL PRIMARY KEY,
	First_Name varchar(128),
	Last_Name varchar(128)


);

CREATE TABLE CUSTOMER_CONTACT(
	CCID number NOT NULL PRIMARY KEY,
	CID number NOT NULL,
	Cell_Phone number(10),
	Alt_Phone number(10),
	Email varchar(128),
	CONSTRAINT fk_CUSTOMER_CONTACT
		FOREIGN KEY (CID)
		REFERENCES CUSTOMER_INFO(CID)

);

CREATE TABLE CUSTOMER_LOCATION(

	CLID number NOT NULL PRIMARY KEY,
	CID number NOT NULL,
	ZIP number NOT NULL,
	State varchar(128),
	City varchar(128),
	Address varchar(128)
	CONSTRAINT fk_CUSTOMER_LOCATION
		FOREIGN KEY (CID)
		REFERENCES CUSTOMER_INFO(CID)
);

CREATE TABLE FEED_BACK(
	
	FID number NOT NULL PRIMARY KEY,
	CRID number NOT NULL,
	CID number NOT NULL,
	TID number NOT NULL,
	Feed_back_Comment varchar(2048),
    CONSTRAINT fk_FEEDBACK_CUSTOMER
        FOREIGN KEY (CID)
        REFERENCES CUSTOMER_INFO(CID),
    CONSTRAINT fk_FEEDBACK_CONTRACTOR
        FOREIGN KEY (CRID)
        REFERENCES CONTRACTORS_INFO(CRID)
    CONSTRAINT fk_FEEDBACK_TRANSACTION
        FOREIGN KEY(TID)
        REFERENCES TRANSACTION_HISTORY(TID)
);

CREATE TABLE SERVICES(
	-- service identifier 
	-- Example Lawn Mowed --> LM
	SID char(2) PRIMARY KEY NOT NULL,
	Service varchar(28),
	Service_Charge numberf

);

CREATE TABLE TRANSACTION_HISTORY(

	TID number NOT NULL PRIMARY KEY,
	CRID number NOT NULL ,
	CID number NOT NULL ,
	SID char NOT NULL,
	Transaction_Date date,
    CONSTRAINT fk_CRID
        FOREIGN KEY (CRID)
        REFERENCES CONTRACTORS_INFO(CRID),
    CONSTRAINT fk_CUSTOMER
        FOREIGN KEY (CID)
        REFERENCES CUSTOMER_INFO (CID),
    CONSTRAINT fk_SERVICE
        FOREIGN KEY(SID)
        REFERENCES SERVICES(SID)

);