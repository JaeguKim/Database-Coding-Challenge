# Write your MySQL query statement below
SELECT tempTable.Email 
FROM 
(SELECT Email,COUNT(Id) AS cnt
FROM Person
GROUP BY Email) AS tempTable
WHERE tempTable.cnt > 1

