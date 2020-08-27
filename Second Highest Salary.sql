#DISTINCT: 값의 중복을 제거
#AS __ : alias_name(별칭) 설정, 칼럼네임을 __로 출력
SELECT 
(SELECT DISTINCT Salary FROM Employee 
 ORDER BY Salary DESC LIMIT 1 OFFSET 1) 
AS SecondHighestSalary;