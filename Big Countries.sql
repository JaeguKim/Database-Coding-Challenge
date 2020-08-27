#FROM 뒤에 테이블이 하나일경우, TABLE.을 생략할수 있다.
#SOL1
SELECT World.name, World.population, World.area 
FROM World
WHERE World.area >= 3000000 OR World.population > 25000000

# SOL2
SELECT name, population, area FROM World WHERE area > 3000000 OR population > 25000000;