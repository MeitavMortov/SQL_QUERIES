SELECT name
FROM memberInKnesset natural join members
GROUP BY uid , name
HAVING COUNT(DISTINCT number) >= 5 and COUNT(DISTINCT party) = 1
order by name