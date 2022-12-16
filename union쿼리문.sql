select
	name,
    email,
    0 as score
from
	user_dtl
where
	name = '이종석'    
union
select
	name,
    null as email,
    score
from
	score_mst
where
	score > 80;
