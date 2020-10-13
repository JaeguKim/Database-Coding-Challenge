#Colleges 테이블과 Challenges 테이블을 조인
#항상 ON 뒤에 field말고 등식을 넣는것을 잊지말자!
# For Each Contest
# join Challenges and Colleges to get Colleges,Challenge pair -> Challenge_Colleges Table
# JOIN WITH CONTESTS TABLE WITH CONTEST_ID COLUMN
# sums of total submissions, total accepted submissions : join submission_stats and Challenge_Contest and get sum of total submissions per each contest
# join Challenge_Contest and view_stats to get total_views,total_unique_views
# Sort by contest_id, exclude all four sums are 0

SELECT C.CONTEST_ID, C.HACKER_ID, C.NAME, SUM(SUM1), SUM(SUM2), SUM(SUM3), SUM(SUM4)
FROM CONTESTS AS C
JOIN COLLEGES COLL ON COLL.CONTEST_ID = C.CONTEST_ID
JOIN CHALLENGES CHAL ON COLL.COLLEGE_ID = CHAL.COLLEGE_ID
LEFT JOIN (SELECT CHALLENGE_ID, SUM(TOTAL_SUBMISSIONS) AS SUM1, SUM(TOTAL_ACCEPTED_SUBMISSIONS) AS SUM2 FROM SUBMISSION_STATS GROUP BY CHALLENGE_ID) AS SS ON SS.CHALLENGE_ID = CHAL.CHALLENGE_ID
LEFT JOIN (SELECT CHALLENGE_ID, SUM(TOTAL_VIEWS) AS SUM3, SUM(TOTAL_UNIQUE_VIEWS) AS SUM4 FROM VIEW_STATS GROUP BY CHALLENGE_ID) AS VS ON VS.CHALLENGE_ID = CHAL.CHALLENGE_ID
GROUP BY C.CONTEST_ID,C.HACKER_ID,C.NAME
HAVING SUM(SUM1)+SUM(SUM2)+SUM(SUM3)+SUM(SUM4)> 0
ORDER BY C.CONTEST_ID

