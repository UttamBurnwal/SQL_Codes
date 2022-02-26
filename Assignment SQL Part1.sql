SELECT * FROM STUDIES;
SELECT * FROM SOFTWARE;
SELECT * FROM PROGRAMMER;

/* Find out the selling cost AVG for packages developed in Pascal. */

SELECT AVG(SCOST) FROM SOFTWARE WHERE DEVELOPIN='Pascal';

/* Display Names, Ages of all Programmers. */

SELECT PNAME, DATEDIFF(year, DOB, DOJ) as Age from PROGRAMMER;

/* Display the Names of those who have done the DAP Course. */

SELECT PNAME, COURSE FROM STUDIES WHERE COURSE LIKE 'DAP';

/* Display the Names and Date of Births of all Programmers Born in January. */

SELECT PNAME, DOB FROM PROGRAMMER WHERE DATEPART(month, DOB)=1; 

/* What is the Highest Number of copies sold by a Package? */

SELECT MAX(SOLD) FROM SOFTWARE;  

/* Display lowest course Fee. */

SELECT MIN(COURSE_FEE) FROM STUDIES;

/* How many programmers done the PGDCA Course? */

SELECT COUNT(*) FROM STUDIES WHERE COURSE='PGDCA'

/* How much revenue has been earned through sales of Packages Developed in C. */

SELECT sum(cast(SCOST as int)* SOLD) FROM SOFTWARE WHERE DEVELOPIN LIKE 'C';  

/* Display the Details of the Software Developed by Ramesh. */

SELECT * FROM SOFTWARE WHERE PNAME='RAMESH';

/* How many Programmers Studied at Sabhari? */

SELECT COUNT(*) FROM STUDIES WHERE INSTITUTE LIKE 'SABHARI'

/* Display details of Packages whose sales crossed the 20000 Mark. */

select * from software where (cast(scost as int)*sold)>20000;

/* Display the Details of Packages for which Development Cost have been recovered */

select *, ((cast(scost as int)*sold)-dcost) as Recover from software where ((cast(scost as int)*sold)-dcost)>0;
 
/* What is the cost of the costliest software development in Basic? */

select max(scost) from software where developin like 'Basic';

/* How many Packages Developed in DBASE?  */

select count(*) from software where developin='DBASE'

/* How many programmers studied in Pragathi?  */

select count(*) from studies where institute like 'pragathi';

/* How many Programmers Paid 5000 to 10000 for their course? */

select count(*) from studies where course_fee>=5000 and course_fee<=10000; 

/* What is AVG Course Fee */

select avg(course_fee) from studies;

/*  Display the details of the Programmers Knowing C. */

select * from programmer where prof1='C' or prof2='C';

/* How many Programmers know either COBOL or PASCAL. */

select count(*) from programmer where prof1 in ('cobol','pascal') or prof2 in ('cobol','pascal');

/* How many Programmers Don’t know PASCAL and C */

select count(*) from programmer where prof1 not in ('C','pascal') and prof2 not in ('C','pascal');

