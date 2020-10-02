SELECT T3.ID,T2.AGE,T1.MIN_COIN,T1.POWER
FROM 
(SELECT CODE,POWER,MIN(COINS_NEEDED) AS MIN_COIN
FROM WANDS
GROUP BY CODE,POWER) T1, WANDS_PROPERTY T2, WANDS T3
WHERE T1.CODE = T2.CODE AND T2.IS_EVIL = 0 AND T1.CODE = T3.CODE AND T1.POWER = T3.POWER AND T1.MIN_COIN = T3.COINS_NEEDED
ORDER BY T1.POWER DESC, T2.AGE DESC

#SOLUTION 2
SELECT id, age, m.coins_needed, m.power FROM 
(SELECT code, power, MIN(coins_needed) AS coins_needed FROM Wands GROUP BY code, power) AS m
JOIN Wands AS w ON m.code = w.code AND m.power = w.power AND m.coins_needed = w.coins_needed
JOIN Wands_Property AS p ON m.code = p.code
WHERE p.is_evil = 0
ORDER BY m.power DESC, age DESC;