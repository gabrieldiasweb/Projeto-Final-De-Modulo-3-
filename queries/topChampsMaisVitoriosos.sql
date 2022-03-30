    select
    blueTopChamp as topChamp, sum(bResult) as bVitorias, 
    sum(rResult) as rVitorias,
    (sum(bResult) + sum(rResult)) as total_vitorias
from
    (select 
        blueTeamTag, blueTopChamp, bResult 
    from 
        matchinfo
    where
        league = 'WC' and
        year = 2016) as blue
inner join
    (select 
        redTeamTag, redTopChamp, rResult 
    from 
        matchinfo
    where
        league = 'WC' and
        year = 2016) as red
on
    blue.blueTopChamp = red.redTopChamp
group by
    blueTopChamp
order by
    total_vitorias desc;