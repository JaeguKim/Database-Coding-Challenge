SELECT class FROM (SELECT class, COUNT(DISTINCT student) AS studentCnt FROM courses 
GROUP BY class) AS tempTable WHERE studentCnt >= 5;