# RLIKE,REGEXP operator : performs a pattern match of a string expression against a pattern.
# ^X : starts from X, [AEIOU] : One charater among 'A','E','I','O','U' 

# MY SOLUTION
SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY LIKE('a%') OR CITY LIKE('e%') OR CITY LIKE('i%') OR CITY LIKE('o%') OR CITY LIKE('u%') 

# SOLUTION 2
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOU]'

# SOLUTION 3
SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '^[AEIOU]'
