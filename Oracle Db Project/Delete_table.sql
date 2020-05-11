/*Clean database*/
SPOOL "spool_data/general_output.txt";
/* Dropping all the constraints */
PROMPT dropped EMPLOYEE-self constarints : Self_Employee_Ref;
ALTER TABLE EMPLOYEE DROP CONSTRAINT Self_Employee_Ref;

PROMPT dropped EMPLOYEE constarints : Employee_Department_Ref;
ALTER TABLE EMPLOYEE DROP CONSTRAINT Employee_Department_Ref;

PROMPT dropped EMPLOYEE constarints : Employee_SSN_Chk;
ALTER TABLE EMPLOYEE DROP CONSTRAINT Employee_SSN_Chk;

PROMPT dropped EMPLOYEE constarints : Employee_Sex_Char_Chk;
ALTER TABLE EMPLOYEE DROP CONSTRAINT Employee_Sex_Char_Chk;

PROMPT dropped DEPARTMENT constarints : Department_Employee_Ref;
ALTER TABLE DEPARTMENT DROP CONSTRAINT Department_Employee_Ref;

PROMPT dropped PROJECT constarints : Project_Department_Ref;
ALTER TABLE PROJECT DROP CONSTRAINT Project_Department_Ref;

PROMPT dropped WORKS_ON constarints : Works_on_Employee_Ref;
ALTER TABLE WORKS_ON DROP CONSTRAINT Works_on_Employee_Ref;

PROMPT dropped WORKS_ON constarints : Works_on_Employee_Ref;
ALTER TABLE WORKS_ON DROP CONSTRAINT Works_on_Project_Ref;

PROMPT dropped DEPT_LOCATIONS constarints : Dept_locations_Department_Ref;
ALTER TABLE DEPT_LOCATIONS DROP CONSTRAINT Dept_locations_Department_Ref;

PROMPT dropped DEPENDENT constarints : Dependent_Employee_Ref;
ALTER TABLE DEPENDENT DROP CONSTRAINT Dependent_Employee_Ref;

/* droping all the tables */
PROMPT dropped table DEPT_LOCATIONS; 
DROP TABLE DEPT_LOCATIONS;

PROMPT dropped table WORKS_ON;
DROP TABLE WORKS_ON;

PROMPT dropped table DEPENDENT;
DROP TABLE DEPENDENT;

PROMPT dropped table PROJECT;
DROP TABLE PROJECT;

PROMPT dropped table DEPARTMENT;
DROP TABLE DEPARTMENT;

PROMPT dropped table EMPLOYEE;
DROP TABLE EMPLOYEE;

SPOOL OUT