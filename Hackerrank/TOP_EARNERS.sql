SELECT TEMP.MAX_VAL, COUNT(*)
FROM EMPLOYEE E, (SELECT MAX(SALARY*MONTHS) AS MAX_VAL FROM EMPLOYEE) AS TEMP
WHERE E.SALARY * E.MONTHS = TEMP.MAX_VAL
GROUP BY 1

# SIMPLE SOLUTION
select (salary * months)as earnings ,count(*) from employee group by 1 order by earnings desc limit 1;