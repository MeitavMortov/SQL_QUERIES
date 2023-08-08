with recursive dists(uid, dist) AS (
    select uid, 0 from members where name = 'Menachem Begin'
    UNION
    SELECT mk2.uid, dist+1
    FROM memberInKnesset mk2, dists d natural join memberInKnesset mk1
    WHERE mk2.number = mk1.number and mk2.party = mk1.party and dist + 1 < 4)

select name from members where uid not in
(SELECT uid FROM dists) order by name;
