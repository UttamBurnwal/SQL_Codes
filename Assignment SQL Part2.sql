/* ------------Continuation of Assignment SQL Part1---------------- */

/* How old is the Oldest Male Programmer */

SELECT MAX(FLOOR((SYSDATE - DOB)/365)) FROM PROGRAMMER WHERE GENDER='M';


/* What is the AVG age of Female Programmers? */

 SELECT AVG(FLOOR((SYSDATE - DOB)/365)) FROM PROGRAMMER WHERE GENDER ='F';

/* Calculate the Experience in Years for each Programmer and Display with their names in Descending order. */

SELECT PNAME, FLOOR ((SYSDATE - DOJ)/365) AS EXPERIENCE FROM PROGRAMMER ORDER BY PNAME DESC;
