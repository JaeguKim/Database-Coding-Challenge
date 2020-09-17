SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP('^[aeiou]') AND CITY REGEXP('[aeiou]$') 

#Solution 2
# '.' : any one CHARACTER
# 'X*' : more than zero of 'X'
# '.*' : more than zero of 'any one character' 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP('^[aeiou].*[aeiou]$') 
