-- 코드를 입력하세요
select b.animal_id, b.name
from animal_ins a inner join animal_outs b on a.animal_id = b.animal_id
where a.datetime > b.datetime
order by a.datetime