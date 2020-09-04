-- 코드를 입력하세요
select animal_id, name 
from animal_outs
where
animal_id not in 
(select animal_outs.animal_id
from animal_ins inner join animal_outs
on animal_ins.animal_id = animal_outs.animal_id)
order by animal_id

# SOL2 - 더 심플한 풀이
select b.animal_id, b.name
from animal_ins a right join animal_outs b on a.animal_id = b.animal_id
where a.animal_id is null
order by b.animal_id