SPOOL "spool_data/question_3.txt";

PROMPT 1 - Insert a record Services, 1, 123456789, 11-AUG-2012 into DEPARTMENT;
INSERT INTO DEPARTMENT
VALUES('Services',1,'123456789','11-AUG-2012');

PROMPT 2 - Insert a record Purchasing, 3, 990110110, 02-FEB-2013 into DEPARTMENT;
INSERT INTO DEPARTMENT
VALUES('Purchasing',3,'990110110','02-FEB-2013');

PROMPT 3 - Insert a record Customers, 12, 333445555,14-JAN-2013 into DEPARTMENT;
INSERT INTO DEPARTMENT
VALUES('Customers',12,'333445555','14-JAN-2013');

PROMPT 4 - Update the Dnumber of the DEPT_LOCATIONS record with Dlocation = Seattle to 9;
UPDATE DEPT_LOCATIONS
SET Dnumber = 9
WHERE Dlocation = 'Seattle';

PROMPT 5 - Update the Salary of the EMPLOYEE record with SSN=444444444 to 55000;
UPDATE EMPLOYEE
SET Salary = 55000.00
WHERE Ssn = '444444444';

PROMPT 6 - Insert a record Jane, B, Smith, 666666606, 01-MAR-1980, 3556 W Second Street,Miami,FL, F, 85000, 666666603, 5 into EMPLOYEE;
INSERT INTO EMPLOYEE
VALUES('Jane','B','Smith','666666606','01-MAR-1980','3556 W Second Street,Miami,FL','F',85000,'666666603',5);

PROMPT 7 - Update the hours of the WORKS_ON record with Pno = 1 for the employee with SSN = 666884444 to 25;
UPDATE WORKS_ON
SET Hours = 25
WHERE Pno = 1 AND Essn = '666884444';

PROMPT 8 - a - Delete the EMPLOYEE record with Ssn= 432765098;
DELETE EMPLOYEE
WHERE Ssn = '432765098';

PROMPT 8 - b - Delete the DEPARTMENT record with DNUMBER = 9;
DELETE DEPARTMENT
WHERE Dnumber = 9;

PROMPT 8 - c - Delete all the dependents of employee with Ssn = 666666608;
DELETE DEPENDENT
WHERE Essn = '666666608';

SPOOL OUT