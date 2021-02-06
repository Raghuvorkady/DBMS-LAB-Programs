/* 1. List all the student details studying in fourth semester 'C’ section. */

SELECT S.*, SS.SEM, SS.SEC
FROM STUDENT S, SEMSEC SS, CLASS C
WHERE S.USN = C.USN AND
	SS.SSID = C.SSID AND
	SS.SEM = 4 AND 
	SS.SEc='C';