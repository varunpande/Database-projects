/* question 5 execution */
SPOOL "spool_data/question_5.txt";

PROMPT Execute 3 more Insert commands in SQLPLUS that attempt to insert 3 more records;
PROMPT such that the records violate the integrity constraints;
PROMPT Make each of the 3 records violate a different type of integrity constraint;
PROMPT Capture your commands in spool files for turning in;

PROMPT Query 1 - Primary key violation;
INSERT INTO EMPLOYEE
VALUES('Rexa', 'B', 'Ruth', '123456789', '01-MAR-1980', '3/101 Baker Street', 'F', 45000, '666466603', 5);

PROMPT QUERY 2 - SSN Length violation;
INSERT INTO EMPLOYEE
VALUES('Rexa', 'B', 'Ruth', '12345678', '02-MAR-1981', '4/102 Baker Street', 'F', 4500, '123456789', 3);

PROMPT Query 3 - FOREIGN KEY violation;
INSERT INTO DEPARTMENT
VALUES('Viola', 122, '122456789', '15-MAR-2023');

SPOOL OUT