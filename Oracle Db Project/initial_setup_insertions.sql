SPOOL "spool_data/question_2.txt";
/* Disabling the constraint to add first record */
PROMPT Disabling the constraint:Employee_Department_Ref to add initial records - THIS IS FOR THE NULL PART IN QUESTION 2;
ALTER TABLE EMPLOYEE DISABLE CONSTRAINT Employee_Department_Ref;

/* Inserting records into EMPLOYEE table */
PROMPT Inserting records into EMPLOYEE table;
INSERT INTO EMPLOYEE
VALUES('Hola','B','James','123456789','09-AUG-1994','1 Sum Arlington TX','M',30001,'123456789',5);
INSERT INTO EMPLOYEE
VALUES('Cruela','Z','Jones','010101011','08-DEC-1999','2 Mul Houston TX','F',4000,'010101011',1);
INSERT INTO EMPLOYEE
VALUES('Kim','S','Cardasian','444444444','02-JAN-1868','3 Sub Sugarland TX','F',5001.23,'444444444',4);
INSERT INTO EMPLOYEE
VALUES('Kimera','S','dasiany','444444441','02-Jan-1898','3 Sub Sugarland TX','F',50777.23,'444444441',2);
INSERT INTO EMPLOYEE
VALUES('Aabel','A','Xavia','538539309','28-Dec-1962','4 Sub Ridgeford TX','M',50010.87,'538539309',3);

/* creating departments */
PROMPT Inserting records into DEPARTMENT table;
INSERT INTO DEPARTMENT
VALUES('Research',5,'123456789','03-MAR-1992');
INSERT INTO DEPARTMENT
VALUES('Admin',4,'444444444','09-FEB-2020');
INSERT INTO DEPARTMENT
VALUES('Headquarter',1,'010101011','06-NOV-2000');
INSERT INTO DEPARTMENT
VALUES('Data Sciences',2,'444444441','08-JAN-2001');
INSERT INTO DEPARTMENT
VALUES('Infrastructure',3,'538539309','01-MAR-1993');
INSERT INTO DEPARTMENT
VALUES('Made to be deleted',9,'538539309','02-MAR-1993');

/* Enable the constraint back to normal */
PROMPT Enable the constraint:Employee_Department_Ref back to normal;
ALTER TABLE EMPLOYEE ENABLE CONSTRAINT Employee_Department_Ref;

/* creating dept locations data */
PROMPT Inserting records into DEPT_LOCATIONS table;
INSERT INTO DEPT_LOCATIONS
VALUES(5,'Seattle');
INSERT INTO DEPT_LOCATIONS
VALUES(5,'Houston');
INSERT INTO DEPT_LOCATIONS
VALUES(4,'Atlanta');
INSERT INTO DEPT_LOCATIONS
VALUES(3,'Arlington');
INSERT INTO DEPT_LOCATIONS
VALUES(2,'Sugarland');
INSERT INTO DEPT_LOCATIONS
VALUES(1,'Ridgeford');
INSERT INTO DEPT_LOCATIONS
VALUES(9,'Somewhere');

/* creating project data */
PROMPT Inserting records into PROJECT table;
INSERT INTO PROJECT
VALUES('research project 1',1,'Houston',5);
INSERT INTO PROJECT
VALUES('admin project 1',2,'Atlanta',4);
INSERT INTO PROJECT
VALUES('headquarter project 1',3,'Arlington',3);
INSERT INTO PROJECT
VALUES('Data science project 1',4,'Sugarland',2);
INSERT INTO PROJECT
VALUES('Infrastructure project 1',5,'Ridgeford',1);

/* creating employee project work data */
PROMPT Inserting records into WORKS_ON table;
INSERT INTO WORKS_ON
VALUES('123456789',1,12.2);
INSERT INTO WORKS_ON
VALUES('444444444',2,13.1);
INSERT INTO WORKS_ON
VALUES('010101011',3,9.5);
INSERT INTO WORKS_ON
VALUES('444444441',4,3.5);
INSERT INTO WORKS_ON
VALUES('538539309',5,2.3);

/* creating employee dependency data */
PROMPT Inserting records into DEPENDENT table;
INSERT INTO DEPENDENT
VALUES('123456789','Ashlyn James','F','03-MAR-2019','Daughter');
INSERT INTO DEPENDENT
VALUES('444444444','Cherok Jones','M','10-JUL-2020','Son');
INSERT INTO DEPENDENT
VALUES('010101011','Jammy Cardasian','M','23-FEB-1768','Husband');
INSERT INTO DEPENDENT
VALUES('444444441','Tissa Dasiany','F','02-JUL-1899','Sister');
INSERT INTO DEPENDENT
VALUES('538539309','Rocky Brass','M','28-Dec-1962','Brother');

SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;
SELECT * FROM DEPT_LOCATIONS;
SELECT * FROM PROJECT;
SELECT * FROM WORKS_ON;
SELECT * FROM DEPENDENT;

SPOOL OUT