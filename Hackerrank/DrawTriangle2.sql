--Solution1
SET @number = 0;
SELECT REPEAT('* ', @number := @number + 1) FROM information_schema.tables LIMIT 20;

--Solution2
SET @number = 0;
SELECT REPEAT('* ', @number := @number + 1) FROM information_schema.tables WHERE @number < 20;
