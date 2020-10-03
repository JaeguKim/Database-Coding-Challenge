# <>는 != 과 같다.
# 문제를 해석할때 잘못해석한 부분이 있었다.
SELECT c.hacker_id, h.name, COUNT(c.challenge_id) AS cnt 
FROM Hackers AS h JOIN Challenges AS c ON h.hacker_id = c.hacker_id
GROUP BY c.hacker_id, h.name HAVING
cnt = (SELECT COUNT(c1.challenge_id) FROM Challenges AS c1 GROUP BY c1.hacker_id ORDER BY COUNT(*) DESC LIMIT 1) OR #최대값이거나
cnt NOT IN (SELECT COUNT(c2.challenge_id) FROM Challenges AS c2 GROUP BY c2.hacker_id HAVING c2.hacker_id <> c.hacker_id) #다른 값중에서 같은 값이 없거나
ORDER BY cnt DESC, c.hacker_id;