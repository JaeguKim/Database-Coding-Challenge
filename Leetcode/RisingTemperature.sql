#DATEDIFF(Date d1,Date d2) : return d1-d2
#DATE_ADD(Date d,interval 1 day) : return d1+1day
#MySQL에서 아래의 두 쿼리는 같은 동작을 하나, INNER JOIN 을 사용하는것이 가독성에는 더 좋다.
#INNER JOIN : intersection, OUTER JOIN : Union
#A LEFT OUTER JOIN B: A의 모든 열 더하기 B에 있는 공통부분
#A RIGHT OUTER JOIN B: B의 모든 열 더하기 A에 있는 공통부분
#A FULL OUTER JOIN B: A와B의 합집합을 얻게됨
#A CROSS JOIN B: A와B의 모든 조합을 얻게됨
 
#SELECT * FROM table1, table2 WHERE table1.id = table2.id;
#SELECT * FROM table1 INNER JOIN table2 ON table1.id = table2.id;

#SOL1
SELECT a.id FROM Weather a INNER JOIN Weather b 
ON DATEDIFF(a.recordDate,b.recordDate) = 1 AND a.temperature > b.temperature

#SOL2
SELECT a.id FROM Weather a INNER JOIN Weather b 
ON a.recordDate = DATE_ADD(b.recordDate,interval 1 day) AND a.temperature > b.temperature

