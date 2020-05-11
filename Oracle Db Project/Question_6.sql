/* question 6 execution */
SPOOL "spool_data/question_6.txt";

PROMPT Execute a command in SQLPLUS to delete a record that violates a referential integrity constraint;
PROMPT Capture your command in a spool file for turning in;
DELETE PROJECT
WHERE Pnumber = 2;

SPOOL OUT