#Solution1
SELECT H.HACKER_ID, H.NAME
FROM HACKERS H, DIFFICULTY D, CHALLENGES C, SUBMISSIONS S
WHERE H.HACKER_ID = S.HACKER_ID AND D.DIFFICULTY_LEVEL = C.DIFFICULTY_LEVEL AND C.CHALLENGE_ID = S.CHALLENGE_ID AND S.SCORE = D.SCORE
GROUP BY H.HACKER_ID,H.NAME
HAVING COUNT(H.HACKER_ID) > 1
ORDER BY COUNT(H.HACKER_ID) DESC, H.HACKER_ID

#Solution2
SELECT h.hacker_id, h.name
    FROM submissions s
    JOIN challenges c
        ON s.challenge_id = c.challenge_id
    JOIN difficulty d
        ON c.difficulty_level = d.difficulty_level 
    JOIN hackers h
        ON s.hacker_id = h.hacker_id
    WHERE s.score = d.score 
        AND c.difficulty_level = d.difficulty_level
    GROUP BY h.hacker_id, h.name
        HAVING COUNT(s.hacker_id) > 1
    ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC
