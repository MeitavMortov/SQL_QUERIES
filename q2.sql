SELECT number, avg(startYear - birthYear) AS avgAge
FROM members natural join memberInKnesset natural join knessets
GROUP BY number
order by number

