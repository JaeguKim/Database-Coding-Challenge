#Colleges 테이블과 Challenges 테이블을 조인
# For Each Contest
# join Challenges and Colleges to get Colleges,Challenge pair -> Challenge_Colleges Table
# JOIN WITH CONTESTS TABLE WITH CONTEST_ID COLUMN
# sums of total submissions, total accepted submissions : join submission_stats and Challenge_Contest and get sum of total submissions per each contest
# join Challenge_Contest and view_stats to get total_views,total_unique_views
# Sort by contest_id, exclude all four sums are 0

SELECT CONTEST_ID, SUM(SUM1), SUM(SUM2), SUM(SUM3), SUM(SUM4)
FROM COLLEGES COLL 
JOIN CHALLENGES CHAL ON COLL.COLLEGE_ID
JOIN (SELECT CHALLENGE_ID, SUM(TOTAL_VIEWS) AS SUM1, SUM(TOTAL_UNIQUE_VIEWS) AS SUM2 FROM VIEW_STATS GROUP BY CHALLENGE_ID AS) VS ON CHAL.CHALLENGE_ID
JOIN (SELECT CHALLENGE_ID, SUM(TOTAL_SUBMISSIONS) AS SUM3, SUM(TOTAL_ACCEPTED_SUBMISSIONS) AS SUM4 FROM SUBMISSION_STATS GROUP BY CHALLENGE_ID) AS SS ON CHAL.CHALLENGE_ID
JOIN CONTESTS C ON C.CONTEST_ID
GROUP BY C.CONTEST_ID
HAVING SUM1 != 0 OR SUM2 != 0 OR SUM3 != 0 OR SUM4 != 0
ORDER BY C.CONTEST_ID

