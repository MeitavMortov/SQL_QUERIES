SELECT number, COUNT(DISTINCT party) AS partyCount
FROM memberInKnesset
GROUP BY number
order by number