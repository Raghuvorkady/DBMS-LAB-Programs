/* 5. Categorize students based on the following criterion:
If FinalIA = 17 to 20 then CAT = ‘Outstanding’
If FinalIA = 12 to 16 then CAT = ‘Average’
If FinalIA< 12 then CAT = ‘Weak’
Give these details only for 8th semester A, B, and C section students. */

SELECT S.USN,S.SNAME,S.ADDRESS,S.PHONE,S.GENDER,
 (CASE
 WHEN IA.FINALIA BETWEEN 17 AND 20 THEN 'OUTSTANDING'
 WHEN IA.FINALIA BETWEEN 12 AND 16 THEN 'AVERAGE'
 ELSE 'WEAK'
 END) AS CAT
FROM STUDENT S, SEMSEC SS, IAMARKS IA, SUBJECT SUB
WHERE S.USN = IA.USN AND
	SS.SSID = IA.SSID AND
	SUB.SUBCODE = IA.SUBCODE AND
	SUB.SEM = 8;