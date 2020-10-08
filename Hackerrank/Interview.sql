#Colleges 테이블과 Challenges 테이블을 조인
# For Each Contest
# join Challenges and Colleges to get Colleges,Challenge pair -> Challenge_Colleges Table
# JOIN WITH CONTESTS TABLE WITH CONTEST_ID COLUMN
# sums of total submissions, total accepted submissions : join submission_stats and Challenge_Contest and get sum of total submissions per each contest
# join Challenge_Contest and view_stats to get total_views,total_unique_views
# Sort by contest_id, exclude all four sums are 0

SELECT C.CONTEST_ID,C.HACKER_ID,C.NAME,SUM1,SUM2,SUM3,SUM4
FROM 
    (SELECT T1.CONTEST_ID,SUM1,SUM2,SUM3,SUM4
    FROM
        (SELECT CONTEST_ID,SUM(SS.TOTAL_SUBMISSIONS) AS SUM1,SUM(SS.TOTAL_ACCEPTED_SUBMISSIONS) AS SUM2
        FROM COLLEGES COLL 
        JOIN CHALLENGES CHAL ON COLL.COLLEGE_ID
        JOIN SUBMISSION_STATS SS ON CHAL.CHALLENGE_ID
        GROUP BY CONTEST_ID) T1
    JOIN
        (SELECT CONTEST_ID,SUM(VS.TOTAL_VIEWS) AS SUM3,SUM(VS.TOTAL_UNIQUE_VIEWS) AS SUM4
        FROM COLLEGES COLL 
        JOIN CHALLENGES CHAL ON COLL.COLLEGE_ID
        JOIN VIEW_STATS VS ON CHAL.CHALLENGE_ID
        GROUP BY CONTEST_ID) T2
    ON CONTEST_ID
    WHERE SUM1 != 0 OR SUM2 != 0 OR SUM3 != 0 OR SUM4 != 0
    ) AS T3 
JOIN CONTESTS C ON CONTEST_ID
ORDER BY C.CONTEST_ID

