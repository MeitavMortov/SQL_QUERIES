with T(number, party, memberCount) as(SELECT number, party, count(uid)
FROM memberInKnesset
GROUP BY number, party)

SELECT number, party , memberCount
FROM T
where memberCount = (select max(T2.memberCount)
                       from T T2
                       where T2.number = T.number)

order by number, party
