#[^aeiou] : matches one charcter which is not in 'aeiou'
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP('^[^aeiou]') 