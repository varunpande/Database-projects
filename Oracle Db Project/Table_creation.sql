/* Creating tables */
SPOOL "spool_data/question_1.txt";
/* Creating EMPLOYEE table without DEPARTMENT foreign key because of circular reference problem */
PROMPT Creating EMPLOYEE table without DEPARTMENT foreign key because of circular reference problem;
CREATE TABLE EMPLOYEE(
Fname VARCHAR(15) NOT NULL,
Minit CHAR,
Lname VARCHAR(15) NOT NULL,
Ssn CHAR(9) NOT NULL,
Bdate DATE,
Address VARCHAR(30),
Sex CHAR,
Salary DECIMAL(10,2),
Super_ssn CHAR(9),
Dno INT NOT NULL,
PRIMARY KEY(Ssn),
CONSTRAINT Self_Employee_Ref FOREIGN KEY(Super_ssn) REFERENCES EMPLOYEE(Ssn),
CONSTRAINT Employee_SSN_Chk CHECK(LENGTH(TRIM(Ssn)) = 9),
CONSTRAINT Employee_Sex_Char_Chk CHECK(Sex = 'M' OR Sex = 'F')
);

/* Creating DEPARTMENT table */
PROMPT Creating DEPARTMENT table;
CREATE TABLE DEPARTMENT(
Dname VARCHAR(50) NOT NULL UNIQUE,
Dnumber INT NOT NULL,
Mgr_ssn CHAR(9) NOT NULL,
Mgr_start_date DATE,
PRIMARY KEY(Dnumber),
CONSTRAINT Department_Employee_Ref FOREIGN KEY(Mgr_ssn) REFERENCES EMPLOYEE(Ssn)
);

/* Adding foreign key to the EMPLOYEE table */
PROMPT Adding foreign key to the EMPLOYEE table;
ALTER TABLE EMPLOYEE ADD(CONSTRAINT Employee_Department_Ref FOREIGN KEY(Dno) REFERENCES DEPARTMENT(Dnumber));

/* creating table PROJECT */
PROMPT Creating PROJECT table;
CREATE TABLE PROJECT(
Pname VARCHAR(150) NOT NULL UNIQUE,
Pnumber INT NOT NULL,
Plocation VARCHAR(15),
Dnum INT NOT NULL,
PRIMARY KEY(Pnumber),
CONSTRAINT Project_Department_Ref FOREIGN KEY(Dnum) REFERENCES DEPARTMENT(Dnumber)
);

/* Creating table WORKS_ON */
PROMPT Creating WORKS_ON table;
CREATE TABLE WORKS_ON(
Essn CHAR(9) NOT NULL,
Pno INT NOT NULL,
Hours DECIMAL(3,1) NOT NULL,
PRIMARY KEY(Essn,Pno),
CONSTRAINT Works_on_Employee_Ref FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn),
CONSTRAINT Works_on_Project_Ref FOREIGN KEY(Pno) REFERENCES PROJECT(Pnumber)
);

/* Creating table DEPT_LOCATIONS */
PROMPT Creating DEPT_LOCATIONS table;
CREATE TABLE DEPT_LOCATIONS(
Dnumber INT NOT NULL,
Dlocation VARCHAR(15) NOT NULL,
PRIMARY KEY(Dnumber,Dlocation),
CONSTRAINT Dept_locations_Department_Ref FOREIGN KEY(Dnumber) REFERENCES DEPARTMENT(Dnumber)
);

/* Creating table DEPENDENT */
PROMPT Creating DEPENDENT table;
CREATE TABLE DEPENDENT(
Essn CHAR(9) NOT NULL,
Dependent_name VARCHAR(50) NOT NULL,
Sex CHAR,
Bdate DATE,
Relationship VARCHAR(8),
PRIMARY KEY(Essn,Dependent_name),
CONSTRAINT Dependent_Employee_Ref FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn)
);

SPOOL OUT