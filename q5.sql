with T(number, party,uid, gender) as(SELECT number, party, uid, gender
FROM memberInKnesset natural join members)


select party, number, (100*Fc/allSum) AS femalePercent
from (select number, party, count(uid) as Fc from T where gender = 'female' group by number, party) T1
    natural left outer join
    (SELECT number, party, count(uid) as allSum FROM memberInKnesset GROUP BY number, party) T2
where (100*Fc/allSum) >= 30
order by party, number