/* Section 2  execution */
SPOOL "spool_data/question_4.txt";

PROMPT 1 - Select all the attributes for all employees whose last name is Jones or James;
SELECT * FROM EMPLOYEE WHERE Lname = 'Jones' OR Lname = 'James';

PROMPT 2 - Select all the attributes for all employees whose first name is Kim or Wilson;
SELECT * FROM EMPLOYEE WHERE Fname = 'Kim' OR Fname = 'Wilson';

PROMPT 3 - Select the names and Ssn of employees who work on more than one project and count the total hours that the employees work on;
SELECT Lname,Fname,Ssn,SUM(Hours) AS Total_work_hours
FROM (
    SELECT E.Lname,E.Fname,E.Ssn,W.Hours
    FROM EMPLOYEE E,WORKS_ON W
    WHERE E.Ssn = W.Essn AND W.Essn IN (
        SELECT Essn 
        FROM (
            SELECT COUNT(Pno) AS JOB_COUNT,Essn 
            FROM WORKS_ON 
            GROUP BY Essn
            ) 
            WHERE JOB_COUNT >= 2
        )
    )
GROUP BY Fname,Lname,Ssn;

PROMPT 4 - For each PROJECT retrieve the project name number and location plus the number of employees who works on the project;
SELECT P.Pname,P.Pnumber,P.Plocation,COUNT(W.Essn) AS PROJECT_EMP_COUNT
FROM(PROJECT P LEFT OUTER JOIN WORKS_ON W ON P.Pnumber = W.Pno)
GROUP BY P.Pname,P.Pnumber,P.Plocation;

PROMPT 5 - For each employee who works in department 5 on a project in Houston retrieve the employee Ssn first and last names and the project number name and hours for each project that the employee works on;
SELECT E.Ssn,E.Fname,E.Lname,P.Pnumber,P.Pname,W.Hours
FROM EMPLOYEE E,PROJECT P,WORKS_ON W
WHERE E.Ssn = W.Essn AND W.Pno = P.Pnumber;

PROMPT 6 - Retrieve the last name and first name of all employees who work more than 40 hours per week total on all their projects;
SELECT Lname,Fname
FROM EMPLOYEE
WHERE Ssn IN (
    SELECT Essn 
    FROM (
        SELECT Essn,SUM(Hours) AS Total_hours FROM WORKS_ON GROUP BY Essn
        ) 
    WHERE Total_hours > 40.0
);

PROMPT 6 - 3 - Select the first and last name of each employee who is a supervisor plus count the total number of employees supervised by each supervisor;
SELECT emp1.Fname, emp1.Lname,COUNT(emp2.Super_ssn) AS Subordinate_count
FROM EMPLOYEE emp1,EMPLOYEE emp2
WHERE emp1.Ssn = emp2.Super_ssn
GROUP BY emp1.Fname,emp1.Lname,emp2.Super_ssn;

PROMPT 6 - 4 - For each project determine the total hours that employees work on that project per week;
SELECT P.Pname,COALESCE(SUM(W.Hours),0) AS Total_Work_Hours
FROM(PROJECT P LEFT OUTER JOIN WORKS_ON W ON(P.Pnumber = W.Pno))
GROUP BY P.Pname;

PROMPT 8 - Find which employee has more than 2 dependents;
SELECT * 
FROM EMPLOYEE 
WHERE Ssn IN (
    SELECT Essn
    FROM DEPENDENT
    GROUP BY Essn
    HAVING COUNT(Essn) > 2
);

PROMPT 9 - Find which employee has more than 1 children;
SELECT *
FROM EMPLOYEE
WHERE Ssn IN (
    SELECT Essn
    FROM DEPENDENT
    WHERE Relationship LIKE 'Children'
    GROUP BY Essn
    HAVING COUNT(Essn) > 1
);

PROMPT 10 - Find all the employee who works in the department that is located in Atlanta Select their first name and last name;
SELECT E.Fname,E.Lname
FROM EMPLOYEE E,DEPT_LOCATIONS DL
WHERE E.Dno = DL.Dnumber AND DL.Dlocation LIKE 'Atlanta';

PROMPT 11 - Find all the departments located in Houston and list how many projects are their under those departments;
SELECT D.Dname,COUNT(P.Pnumber) AS Count_Of_Project
FROM DEPARTMENT D,DEPT_LOCATIONS DL,PROJECT P
WHERE D.Dnumber = DL.Dnumber AND P.Dnum = DL.Dnumber AND DL.Dlocation LIKE 'Houston'
GROUP BY D.Dname;

SPOOL OUT