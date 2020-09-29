#MEDIAN 
#SOLUTION 1
SET @rowindex := -1;
 
SELECT
   ROUND(AVG(s.latN),4)
FROM
   (SELECT @rowindex:=@rowindex + 1 AS rowindex,
           station.lat_n AS latN
    FROM station
    ORDER BY station.lat_n) AS s
WHERE
s.rowindex IN (FLOOR(@rowindex / 2) , CEIL(@rowindex / 2));

#SOLUTION 2
SELECT ROUND(LAT_N,4) FROM STATION AS S
WHERE (SELECT COUNT(*) FROM STATION WHERE LAT_N<S.LAT_N)
=(SELECT COUNT(*) FROM STATION WHERE LAT_N>S.LAT_N);
