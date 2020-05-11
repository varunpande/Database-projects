SPOOL "spool_data/question_7.txt"

PROMPT Repeat 5 but Insert three new records that do not violate any integrity constraints;
PROMPT Capture your commands in spool files for turning in;

PROMPT inserting DEPENDENT data;
INSERT INTO DEPENDENT
VALUES('865603981','Bri James','F','01-JUN-2009','Sister');

PROMPT inserting WORKS_ON data;
INSERT INTO WORKS_ON
VALUES('474953495',2,8.2);

PROMPT inserting DEPT_LOCATIONS data;
INSERT INTO DEPT_LOCATIONS
VALUES(3,'Alaska');

SPOOL OUT