# RLIKE,REGEXP operator : performs a pattern match of a string expression against a pattern.
# X$ : ends with X, [AEIOU] : One character among 'A','E','I','O','U' 

# MY SOLUTION
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP('[AEIOU]$')